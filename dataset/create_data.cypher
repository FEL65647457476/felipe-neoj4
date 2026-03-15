1- CRIAR TODOS OS NÓS

CREATE
(:Usuario {nome:"Felipe"}),
(:Usuario {nome:"Ana"}),
(:Usuario {nome:"Carlos"}),

(:Artista {nome:"The Weeknd"}),
(:Artista {nome:"Drake"}),
(:Artista {nome:"Dua Lipa"}),

(:Genero {nome:"Pop"}),
(:Genero {nome:"Hip Hop"}),

(:Musica {titulo:"Blinding Lights"}),
(:Musica {titulo:"Starboy"}),
(:Musica {titulo:"Hotline Bling"}),
(:Musica {titulo:"Levitating"});

Criar relação Música → Artista

MATCH (m:Musica {titulo:"Blinding Lights"}),(a:Artista {nome:"The Weeknd"})
CREATE (m)-[:DO_ARTISTA]->(a);

MATCH (m:Musica {titulo:"Starboy"}),(a:Artista {nome:"The Weeknd"})
CREATE (m)-[:DO_ARTISTA]->(a);

MATCH (m:Musica {titulo:"Hotline Bling"}),(a:Artista {nome:"Drake"})
CREATE (m)-[:DO_ARTISTA]->(a);

MATCH (m:Musica {titulo:"Levitating"}),(a:Artista {nome:"Dua Lipa"})
CREATE (m)-[:DO_ARTISTA]->(a);

Criar relação Música → Gênero

MATCH (m:Musica {titulo:"Blinding Lights"}),(g:Genero {nome:"Pop"})
CREATE (m)-[:DO_GENERO]->(g);

MATCH (m:Musica {titulo:"Levitating"}),(g:Genero {nome:"Pop"})
CREATE (m)-[:DO_GENERO]->(g);

MATCH (m:Musica {titulo:"Hotline Bling"}),(g:Genero {nome:"Hip Hop"})
CREATE (m)-[:DO_GENERO]->(g);

