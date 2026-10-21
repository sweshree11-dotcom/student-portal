const express = require("express");
const mongoose = require("mongoose");

const app = express();

app.use(express.json());

app.use(express.static(__dirname));

mongoose.connect("mongodb://127.0.0.1:27017/college");

const Student = mongoose.model("Student", {
    name: String,
    department: String,
    mark: Number
});

app.post("/students", async (req, res) => {

    const student = await Student.create(req.body);

    res.json(student);

});

app.get("/students", async (req, res) => {

    const students = await Student.find();

    res.json(students);

});

app.delete("/students/:id", async (req, res) => {

    const student = await Student.findByIdAndDelete(req.params.id);

    res.json(student);

});

app.listen(3000, () => {

    console.log("Server running");

});

npm install express mongoose
http://localhost:3000