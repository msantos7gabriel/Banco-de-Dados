# Visão Geral do Sistema

O sistema tem como objetivo gerenciar um grupo do **Baba Das Estrelas**.  Ele controla a organização de partidas, o desempenho individual dos atletas, a comunicação interna e a aplicação de medidas disciplinares.

## Principais Usuários

- Administradores: Jogadores que possuem privilégios de gestão dentro do sistema, sendo responsáveis por administrar e gerenciar os demais membros.

- Membros (Jogadores): Os usuários padrão do sistema que participam dos jogos, enviam mensagens, acumulam estatísticas e estão sujeitos às regras disciplinares do grupo.

## Informações Armazenadas

- Jogadores: Armazena os dados de contato e status, incluindo ID, nome, número de telefone, se o jogador está ativo (is_active) e se está banido (is_banned).

- Estatísticas: Guarda o desempenho esportivo, incluindo a referência ao jogador, número de gols, assistências, total de jogos e uma avaliação chamada "quantidade de estrelas".

- Partidas: Registra os eventos esportivos, armazenando ID, descrição do evento, local e hora.

- Mensagens: Mantém o histórico de comunicação do grupo, registrando o ID, o conteúdo da mensagem e a hora do envio.

- Banimentos: Registra o histórico disciplinar, contendo o status de banimento, a razão da punição, a data/hora de início e a data/hora de fim.

## Regras de Negócio e Operações

- Hierarquia de Administração: Existe um auto relacionamento  onde jogadores atuando como administradores gerenciam múltiplos membros, e membros podem ser gerenciados por múltiplos administradores.

- Controle de Desempenho: Há uma relação estrita de um para um (1,1) entre um jogador e suas estatísticas, indicando que cada jogador possui um único registro de desempenho consolidado.

- Participação em Eventos: O sistema permite uma relação de muitos para muitos entre jogadores e partidas, significando que um jogador atua em diversas partidas e uma partida envolve diversos jogadores.

- Comunicação: Um jogador pode enviar múltiplas mensagens, mas cada mensagem registrada no sistema é associada a um único e exclusivo remetente (1,n).

- Sistema Disciplinar: Um jogador pode receber nenhum ou vários banimentos (0,n) ao longo do tempo, mantendo um histórico detalhado de suas suspensões temporárias ou definitivas.