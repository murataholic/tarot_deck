const deck = () => {

  const articleText = document.getElementById('article_text');
  articleText.addEventListener('keyup', () => {
    const textLength = articleText.value.length;
    const charNum = document.getElementById("char_num");
    charNum.innerHTML = `${textLength}`;
    if(articleText.value.length > 2000){
      charNum.setAttribute("style", "color: red;")
    }
    if(articleText.value.length <= 2000){
      charNum.removeAttribute("style", "color: black;")
    }
  });

  let mons1 = document.getElementById("article_mons1_id");
  mons1.addEventListener("change", showImage1);

  let arc1 = document.getElementById("article_arc1_id");
  arc1.addEventListener("change", showImage1);

  let mons2 = document.getElementById("article_mons2_id");
  mons2.addEventListener("change", showImage2);

  let arc2 = document.getElementById("article_arc2_id");
  arc2.addEventListener("change", showImage2);

  let mons3 = document.getElementById("article_mons3_id");
  mons3.addEventListener("change", showImage3);

  let arc3 = document.getElementById("article_arc3_id");
  arc3.addEventListener("change", showImage3);

  let mons4 = document.getElementById("article_mons4_id");
  mons4.addEventListener("change", showImage4);

  let arc4 = document.getElementById("article_arc4_id");
  arc4.addEventListener("change", showImage4);

  let mons5 = document.getElementById("article_mons5_id");
  mons5.addEventListener("change", showImage5);

  let arc5 = document.getElementById("article_arc5_id");
  arc5.addEventListener("change", showImage5);

  let mons6 = document.getElementById("article_mons6_id");
  mons6.addEventListener("change", showImage6);

  let arc6 = document.getElementById("article_arc6_id");
  arc6.addEventListener("change", showImage6);

  let mons7 = document.getElementById("article_mons7_id");
  mons7.addEventListener("change", showImage7);

  let arc7 = document.getElementById("article_arc7_id");
  arc7.addEventListener("change", showImage7);

  let mons8 = document.getElementById("article_mons8_id");
  mons8.addEventListener("change", showImage8);

  let arc8 = document.getElementById("article_arc8_id");
  arc8.addEventListener("change", showImage8);

  let mons9 = document.getElementById("article_mons9_id");
  mons9.addEventListener("change", showImage9);

  let arc9 = document.getElementById("article_arc9_id");
  arc9.addEventListener("change", showImage9);

  let mons10 = document.getElementById("article_mons10_id");
  mons10.addEventListener("change", showImage10);

  let arc10 = document.getElementById("article_arc10_id");
  arc10.addEventListener("change", showImage10);

  let mons11 = document.getElementById("article_mons11_id");
  mons11.addEventListener("change", showImage11);

  let arc11 = document.getElementById("article_arc11_id");
  arc11.addEventListener("change", showImage11);

  let mons12 = document.getElementById("article_mons12_id");
  mons12.addEventListener("change", showImage12);

  let arc12 = document.getElementById("article_arc12_id");
  arc12.addEventListener("change", showImage12);

  let mons13 = document.getElementById("article_mons13_id");
  mons13.addEventListener("change", showImage13);

  let arc13 = document.getElementById("article_arc13_id");
  arc13.addEventListener("change", showImage13);

  let mons14 = document.getElementById("article_mons14_id");
  mons14.addEventListener("change", showImage14);

  let arc14 = document.getElementById("article_arc14_id");
  arc14.addEventListener("change", showImage14);

  let mons15 = document.getElementById("article_mons15_id");
  mons15.addEventListener("change", showImage15);

  let arc15 = document.getElementById("article_arc15_id");
  arc15.addEventListener("change", showImage15);

  let mons16 = document.getElementById("article_mons16_id");
  mons16.addEventListener("change", showImage16);

  let arc16 = document.getElementById("article_arc16_id");
  arc16.addEventListener("change", showImage16);

  let mons17 = document.getElementById("article_mons17_id");
  mons17.addEventListener("change", showImage17);

  let arc17 = document.getElementById("article_arc17_id");
  arc17.addEventListener("change", showImage17);

  let mons18 = document.getElementById("article_mons18_id");
  mons18.addEventListener("change", showImage18);

  let arc18 = document.getElementById("article_arc18_id");
  arc18.addEventListener("change", showImage18);

  let mons19 = document.getElementById("article_mons19_id");
  mons19.addEventListener("change", showImage19);

  let arc19 = document.getElementById("article_arc19_id");
  arc19.addEventListener("change", showImage19);

  let mons20 = document.getElementById("article_mons20_id");
  mons20.addEventListener("change", showImage20);

  let arc20 = document.getElementById("article_arc20_id");
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

