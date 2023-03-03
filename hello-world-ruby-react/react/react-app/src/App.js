import React, { useState, useEffect } from 'react';
import axios from 'axios';

function App() {
  const [articles, setArticles] = useState([]);

  useEffect(() => {
    axios.get('http://192.168.100.26:8081/articles')
      .then(response => {
        setArticles(response.data);
      })
      .catch(error => {
        console.error(error);
      });
  }, []);

  return (
    <div>
      <h1>Random Articles</h1>
      <ul>
        {articles.map(article => (
          <li key={article.id}>
            <a href={article.url}>{article.name}</a>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default App;
