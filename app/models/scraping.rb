class Scraping
  def self.mercari_urls
    links = []
    agent = Mechanize.new
    current_page = agent.get("https://www.mercari.com/jp/")
    elements = current_page.search('.items-box a')
    elements.each do |ele|
      links << ele.get_attribute('href')
    end

    links.each do |link|
      get_product(link)
    end
  end

  def self.get_product(link)
    agent = Mechanize.new
    page = agent.get(link)
    name = page.at('.items-box-name').inner_text if page.at('.items-box-name')
    image_url = page.at('.items-box-photo img')['data-src'] if page.at('.items-box-photo img')
    puts image_url
    price = page.at('.items-box-price').inner_text if page.at('.items-box-price')

    product = Item.new(name: name, image_url: image_url, price: price)
    product.save
  end
end