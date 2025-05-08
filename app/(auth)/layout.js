import React from 'react'

const AuthLayout = ({children}) => {
  return (
    <div className="flex justify-center pt-40">
        {/* we have given (auth) as folder name so that rendering will ignore auth as seperate folder and consider 
        sign-in and sign-up as concatinated */}
        {/* sign-in and sign-up will render here using this child property so the we can apply same property to both of them*/}
        {children} 
    </div>
  )
}

export default AuthLayout

