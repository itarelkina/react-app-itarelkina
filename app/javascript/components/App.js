import React from 'react'
import * as jsPDF from 'jspdf'
import {Route, Switch} from 'react-router-dom'
import Home from './Home'
import About from './About'
import Contact from './Contact'
import Letter from './Letter'
import Document from './Document'

//declare module 'jspdf'
class App extends React.Component {
    render ()
    {
       return (
        <div>
            <Switch>
                <Route exact path="/" component={Home} />
                <Route exact path="/about" component={About} />
                <Route exact path="/contact" component={Contact} />
                <Route exact path="/letter" component={Letter} />
                <Route exact path="/document" component={Document} />
            </Switch>
        </div>    
        )
    }

}
export default App