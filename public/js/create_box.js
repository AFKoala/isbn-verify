function isbnNum(){
    document.getElementById('button').addEventListener('click', isbnNum);
    var input = document.createElement("input");
    input.type = "text";
    input.required = true;
    input.name = "isbnNumber";
    document.body.appendChild(input);
}