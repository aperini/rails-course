require 'swagger_helper'

describe 'QA API' do

  path '/questions' do

    post 'Creates a question' do
      tags 'Question'
      consumes 'application/json'
      parameter name: 'Authentication-Token', :in => :header, :type => :string
      parameter name: :question, in: :body, schema: {
          type: :object,
          properties: {
              email: { type: :string },
              body: { type: :string }
          },
          required: [ 'email', 'body' ]
      }

      response '200', 'question created' do
        let(:question) { { email: 'aperini@gmail.com', body: 'some question' } }
        run_test!
      end

      response '400', 'invalid request' do
        let(:question) { { email: 'foo' } }
        run_test!
      end
    end
  end
end
