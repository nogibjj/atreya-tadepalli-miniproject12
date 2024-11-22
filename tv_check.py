"""
Test app - find tv
"""
from flask import Flask

app=Flask(__name__)
@app.route('/')

#Returns location of first instance of word "tv"
def first_instance(test:str):
    for i in range(0,len(test)-1):
        if test[i] =="t":
            if test[i+1]=="v":
                return i
            else:
                pass
        else:
            pass
    return "tv was not found"


    
if __name__=='__main__':
    app.run(debug=True)

    
