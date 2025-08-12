# Local Chatbot

A simple, deployable chatbot application that supports text, image, and PDF inputs, with retrieval-augmented generation (RAG) and multimodal LLM support. It features a React frontend and a FastAPI backend, using Ollama for LLM and embedding services.

---

## Features

- User authentication with profile pictures
- Chat management (create, rename, delete, list)
- Message history per chat
- File uploads: images (for multimodal LLM) and PDFs (for RAG)
- Retrieval-augmented generation using FAISS vector store
- Model selection (text and multimodal models)
- Themed frontend (light/dark)
- Persistent chat and file storage

---

## Prerequisites

- **Python 3.9+** (for backend)
- **Node.js 16+** and **npm** (for frontend)
- **Ollama** running locally (for LLM and embeddings)

---

## Quick Start

### 1. Navigate to repository folder

### 2. Install Backend Dependencies

```sh
cd chatbot-backend
python -m venv venv
venv\Scripts\activate   # On Windows
# source venv/bin/activate  # On Linux/Mac
pip install -r requirements.txt
```

### 3. Install Frontend Dependencies

```sh
cd ../chatbot-frontend
npm install
```

### 4. Start Ollama

Make sure [Ollama](https://ollama.com/) is installed and running locally.  
You should have the required models pulled (e.g., `llama3.2`, `llava`, `nomic-embed-text`).

```sh
ollama serve
ollama pull llama3.2
ollama pull llava
ollama pull nomic-embed-text
```

### 5. Start All Services

From the root directory, run:

```sh
./start_all
```

- On **Windows**, use `start_all.bat` if provided.
- On **Linux/Mac**, use `start_all.sh` if provided and make it executable (`chmod +x start_all.sh`).

This script will:
- Start the backend (FastAPI with Uvicorn)
- Start the frontend (React development server)

---

## Usage

1. Open your browser and go to [http://localhost:3000](http://localhost:3000).
2. Log in with your credentials.
3. Create or select a chat.
4. Send messages, upload images or PDFs, and interact with the chatbot.

---

## File Structure

```
CBot/
├── chatbot-backend/
│   ├── app/
│   ├── requirements.txt
│   └── ...
├── chatbot-frontend/
│   ├── src/
│   └── ...
├── uploads/
├── vector_store/
├── start_all
├── README.md
└── ...
```

- **uploads/**: Stores user-uploaded files (images, PDFs)
- **vector_store/**: Stores FAISS vector index (auto-generated, not tracked by git)

---

## Note

- Ollama must be running locally for LLM and embedding features to work.

---

## Troubleshooting

- **Ollama not running:**  
  Ensure `ollama serve` is active and required models are pulled.
- **Port conflicts:**  
  Default ports are 8000 (backend) and 3000 (frontend). Change as needed.
- **File upload issues:**  
  Ensure the `uploads/` directory exists and is writable.

---

## References

- [Ollama](https://ollama.com/)
- [LangChain](https://python.langchain.com/)
- [FAISS](https://github.com/facebookresearch/faiss)
