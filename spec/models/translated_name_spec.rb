# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TranslatedName do
  context 'with associations' do
    it { is_expected.to belong_to :language }
    it { is_expected.to belong_to :resource }
  end

  context 'with columns and indexes' do
    columns = {
      resource_type: :string,
      resource_id:   :integer,
      language_id:   :integer,
      name:          :string,
      language_name: :string
    }

    indexes = [
      ['language_id'],
      ['resource_type', 'resource_id']
    ]

    it_behaves_like 'modal with column', columns
    it_behaves_like 'modal have indexes on column', indexes
  end

end
