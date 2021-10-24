const deck = () => {

  const articleText = document.getElementById('article_text');
  articleText.addEventListener('keyup', () => {
    const textLength = articleText.value.length;
    const charNum = document.getElementById("char_num");
    charNum.innerHTML = `${textLength}`;
    if(articleText.value.length > 3000){
      charNum.setAttribute("style", "color: red;")
    }
    if(articleText.value.length <= 3000){
      charNum.removeAttribute("style", "color: black;")
    }
  });

  let mons1 = document.getElementById("article_deck_mons1");
  mons1.addEventListener("change", showImage1);

  let arc1 = document.getElementById("article_deck_arc1");
  arc1.addEventListener("change", showImage1);

  let mons2 = document.getElementById("article_deck_mons2");
  mons2.addEventListener("change", showImage2);

  let arc2 = document.getElementById("article_deck_arc2");
  arc2.addEventListener("change", showImage2);

  let mons3 = document.getElementById("article_deck_mons3");
  mons3.addEventListener("change", showImage3);

  let arc3 = document.getElementById("article_deck_arc3");
  arc3.addEventListener("change", showImage3);

  let mons4 = document.getElementById("article_deck_mons4");
  mons4.addEventListener("change", showImage4);

  let arc4 = document.getElementById("article_deck_arc4");
  arc4.addEventListener("change", showImage4);

  let mons5 = document.getElementById("article_deck_mons5");
  mons5.addEventListener("change", showImage5);

  let arc5 = document.getElementById("article_deck_arc5");
  arc5.addEventListener("change", showImage5);

  let mons6 = document.getElementById("article_deck_mons6");
  mons6.addEventListener("change", showImage6);

  let arc6 = document.getElementById("article_deck_arc6");
  arc6.addEventListener("change", showImage6);

  let mons7 = document.getElementById("article_deck_mons7");
  mons7.addEventListener("change", showImage7);

  let arc7 = document.getElementById("article_deck_arc7");
  arc7.addEventListener("change", showImage7);

  let mons8 = document.getElementById("article_deck_mons8");
  mons8.addEventListener("change", showImage8);

  let arc8 = document.getElementById("article_deck_arc8");
  arc8.addEventListener("change", showImage8);

  let mons9 = document.getElementById("article_deck_mons9");
  mons9.addEventListener("change", showImage9);

  let arc9 = document.getElementById("article_deck_arc9");
  arc9.addEventListener("change", showImage9);

  let mons10 = document.getElementById("article_deck_mons10");
  mons10.addEventListener("change", showImage10);

  let arc10 = document.getElementById("article_deck_arc10");
  arc10.addEventListener("change", showImage10);

  let mons11 = document.getElementById("article_deck_mons11");
  mons11.addEventListener("change", showImage11);

  let arc11 = document.getElementById("article_deck_arc11");
  arc11.addEventListener("change", showImage11);

  let mons12 = document.getElementById("article_deck_mons12");
  mons12.addEventListener("change", showImage12);

  let arc12 = document.getElementById("article_deck_arc12");
  arc12.addEventListener("change", showImage12);

  let mons13 = document.getElementById("article_deck_mons13");
  mons13.addEventListener("change", showImage13);

  let arc13 = document.getElementById("article_deck_arc13");
  arc13.addEventListener("change", showImage13);

  let mons14 = document.getElementById("article_deck_mons14");
  mons14.addEventListener("change", showImage14);

  let arc14 = document.getElementById("article_deck_arc14");
  arc14.addEventListener("change", showImage14);

  let mons15 = document.getElementById("article_deck_mons15");
  mons15.addEventListener("change", showImage15);

  let arc15 = document.getElementById("article_deck_arc15");
  arc15.addEventListener("change", showImage15);

  let mons16 = document.getElementById("article_deck_mons16");
  mons16.addEventListener("change", showImage16);

  let arc16 = document.getElementById("article_deck_arc16");
  arc16.addEventListener("change", showImage16);

  let mons17 = document.getElementById("article_deck_mons17");
  mons17.addEventListener("change", showImage17);

  let arc17 = document.getElementById("article_deck_arc17");
  arc17.addEventListener("change", showImage17);

  let mons18 = document.getElementById("article_deck_mons18");
  mons18.addEventListener("change", showImage18);

  let arc18 = document.getElementById("article_deck_arc18");
  arc18.addEventListener("change", showImage18);

  let mons19 = document.getElementById("article_deck_mons19");
  mons19.addEventListener("change", showImage19);

  let arc19 = document.getElementById("article_deck_arc19");
  arc19.addEventListener("change", showImage19);

  let mons20 = document.getElementById("article_deck_mons20");
  mons20.addEventListener("change", showImage20);

  let arc20 = document.getElementById("article_deck_arc20");
  arc20.addEventListener("change", showImage20);

  function showImage1() {
    document.getElementById("img1").innerHTML = `
      <img src="/tarots/${mons1.value}/${mons1.value}-${arc1.value}.png" alt="image1"></img>
      `;
  };

  function showImage2() {
    document.getElementById("img2").innerHTML = `
      <img src="/tarots/${mons2.value}/${mons2.value}-${arc2.value}.png" alt="image2"></img>
      `;
  };

  function showImage3() {
    document.getElementById("img3").innerHTML = `
      <img src="/tarots/${mons3.value}/${mons3.value}-${arc3.value}.png" alt="image3"></img>
      `;
  };

  function showImage4() {
    document.getElementById("img4").innerHTML = `
      <img src="/tarots/${mons4.value}/${mons4.value}-${arc4.value}.png" alt="image4"></img>
      `;
  };

  function showImage5() {
    document.getElementById("img5").innerHTML = `
      <img src="/tarots/${mons5.value}/${mons5.value}-${arc5.value}.png" alt="image5"></img>
      `;
  };

  function showImage6() {
    document.getElementById("img6").innerHTML = `
      <img src="/tarots/${mons6.value}/${mons6.value}-${arc6.value}.png" alt="image6"></img>
      `;
  };

  function showImage7() {
    document.getElementById("img7").innerHTML = `
      <img src="/tarots/${mons7.value}/${mons7.value}-${arc7.value}.png" alt="image7"></img>
      `;
  };

  function showImage8() {
    document.getElementById("img8").innerHTML = `
      <img src="/tarots/${mons8.value}/${mons8.value}-${arc8.value}.png" alt="image8"></img>
      `;
  };

  function showImage9() {
    document.getElementById("img9").innerHTML = `
      <img src="/tarots/${mons9.value}/${mons9.value}-${arc9.value}.png" alt="image9"></img>
      `;
  };

  function showImage10() {
    document.getElementById("img10").innerHTML = `
      <img src="/tarots/${mons10.value}/${mons10.value}-${arc10.value}.png" alt="image10"></img>
      `;
  };

  function showImage11() {
    document.getElementById("img11").innerHTML = `
      <img src="/tarots/${mons11.value}/${mons11.value}-${arc11.value}.png" alt="image11"></img>
      `;
  };

  function showImage12() {
    document.getElementById("img12").innerHTML = `
      <img src="/tarots/${mons12.value}/${mons12.value}-${arc12.value}.png" alt="image12"></img>
      `;
  };

  function showImage13() {
    document.getElementById("img13").innerHTML = `
      <img src="/tarots/${mons13.value}/${mons13.value}-${arc13.value}.png" alt="image13"></img>
      `;
  };

  function showImage14() {
    document.getElementById("img14").innerHTML = `
      <img src="/tarots/${mons14.value}/${mons14.value}-${arc14.value}.png" alt="image14"></img>
      `;
  };

  function showImage15() {
    document.getElementById("img15").innerHTML = `
      <img src="/tarots/${mons15.value}/${mons15.value}-${arc15.value}.png" alt="image15"></img>
      `;
  };

  function showImage16() {
    document.getElementById("img16").innerHTML = `
      <img src="/tarots/${mons16.value}/${mons16.value}-${arc16.value}.png" alt="image16"></img>
      `;
  };

  function showImage17() {
    document.getElementById("img17").innerHTML = `
      <img src="/tarots/${mons17.value}/${mons17.value}-${arc17.value}.png" alt="image17"></img>
      `;
  };

  function showImage18() {
    document.getElementById("img18").innerHTML = `
      <img src="/tarots/${mons18.value}/${mons18.value}-${arc18.value}.png" alt="image18"></img>
      `;
  };

  function showImage19() {
    document.getElementById("img19").innerHTML = `
      <img src="/tarots/${mons19.value}/${mons19.value}-${arc19.value}.png" alt="image19"></img>
      `;
  };

  function showImage20() {
    document.getElementById("img20").innerHTML = `
      <img src="/tarots/${mons20.value}/${mons20.value}-${arc20.value}.png" alt="image20"></img>
      `;
  };
};

window.addEventListener("load", deck);

