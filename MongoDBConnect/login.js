const express=require("express");
const mongoose=require("mongoose");
const app=express()
mongoose.connect("mongodb://localhost27017/latestdb",{
    useNewUrlParser:true,useUnifiedTopology:true
},(err)=>{
    if(err)
    {
        console.log(err)
    }
    else{
        console.log("Succesfully Connected")
    }
})

app.listen(3000,()=>{
    console.log("On Port 3000!!!")
})
