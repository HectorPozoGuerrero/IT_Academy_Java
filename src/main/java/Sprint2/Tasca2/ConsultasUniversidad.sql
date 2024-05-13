/*Retorna un llistat amb el primer cognom, segon cognom i el nom de tots els/les alumnes. El llistat haurà d'estar ordenat alfabèticament de menor a major pel primer cognom, segon cognom i nom.*/

SELECT apellido1, apellido2, nombre FROM persona 
	WHERE tipo LIKE "alumno"
    ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;
    
/*Esbrina el nom i els dos cognoms dels alumnes que no han donat d'alta el seu número de telèfon en la base de dades.*/

SELECT apellido1, apellido2, nombre FROM persona
	WHERE telefono IS NULL
    AND tipo LIKE "alumno";
    
/*Retorna el llistat dels alumnes que van néixer en 1999.*/

SELECT * FROM persona
	WHERE YEAR(fecha_nacimiento) = 1999
    AND tipo LIKE "alumno";
    
/*Retorna el llistat de professors/es que no han donat d'alta el seu número de telèfon en la base de dades 
i a més el seu NIF acaba en K.*/

SELECT * FROM persona
	WHERE telefono IS NULL
    AND tipo LIKE "profesor"
    AND nif LIKE "%K";
    
/*Retorna el llistat de les assignatures que s'imparteixen en el primer quadrimestre, en el tercer curs del 
grau que té l'identificador 7.*/

SELECT * FROM asignatura
	WHERE cuatrimestre = 1
    AND curso = 3
    AND id_grado = 7;

/*Retorna un llistat dels professors/es juntament amb el nom del departament al qual estan vinculats. El 
llistat ha de retornar quatre columnes, primer cognom, segon cognom, nom i nom del departament. El resultat estarà ordenat alfabèticament de menor a major pels cognoms i el nom.*/

SELECT pe.apellido1, pe.apellido2, pe.nombre, de.nombre FROM persona pe
	JOIN profesor pro
    ON pro.id_profesor = pe.id
    JOIN departamento de
    ON de.id = pro.id_departamento
    ORDER BY pe.apellido1 ASC, pe.apellido2 ASC, pe.nombre ASC;

/*Retorna un llistat amb el nom de les assignatures, any d'inici i any de fi del curs escolar de l'alumne/a 
amb NIF 26902806M.*/

SELECT asi.nombre, cu.anyo_inicio, cu.anyo_fin, pe.nombre, pe.apellido1, pe.nif  FROM persona pe
	JOIN alumno_se_matricula_asignatura aa
    ON aa.id_alumno = pe.id
    JOIN asignatura asi
    ON asi.id = aa.id_asignatura
    JOIN curso_escolar cu
    ON cu.id = aa.id_curso_escolar
    WHERE nif LIKE '26902806M';

/*Retorna un llistat amb el nom de tots els departaments que tenen professors/es 
que imparteixen alguna assignatura en el Grau en Enginyeria Informàtica (Pla 2015).*/

SELECT DISTINCT(pr.id_profesor) id_profesor, de.nombre nombre_departamento, gr.nombre nombre_grado FROM grado gr
	JOIN asignatura aa
    ON aa.id_grado = gr.id
    JOIN profesor pr
    ON pr.id_profesor = aa.id_profesor
    JOIN departamento de
    ON de.id = pr.id_departamento;

/*Retorna un llistat amb tots els alumnes que s'han matriculat en alguna assignatura durant el curs escolar 2018/2019.*/

SELECT DISTINCT(per.nombre),per.apellido1, per.apellido2, per.nif, cur.id id_curso_escolar, cur.anyo_inicio anyo_inicio FROM persona per
	JOIN alumno_se_matricula_asignatura asm
    ON asm.id_alumno = per.id
    JOIN curso_escolar cur
    ON cur.id = asm.id_curso_escolar
    WHERE cur.anyo_inicio BETWEEN 2018 AND 2019;

/*USAR LEFT JOIN I RIGHT JOIN*/    

/*Retorna un llistat amb els noms de tots els professors/es i els departaments que tenen vinculats. 
El llistat també ha de mostrar aquells professors/es que no tenen cap departament associat. El llistat ha de 
retornar quatre columnes, nom del departament, primer cognom, segon cognom i nom del professor/a. El resultat estarà 
ordenat alfabèticament de menor a major pel nom del departament, cognoms i el nom.*/

SELECT de.nombre, per.apellido1, per.apellido2, per.nombre FROM departamento de
    RIGHT JOIN profesor pro 
    ON de.id = pro.id_departamento
	JOIN persona per
	ON pro.id_profesor = per.id
    ORDER BY per.nombre ASC, per.apellido1 ASC, per.apellido2 ASC;

/*Retorna un llistat amb els professors/es que no estan associats a un departament.*/

SELECT * FROM departamento dep
	RIGHT JOIN profesor pro 
    ON pro.id_departamento = dep.id;

/*Retorna un llistat amb els departaments que no tenen professors/es associats.*/

SELECT * FROM departamento dep
	LEFT JOIN profesor pro 
    ON pro.id_departamento = dep.id;

/*Retorna un llistat amb els professors/es que no imparteixen cap assignatura.*/

SELECT DISTINCT(asi.id_profesor), pe.nombre, pe.apellido1, pe.apellido2, pe.tipo  FROM profesor pr
	RIGHT JOIN asignatura asi 
    ON asi.id_profesor = pr.id_profesor
    JOIN persona pe
    ON pe.id = pr.id_profesor;
    
