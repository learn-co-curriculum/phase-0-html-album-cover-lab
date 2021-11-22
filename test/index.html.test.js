const chai = require("chai");
chai.use(require("chai-dom"));
const { expect } = chai;

describe("index.html", () => {
  describe("the title-box section", () => {
    it("has a <h4> element with the correct content", () => {
      // find the element with an ID of title-box
      const titleBox = document.querySelector("#title-box");

      const h4 = titleBox.querySelector("h4");
      const hint1 = "No <h4> tag(s) found";
      expect(h4, hint1).to.exist;

      const hint2 = "Your <h4> tag should contain the text 'PHARRELL WILLIAMS'";
      expect(h4, hint2).to.contain.text("PHARRELL WILLIAMS");
    });

    it("has a <h2> element with the correct content", () => {
      // find the element with an ID of title-box
      const titleBox = document.querySelector("#title-box");

      const h2 = titleBox.querySelector("h2");
      const hint1 = "No <h2> tag(s) found";
      expect(h2, hint1).to.exist;

      const hint2 = "Your <h2> tag should contain the text 'HAPPY'";
      expect(h2, hint2).to.contain.text("HAPPY");
    });

    it("has a second <h4> element with the correct content", () => {
      // find the element with an ID of title-box
      const titleBox = document.querySelector("#title-box");

      const h4 = titleBox.querySelectorAll("h4")[1];
      const hint1 = "No second <h4> tag found";
      expect(h4, hint1).to.exist;

      const hint2 =
        "Your second <h4> tag should contain the text 'FROM DESPICABLE ME 2'";
      expect(h4, hint2).to.contain.text("FROM DESPICABLE ME 2");
    });
  });

  describe("the back section", () => {
    it("has a <h3> tag with the correct contents", () => {
      // find the element with an ID of back
      const back = document.querySelector("#back");

      const h3 = back.querySelector("h3");
      const hint1 = "No <h3> tag found";
      expect(h3, hint1).to.exist;

      const hint2 =
        "Your <h3> tag should contain the text 'FROM DESPICABLE ME 2'";
      expect(h3, hint2).to.contain.text("FROM DESPICABLE ME 2");
    });

    it("has a <h1> tag with the correct contents", () => {
      const back = document.querySelector("#back");

      const h1 = back.querySelector("h1");
      const hint1 = "No <h1> tag found";
      expect(h1, hint1).to.exist;

      const hint2 = "Your <h1> tag should contain the text 'HAPPY'";
      expect(h1, hint2).to.contain.text("HAPPY");
    });

    it("has a second <h3> tag with the correct contents", () => {
      const back = document.querySelector("#back");

      const h3 = back.querySelectorAll("h3")[1];
      const hint1 = "No second <h3> tag found";
      expect(h3, hint1).to.exist;

      const hint2 = "Your second <h3> tag should contain the text 'WRITTEN BY'";
      expect(h3, hint2).to.contain.text("WRITTEN BY");
    });

    it("has a <p> tag with the correct contents", () => {
      const back = document.querySelector("#back");

      const p = back.querySelector("p");
      const hint1 = "No <p> tag found";
      expect(p, hint1).to.exist;

      const hint2 = "Your <p> tag should contain the text 'PUBLISHED BY'";
      expect(p, hint2).to.contain.text("PUBLISHED BY");
    });

    it("has a <span> tag with the correct contents", () => {
      const back = document.querySelector("#back");

      const span = back.querySelector("span");
      const hint1 = "No <span> tag found";
      expect(span, hint1).to.exist;

      const hint2 =
        "Your <span> tag should contain the text 'PHARRELLWILLIAMS.COM'";
      expect(span, hint2).to.contain.text("PHARRELLWILLIAMS.COM");
    });

    it("has a <img> tag with the correct attributes", () => {
      const back = document.querySelector("#back");

      const img = back.querySelector("img");
      const hint1 = "No <img> tag found";
      expect(img, hint1).to.exist;

      expect(img).to.have.attribute(
        "src",
        "https://s3.amazonaws.com/learn-verified/columbia-logo.png"
      );
    });

    it("has a second <span> tag with the correct contents", () => {
      const back = document.querySelector("#back");

      const span = back.querySelectorAll("span")[1];
      const hint1 = "No second <span> tag found";
      expect(span, hint1).to.exist;

      const hint2 =
        "Your second <span> tag should contain the text 'COLUMBIARECORDS.COM'";
      expect(span, hint2).to.contain.text("COLUMBIARECORDS.COM");
    });

    it("has a second <img> tag with the correct attributes", () => {
      const back = document.querySelector("#back");

      const img = back.querySelectorAll("img")[1];
      const hint1 = "No second <img> tag found";
      expect(img, hint1).to.exist;

      expect(img).to.have.attribute(
        "src",
        "https://s3.amazonaws.com/learn-verified/sony-logo.png"
      );
    });
  });
});
