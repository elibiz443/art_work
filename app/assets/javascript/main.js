$(document).ready(function() {
  var page1 = document.getElementById("section1");
  var page2 = document.getElementById("section2");
  var page3 = document.getElementById("section3");
  var page4 = document.getElementById("section4");

  const mybtn1 = document.getElementById("select_input1");
  const mybtn2 = document.getElementById("select_input2");
  const mybtn3 = document.getElementById("select_input3");
  const mybtn4 = document.getElementById("select_input4");

  function selectInput1() {
    page1.style.display = "block";
    page2.style.display = "none";
    page3.style.display = "none";
    page4.style.display = "none";

    mybtn1.style.backgroundColor = "rgba(153, 50, 204, 0.8)"
    mybtn2.style.backgroundColor = "rgba(13, 39, 70, 0.5)"
    mybtn3.style.backgroundColor = "rgba(13, 39, 70, 0.5)"
    mybtn4.style.backgroundColor = "rgba(13, 39, 70, 0.5)"

    mybtn1.style.boxShadow = "0 0.5vw 1vw 0.5vw rgba(0, 255, 255, 0.1)"
    mybtn2.style.boxShadow = "none"
    mybtn3.style.boxShadow = "none"
    mybtn4.style.boxShadow = "none"
  }

  function selectInput2() {
    page2.style.display = "block";
    page1.style.display = "none";
    page3.style.display = "none";
    page4.style.display = "none";

    mybtn2.style.backgroundColor = "rgba(153, 50, 204, 0.8)"
    mybtn1.style.backgroundColor = "rgba(13, 39, 70, 0.5)"
    mybtn3.style.backgroundColor = "rgba(13, 39, 70, 0.5)"
    mybtn4.style.backgroundColor = "rgba(13, 39, 70, 0.5)"

    mybtn2.style.boxShadow = "0 0.5vw 1vw 0.5vw rgba(0, 255, 255, 0.1)"
    mybtn1.style.boxShadow = "none"
    mybtn3.style.boxShadow = "none"
    mybtn4.style.boxShadow = "none"
  }

  function selectInput3() {
    page3.style.display = "block";
    page1.style.display = "none";
    page2.style.display = "none";
    page4.style.display = "none";

    mybtn3.style.backgroundColor = "rgba(153, 50, 204, 0.8)"
    mybtn1.style.backgroundColor = "rgba(13, 39, 70, 0.5)"
    mybtn2.style.backgroundColor = "rgba(13, 39, 70, 0.5)"
    mybtn4.style.backgroundColor = "rgba(13, 39, 70, 0.5)"

    mybtn3.style.boxShadow = "0 0.5vw 1vw 0.5vw rgba(0, 255, 255, 0.1)"
    mybtn1.style.boxShadow = "none"
    mybtn2.style.boxShadow = "none"
    mybtn4.style.boxShadow = "none"
  }

  function selectInput4() {
    page4.style.display = "block";
    page1.style.display = "none";
    page2.style.display = "none";
    page3.style.display = "none";

    mybtn4.style.backgroundColor = "rgba(153, 50, 204, 0.8)"
    mybtn1.style.backgroundColor = "rgba(13, 39, 70, 0.5)"
    mybtn2.style.backgroundColor = "rgba(13, 39, 70, 0.5)"
    mybtn3.style.backgroundColor = "rgba(13, 39, 70, 0.5)"

    mybtn4.style.boxShadow = "0 0.5vw 1vw 0.5vw rgba(0, 255, 255, 0.1)"
    mybtn1.style.boxShadow = "none"
    mybtn2.style.boxShadow = "none"
    mybtn3.style.boxShadow = "none"
  }

  $('#select_input1').on('click', function(e) {
    e.preventDefault();

    selectInput1();
  });

  $('#select_input2').on('click', function(e) {
    e.preventDefault();

    selectInput2();
  });

  $('#select_input3').on('click', function(e) {
    e.preventDefault();

    selectInput3();
  });

  $('#select_input4').on('click', function(e) {
    e.preventDefault();

    selectInput4();
  });

});
