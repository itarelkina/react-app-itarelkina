import React from 'react'
import axios from 'axios'

class Letters extends React.Component {
  state = {
    letters: []
  };

  componentDidMount() {
    axios
      .get('/api/letters')
      .then(response => {
        this.setState({ letters: response.data.letters });
      })
  }

  renderAllLetters = () => {
    return(
      <ul>
        {this.state.letters.map(letter => (
          <li key={letter}>{letter}</li>
        ))}
      </ul>
    )
  }

  render() {
    return (
      <div>
        {this.renderAllLetters()}
      </div>
    )
  }
}

export default Letters