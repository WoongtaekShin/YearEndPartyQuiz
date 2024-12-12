#!/bin/bash

# Colors for terminal output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🎮 Starting Quiz Game Setup...${NC}"

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3 first."
    exit 1
fi

# Check if virtual environment exists, if not create it
if [ ! -d "venv" ]; then
    echo -e "${BLUE}📦 Creating virtual environment...${NC}"
    python3 -m venv venv
fi

# Activate virtual environment
echo -e "${BLUE}🔧 Activating virtual environment...${NC}"
source venv/bin/activate

# Install requirements
echo -e "${BLUE}📥 Installing dependencies...${NC}"
pip install -r requirements.txt

# Check if quiz_data.json exists
if [ ! -f "quiz_data.json" ]; then
    echo "❌ quiz_data.json not found. Please make sure the file exists."
    exit 1
fi

# Run the application
echo -e "${GREEN}🚀 Starting the Quiz Game...${NC}"
python app.py