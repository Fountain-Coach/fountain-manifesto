#!/bin/bash

set -e
echo "🎭 Scaffolding pure HTML5 Teatro-style site..."

# Create folders
mkdir -p assets illustrations

# Create CNAME
echo "fountain.coach" > CNAME

# Create styles.css
cat <<EOF > assets/styles.css
@import url('https://fonts.googleapis.com/css2?family=EB+Garamond:wght@400;500&display=swap');

body {
  font-family: 'EB Garamond', serif;
  background: #fdfaf6;
  color: #111;
  max-width: 720px;
  margin: 4rem auto;
  padding: 1rem;
  font-size: 1.125rem;
  line-height: 1.8;
}

img {
  max-width: 100%;
  height: auto;
  display: block;
  margin: 2rem auto;
  border-radius: 2px;
  opacity: 0.92;
  transition: all 0.3s ease;
}

img.logo {
  width: 72px;
  float: right;
  margin-left: 2rem;
  margin-bottom: 1rem;
  opacity: 0.9;
}

p img:first-child {
  float: right;
  margin-left: 2rem;
  margin-bottom: 1rem;
  max-width: 40%;
}

@media (max-width: 700px) {
  p img:first-child {
    float: none;
    display: block;
    margin: 1.5rem auto;
    max-width: 90%;
  }
}
EOF

# Create index.html
cat <<EOF > index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Fountain.Coach</title>
  <link rel="stylesheet" href="/assets/styles.css" />
</head>
<body>
  <img src="/illustrations/logo.png" class="logo" alt="Fountain Logo" />
  <main>
    <h1>Fountain.Coach</h1>
    <p class="subtitle">A system taking shape — reflections, roles, and reasoning.</p>
    <p><img src="/illustrations/hand-open.png" alt="Open Hand Illustration" />Fountain.coach is not a startup. It's not a product. It is a <strong>semantic system</strong> — developed slowly, through rhythm, resistance, and repetition.</p>
    <p>Like a rehearsal script passed between performers, it finds coherence in motion — not in a spec.</p>
  </main>
</body>
</html>
EOF

echo "✅ Done. Now commit and push to GitHub."
