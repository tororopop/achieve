require 'rails_helper'

describe Contact do
  it "is valid with contact" do  #問い合わせがあれば有効な状態であること
    contact = Contact.new(name: '村井', email: 'xxx@aaa', content: '問い合わせ')
    expect(contact).to be_valid
  end

  it "is invalid without a contact" do  #問い合わせがなければ無効であること
    contact = Contact.new
    expect(contact).not_to be_valid
  end

  it "is valid with content" do  #内容がなければ無効であること
    contact = Contact.new(name: '村井', email: 'xxx@aaa')
    contact.valid?
    expect(contact.errors[:content]).to include("を入力してください")
  end

  it "is valid with name" do  #氏名がなければ無効であること
    contact = Contact.new(email: 'xxx@aaa', content: '問い合わせ')
    contact.valid?
    expect(contact.errors[:name]).to include("を入力してください")
  end

  it "is valid with email" do  #メルアドがなければ無効であること
    contact = Contact.new(name: '村井', content: '問い合わせ')
    contact.valid?
    expect(contact.errors[:email]).to include("を入力してください")
  end

end
