 # WIKI

 Questo repository contiene tutto il progetto e i sotto moduli collegati al progetto Wiki.
 Wiki è un progetto personale per la creazione di una casa "domotica" e "intelligente".

 Nel progetto attualmente sono contenuti i seguenti sotto moduli:
 - wikiandroid
 - wikiapi
 - wikiarduino
 - wikibot
 - wikicontroller
 - wikidata
 - wikidatabase
 - wikidocumentation
 - wikimediaserver
 - wikimongodb
 - wikiproxy
 - wikiredis
 - wikirediscommander
 - wikiserver


 ## link utili

https://about.gitlab.com/2018/08/02/using-the-gitlab-ci-slash-cd-for-smart-home-configuration-management

 ## docker swarm setup

 Prima di tutto bisogna creare lo swarm in docker. Il nodo principale deve avere il nome: node1. Dal nodo principale usare il comando docker stack deploy con il file portainer-agent-stack.yml in modo tale da creare un instanza portainer. Una volta attivo andare all'indirizzo ip:9000. Creare un nuovo stack con il file wiki-stack-cluster.yml. In questo file non è presente wikidatabase e wikiserver.