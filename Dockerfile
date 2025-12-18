FROM python:3.6-slim

COPY . /python-test-calculator
WORKDIR /python-test-calculator

# Mettre à jour pip à la dernière version
RUN pip install --upgrade pip

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exécuter les tests
RUN ["pytest", "-v", "--junitxml=reports/result.xml"]

CMD tail -f /dev/null
