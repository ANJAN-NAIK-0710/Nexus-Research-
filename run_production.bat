@echo off
title Nexus Research - Production Server
cd /d "%~dp0"
echo ============================================================
echo   Nexus Research AI RAG - Unified Production Server
echo ============================================================
echo.
echo Starting server on http://localhost:8000 ...
echo (Serving both Frontend and Backend API from single server)
echo.
start http://localhost:8000
.\venv\Scripts\python.exe -m uvicorn backend.main:app --host 127.0.0.1 --port 8000
pause
