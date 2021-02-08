SELECT * , ST_ASGEOJSON(dsmw.geog) as json FROM dsmw WHERE ST_Intersects(dsmw.geog, ST_MAKEPOINT(129.500000, 72.734920))

SELECT * , ST_ASGEOJSON(gdeqk.geog) as json FROM gdeqk WHERE ST_Intersects(gdeqk.geog, ST_MAKEPOINT(129.500000, 72.734920))

SELECT json_build_object('magnitude', dn, 'polygons', ST_AsText(gdeqk.geog)) as json FROM gdeqk;

SELECT json_build_object('polygons', ST_ASGEOJSON(gdeqk.geog), 'magnitude', gdeqk.dn) AS json
FROM   gdeqk
WHERE ST_Intersects(gdeqk.geog, ST_MAKEPOINT(129.500000, 72.734920));

SELECT ST_AsText(dsmw.geog), dsmw.faosoil, dsmw.domsoi, dsmw.country,  * , ST_AsText(dsmw.geog) as json 
FROM dsmw;

SELECT json_build_object('polygons', ST_ASGEOJSON(dsmw.geog)::json, 
						 'polygonInfo', json_build_object(
							 				'soilType', dsmw.faosoil, 
						 					'color', dsmw.domsoi)) AS json
FROM   dsmw
WHERE ST_Intersects(dsmw.geog, ST_MAKEPOINT(129.500000, 72.734920));

SELECT dn, COUNT(*) as json FROM gdeqk
GROUP BY dn


SELECT * , ST_ASGEOJSON(dsmw.geog) as json FROM dsmw WHERE ST_Intersects(dsmw.geog, ST_MAKEPOINT(43.252765, 27.935068))
SELECT json_build_object('polygons', ST_ASGEOJSON(gdeqk.geog)::json, 'magnitude', gdeqk.dn::text ) AS json 
FROM gdeqk 
WHERE ST_Intersects(gdeqk.geog, ST_MAKEPOINT(-111.916666666667,38.609928));