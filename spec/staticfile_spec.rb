
require_relative 'spec_helper'

RSpec.describe IS::StaticFile do 

  it 'with source' do

    w_source = IS::StaticFile::new nil, '/files/', 'test.txt', source: 'any.txt'

    expect(w_source.path).to eq('any.txt')
    expect(w_source.relative_path).to eq('/files/test.txt')

  end

  it 'without source' do

    wo_source = IS::StaticFile::new nil, '/files/', 'test.txt', content: 'any.txt'

    expect(wo_source.relative_path).to eq('/files/test.txt')
    expect(wo_source.base).to eq('/')
    expect(wo_source.modified?).to eq(true)

  end

end
