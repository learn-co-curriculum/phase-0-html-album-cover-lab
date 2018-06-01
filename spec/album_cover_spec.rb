RSpec.describe 'HTML Album Cover' do

    context 'within <body>' do
      it 'the title-box section contains the correct header sizes and text content' do
        title_box = parsed_html.search('#title-box').first

        expect(title_box.children.any? {|ch| ch.name == "h4"}).to be == true, "No 'h4' tag(s) found"
        expect(title_box.children.select {|ch| ch.name == "h4"}.first.children.first.text).to be == "PHARRELL WILLIAMS", "Your 'h4' tag should contain the text 'PHARRELL WILLIAMS'"

        expect(title_box.children.any? {|ch| ch.name == "h2"}).to be == true, "No 'h2' tag found"
        expect(title_box.children.select {|ch| ch.name == "h2"}.first.children.first.text).to be == "HAPPY", "Your 'h2' tag should contain the text 'HAPPY'"

      end


      it 'the back section contains the correct header sizes and text content' do
        back_cover = parsed_html.search('#back').first

        expect(back_cover.children.any? {|ch| ch.name == "h1"}).to be == true, "No 'h1' tag found"
        expect(back_cover.children.select {|ch| ch.name == "h1"}.first.children.first.text).to be == "HAPPY", "The `h1` tag should include the text 'HAPPY'"

        expect(back_cover.children.select {|ch| ch.name == "h3"}.length).to be >= 2, "Make sure to include both `h3` tags"

        expect(back_cover.children.any? {|ch| ch.name == "p"}).to be == true, "No 'p' tag found"
        expect(back_cover.children.select {|ch| ch.name == "p"}.first.children.first.text).to include("PUBLISHED BY"), "The 'p' tag should include the text 'PUBLISHED BY'"

        expect(back_cover.children.any? {|ch| ch.name == "span"}).to be == true, "No 'span' tag was found"
        expect(back_cover.children.select {|ch| ch.name == "span"}.first.children.first.text).to include("PHARRELLWILLIAMS.COM"), "The first span tag should include the text 'PHARRELLWILLIAMS.COM'"

        expect(back_cover.children.select {|ch| ch.name == "img"}.length).to be >= 2, "Make sure to include both `img` tags"

      end

  end
end
