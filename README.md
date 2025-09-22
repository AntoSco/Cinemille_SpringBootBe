# Cinemille - Backend (Spring Boot)

Il modulo **backend** del progetto *Cinemille* fornisce un insieme di **API REST** sviluppate con **Spring Boot**.  
Queste API consentono la gestione e la visualizzazione dei film in programmazione e dello **storico delle proiezioni**.

L’obiettivo è quello di fornire servizi REST al client.

---

## 📑 Documentazione

I documenti di progetto sono disponibili nella cartella [`docs`](./src/main/resources/docs):

* `ANALISI.md` – requisiti funzionali/tecnici.
* `ARCHITETTURA.md` – descrizione architetturale e diagrammi.

---

## ✅ Requisiti Funzionali

1. **Elenco film**
    - Visualizzare la lista dei film in programmazione.
    - Consentire filtri per **data di inizio** e **data di fine**.

2. **Storico**
    - Accedere allo storico completo delle programmazioni passate.

---

## ⚙️ Requisiti Tecnici

- Spring Boot come framework di backend.
- Diagrammi UML e documentazione architetturale.

---

## 🚀 Avvio del progetto

### 1. Clonare il repository

```bash
git clone https://github.com/AntoSco/Cinemille_SpringBootBe.git
cd Cinemille_SpringBootBe
````

---

### 2. Avvio in locale con Maven Wrapper

```bash
mvn spring-boot:run
```

👉 Il backend sarà disponibile su: `http://localhost:3000` (opzione configurabile in `application.properties`).

---

### 3. Build del progetto (JAR)

Per creare il JAR eseguibile (pacchetto):

```bash
mvn clean package -DskipTests
```

Il JAR generato si troverà in:

```
target/*.jar
# es. target/cinemille-backend-0.0.1-SNAPSHOT.jar
```

Eseguirlo manualmente:

```bash
java -jar target/cinemille-backend-0.0.1-SNAPSHOT.jar
```

> Nota: rimuovi `-DskipTests` se vuoi eseguire anche i test durante la build.

---

### 4. Build e run dell'immagine Docker

Dalla cartella del progetto:

```bash
# Build dell'immagine
docker build -t cinemille-backend .

# Run del container (mappa la porta 3000 dell'host sulla porta 3000 del container)
docker run --rm -p 3000:3000 --name cinemille-backend cinemille-backend
```

Controlla i log:

```bash
docker logs -f cinemille-backend
```

Fermare ed eliminare il container:

```bash
docker stop cinemille-backend
```

---

### 5. Esecuzione Docker Compose

Per orchestrare più servizi (ad esempio backend + database + frontend) è possibile utilizzare `docker-compose.yml`.  
Nel progetto è già presente un file `docker-compose.yml` che crea due container: uno per l’applicazione backend e uno per il frontend in Angular.

⚠️ Nota: prima di eseguire `docker-compose up` è necessario effettuare la build dell'immagine docker del frontend (Angular).

Di seguito i comandi per la creazione dei container:

```bash
# Avvia i servizi definiti (ricostruisce le immagini se necessario)
docker-compose up --build

# Esegui in background (detached)
docker-compose up -d --build

# Ferma e rimuove i container
docker-compose down
```

---

## 🌐 API REST disponibili

### 📌 Lista film in programmazione per data

**GET** `/api/v1/moviesSchedule`

Richiede un parametro query obbligatorio:

- `date=YYYY-MM-DD` → data per cui recuperare i film in programmazione

**Esempio richiesta**
```

GET http://localhost:3000/api/v1/moviesSchedule?date=2025-09-21

````

**Esempio risposta**
```json
[
  {
    "title": "Incendies",
    "director": "Denis Villeneuve",
    "duration": "2h 11m",
    "releaseYear": "2010",
    "theatre": "1",
    "poster": "https://..."
  }
]
````

---

### 📌 Storico programmazione film

**GET** `/api/v1/moviesScheduleHistory`

Restituisce l’elenco completo degli spettacoli passati (storico).

**Esempio richiesta**

```
GET http://localhost:3000/api/v1/moviesScheduleHistory
```

**Esempio risposta**

```json
[
  {
    "title": "Incendies",
    "theatre": "SALA 1",
    "from": "2025-09-21",
    "to": "2025-09-28"
  },
  {
    "title": "The Deer Hunter",
    "theatre": "SALA 2",
    "from": "2025-09-15",
    "to": "2025-09-29"
  }
]
```

---

🔎 **Nota:**

* Tutti gli endpoint sono esposti con prefisso `/api/v1`.
* `/moviesSchedule` richiede **obbligatoriamente** il parametro `date`.
* `/moviesScheduleHistory` restituisce l’intero archivio senza filtri.

---

## 📂 Struttura del progetto

```
Cinemille_SpringBootBe/
│── src/
│   ├── main/java/com/cinemille/
│   │   ├── controller/   # Controller REST
│   │   ├── service/      # Logica di business
│   │   ├── dto/          # Data Transfer Object (per passare i dati come desiderato dal frontend)
│   │   ├── mapper/       # Object Mapper
│   │   ├── repository/   # Accesso ai dati (mock/in-memory)
│   │   ├── entity/       # Entità (Movie, Schedule)
│   │   ├── exception/    # ExceptionHandler
│   │   └── CinemilleApplication.java
│   └── main/resources/   # Configurazioni, Bootstrap Data (application.properties, data.sql)
│
│── docs/                 # Documentazione (analisi, UML, architettura)
│── Dockerfile            
│── docker-compose.yml    
│── pom.xml               # Configurazione Maven
└── README.md             
```

---

## 🏗 Architettura Logica

* **Controller**: espongono le API REST.
* **Service**: logica di business e regole di elaborazione.
* **Repository**: layer di accesso ai dati (JPA).
* **Entity/DTO**: definizione degli oggetti recuperati e trasmessi (Movie, Schedule, MovieDto, ScheduleDto).

---

## 🛠 Tecnologie utilizzate

* Java 21
* Spring Boot 3.x
* Maven
* Lombok (opzionale)
* MapStruct (opzionale)
* H2 in memory Database
* Docker / Docker Compose
