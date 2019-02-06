RSpec.describe 'HTML Album Cover' do

    context 'within <body>' do
      it 'the title-box section contains the correct header sizes and text content' do
        title_box = parsed_html.search('#title-box').first

        expect(title_box.children.any? {|ch| ch.name == "h4"}).to be == true, "No 'h4' tag(s) found"
        expect(title_box.children.select {|ch| ch.name == "h4"}.first.children.first.text).to be == "PHARRELL WILLIAMS", "Your 'h4' tag should contain the text 'PHARRELL WILLIAMS'"

        expect(title_box.children.any? {|ch| ch.name == "h2"}).to be == true, "No 'h2' tag found"
        expect(title_box.children.select {|ch| ch.name == "h2"}.first.children.first.text).to be == "HAPPY", "Your 'h2' tag should contain the text 'HAPPY'"

        expect(title_box.children.select {|ch| ch.name == "h4"}[1].children.first.text).to include("FROM DESPICABLE ME"), "A second 'h4' tag should contain the text 'FROM DESPICABLE ME'"

      end


      it 'the back section contains the correct header sizes and text content' do
        back_cover = parsed_html.search('#back').first

        expect(back_cover.children.any? {|ch| ch.name == "h3"}).to be == true, "No 'h3' tag found"
        expect(back_cover.children.select {|ch| ch.name == "h3"}[0].children.first.text).to include("FROM DESPICABLE ME"), "An 'h3' tag should contain the text 'FROM DESPICABLE ME'"

        expect(back_cover.children.any? {|ch| ch.name == "h1"}).to be == true, "No 'h1' tag found"
        expect(back_cover.children.select {|ch| ch.name == "h1"}.first.children.first.text).to be == "HAPPY", "The `h1` tag should include the text 'HAPPY'"

        expect(back_cover.children.select {|ch| ch.name == "h3"}[1].children.first.text).to include("WRITTEN BY"), "A second 'h3' tag should contain the text 'WRITTEN BY' (remaining text optional)"

        expect(back_cover.children.any? {|ch| ch.name == "p"}).to be == true, "No 'p' tag found"
        expect(back_cover.children.select {|ch| ch.name == "p"}.first.children.first.text).to include("PUBLISHED BY"), "The 'p' tag should include the text 'PUBLISHED BY'"

        expect(back_cover.children.any? {|ch| ch.name == "span"}).to be == true, "No 'span' tag was found"
        expect(back_cover.children.select {|ch| ch.name == "span"}.first.children.first.text).to include("PHARRELLWILLIAMS.COM"), "The first span tag should include the text 'PHARRELLWILLIAMS.COM'"

        expect(back_cover.children.any? {|ch| ch.name == "img"}).to be == true, "No 'img' tag was found"

        expect(back_cover.children.select {|ch| ch.name == "img"}[0].attributes["src"].value).to be == 'https://s3.amazonaws.com/learn-verified/columbia-logo.png', "First image should have its source set to 'https://s3.amazonaws.com/learn-verified/columbia-logo.png'"

        expect(back_cover.children.select {|ch| ch.name == "span"}[1].children.first.text).to include("COLUMBIARECORDS.COM"), "The second span tag should include the text 'COLUMBIARECORDS.COM'"

        expect(back_cover.children.select {|ch| ch.name == "img"}[1].attributes["src"].value).to be == 'https://s3.amazonaws.com/learn-verified/sony-logo.png', "First image should have its source set to 'https://s3.amazonaws.com/learn-verified/columbia-logo.png'"

      end

  end
end
