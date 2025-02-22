import React from 'react'
import Navbar from 'react-bootstrap/Navbar';
import logo from '../../Assets/logo 3.png'

export default function Navbar1() {
  return (
    <div>
       <Navbar className='fixed-top' style={{ backgroundColor: "#003a57" }}> 
          <Navbar.Brand href="#home" style={{color: "#f78f16" , marginLeft:"40px" , fontWeight:900 , fontSize:'1.3rem' }}>
            <img
              alt=""
              src={logo}
              width="30"
              height="30"
              className="d-inline-block align-top"
            />{' '}
           AspireRoute
          </Navbar.Brand>
       
      </Navbar>
    </div>
  )
}
