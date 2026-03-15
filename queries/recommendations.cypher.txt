Recomendação baseada em artistas que o usuário segue;

MATCH (u:Usuario {nome:"Felipe"})-[:SEGUE]->(a:Artista)
MATCH (m:Musica)-[:DO_ARTISTA]->(a)
RETURN m.titulo AS Recomendação

Recomendação baseada em gênero musical

MATCH (u:Usuario {nome:"Felipe"})-[:OUVIU]->(m:Musica)
MATCH (m)-[:DO_GENERO]->(g:Genero)
MATCH (rec:Musica)-[:DO_GENERO]->(g)
RETURN DISTINCT rec.titulo AS Recomendação

Recomendação baseada em outros usuários (colaborativa)

MATCH (u:Usuario {nome:"Felipe"})-[:OUVIU]->(m:Musica)
MATCH (other:Usuario)-[:OUVIU]->(m)
MATCH (other)-[:OUVIU]->(rec:Musica)
WHERE NOT (u)-[:OUVIU]->(rec)
RETURN rec.titulo AS Recomendação

Consulta de músicas populares

MATCH (:Usuario)-[:OUVIU]->(m:Musica)
RETURN m.titulo, COUNT(*) AS Popularidade
ORDER BY Popularidade DESC