/*Retorna un llistat amb les assignatures que no tenen un professor/a assignat.*/

SELECT * FROM asignatura asi
	LEFT JOIN profesor pr 
    ON pr.id_profesor = asi.id_profesor
    WHERE asi.id_profesor IS NULL;

/*Retorna un llistat amb tots els departaments que no han impartit assignatures en cap curs escolar.*/

SELECT DISTINCT(de.nombre) FROM departamento de 
	LEFT JOIN profesor pr
    ON pr.id_departamento = de.id
    LEFT JOIN asignatura asi
    ON asi.id_profesor = pr.id_profesor
    WHERE asi.id IS NULL
    AND pr.id_profesor IS NOT NULL;

    

/*CONSULTAS RESUM*/
/*Retorna el nombre total d'alumnes que hi ha.*/

SELECT count(nombre) FROM persona
	WHERE tipo LIKE "alumno";

/*Calcula quants alumnes van néixer en 1999.*/

SELECT count(nombre) FROM persona
	WHERE tipo LIKE "alumno"
    and YEAR(fecha_nacimiento) = 1999;

/*Calcula quants professors/es hi ha en cada departament. El resultat només ha de mostrar dues columnes, una amb el nom del departament i una altra amb el nombre de professors/es que hi ha en aquest departament. El resultat només ha d'incloure els departaments que tenen professors/es associats i haurà d'estar ordenat de major a menor pel nombre de professors/es.*/

SELECT dep.nombre , COUNT(pro.id_profesor) FROM departamento dep 
	JOIN profesor pro 
    ON dep.id = pro.id_departamento 
    GROUP BY dep.id 
    ORDER BY COUNT(pro.id_profesor) DESC;

/*Retorna un llistat amb tots els departaments i el nombre de professors/es que hi ha en cadascun d'ells. Tingui en compte que poden existir departaments que no tenen professors/es associats. Aquests departaments també han d'aparèixer en el llistat.*/

SELECT dep.nombre , COUNT(pro.id_profesor) FROM departamento dep 
	LEFT JOIN profesor pro
    ON dep.id = pro.id_departamento 
    GROUP BY dep.id 
    ORDER BY dep.nombre;
    
/*Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun. Tingues en compte que poden existir graus que no tenen assignatures associades. Aquests graus també han d'aparèixer en el llistat. El resultat haurà d'estar ordenat de major a menor pel nombre d'assignatures.*/

SELECT g.nombre, COUNT(a.id_grado) FROM grado g 
	LEFT JOIN asignatura a 
    ON g.id = a.id_grado 
    GROUP BY g.id 
    ORDER BY COUNT(a.id_grado) DESC;
    
/*Retorna un llistat amb el nom de tots els graus existents en la base de dades i el nombre d'assignatures que té cadascun, dels graus que tinguin més de 40 assignatures associades.*/

SELECT g.nombre, COUNT(a.id_grado) FROM grado g 
	LEFT JOIN asignatura a 
    ON g.id = a.id_grado 
    GROUP BY g.id HAVING COUNT(a.id_grado) > 40 ;

/*Retorna un llistat que mostri el nom dels graus i la suma del nombre total de crèdits que hi ha per a cada tipus d'assignatura. El resultat ha de tenir tres columnes: nom del grau, tipus d'assignatura i la suma dels crèdits de totes les assignatures que hi ha d'aquest tipus.*/

SELECT g.nombre , a.tipo , SUM(a.creditos) FROM grado g 
	JOIN asignatura a 
    ON g.id = a.id_grado 
    GROUP BY g.nombre, a.tipo;

/*Retorna un llistat que mostri quants alumnes s'han matriculat d'alguna assignatura en cadascun dels cursos escolars. El resultat haurà de mostrar dues columnes, una columna amb l'any d'inici del curs escolar i una altra amb el nombre d'alumnes matriculats.*/

SELECT cu.anyo_inicio , COUNT(al.id_alumno) FROM curso_escolar cu 
	LEFT JOIN alumno_se_matricula_asignatura al 
    ON cu.id = al.id_curso_escolar 
    GROUP BY cu.anyo_inicio;

/*Retorna un llistat amb el nombre d'assignatures que imparteix cada professor/a. El llistat ha de tenir en compte aquells professors/es que no imparteixen cap assignatura. El resultat mostrarà cinc columnes: id, nom, primer cognom, segon cognom i nombre d'assignatures. El resultat estarà ordenat de major a menor pel nombre d'assignatures.*/

SELECT per.id, per.nombre, per.apellido1, per.apellido2, COUNT(asi.id_profesor) FROM persona per 
	LEFT JOIN profesor pro 
	ON per.id = pro.id_profesor 
	LEFT JOIN asignatura asi 
	ON pro.id_profesor = asi.id_profesor 
	WHERE per.tipo = 'profesor' 
	GROUP BY per.id ORDER BY COUNT(asi.id_profesor) DESC;

/*Retorna totes les dades de l'alumne/a més jove.*/

SELECT * FROM persona
	WHERE tipo LIKE "alumno"
    ORDER BY fecha_nacimiento desc
    LIMIT 1;

/*Retorna un llistat amb els professors/es que tenen un departament associat i que no imparteixen cap assignatura.*/ 
SELECT g.nombre , a.tipo  , SUM(a.creditos) FROM grado g 
	JOIN asignatura a 
	ON g.id = a.id_grado 
	GROUP BY g.nombre, a.tipo;
