require 'rspec'
require 'stringio'

require_relative 'router'

describe Router do

  it 'should create new post and show it' do
    allow_any_instance_of(Router).to receive(:gets).and_return("1", "q")
    allow_any_instance_of(Resource).to receive(:gets).and_return("POST", "q")
    allow_any_instance_of(PostsController).to receive(:gets).and_return("Zero post")
    router = Router.new
    expect(router.init)
    expect do
      PostsController.new.create
    end.to output("Enter post text:\nZero post\n0 - Zero post\n").to_stdout
  end

  it 'should return post by id' do
    allow_any_instance_of(Router).to receive(:gets).and_return("1", "q")
    allow_any_instance_of(Resource).to receive(:gets).and_return("POST", "GET", "show", "q")
    allow_any_instance_of(PostsController).to receive(:gets).and_return("Zero post", "0")
    router = Router.new
    expect(router.init)
    expect do
      PostsController.new.show
    end.to output("Enter id:\n0\nWrong id.\n").to_stdout
  end

  it 'should update post by id' do
    allow_any_instance_of(Router).to receive(:gets).and_return("1", "q")
    allow_any_instance_of(Resource).to receive(:gets).and_return("POST", "PUT", "q")
    allow_any_instance_of(PostsController).to receive(:gets).and_return("Zero post", "0", "New zero post")
    router = Router.new
    expect(router.init)
    expect do
      PostsController.new.update
    end.to output("Enter id:\n0\nWrong id.\n").to_stdout
  end

  it 'should delete post by id' do
    allow_any_instance_of(Router).to receive(:gets).and_return("1", "q")
    allow_any_instance_of(Resource).to receive(:gets).and_return("POST", "DELETE", "q")
    allow_any_instance_of(PostsController).to receive(:gets).and_return("Zero post", "0")
    router = Router.new
    expect(router.init)
    expect do
      PostsController.new.destroy
    end.to output("Enter id:\n0\nWrong id.\n").to_stdout
  end

  it 'should create new comment and show it' do
    allow_any_instance_of(Router).to receive(:gets).and_return("2", "q")
    allow_any_instance_of(Resource).to receive(:gets).and_return("POST", "q")
    allow_any_instance_of(CommentsController).to receive(:gets).and_return("Zero comment")
    router = Router.new
    expect(router.init)
    expect do
      CommentsController.new.create
    end.to output("Enter comment:\nZero comment\n0 - Zero comment\n").to_stdout
  end

  it 'should return comment by id' do
    allow_any_instance_of(Router).to receive(:gets).and_return("2", "q")
    allow_any_instance_of(Resource).to receive(:gets).and_return("POST", "GET", "show", "q")
    allow_any_instance_of(CommentsController).to receive(:gets).and_return("Zero comment", "0")
    router = Router.new
    expect(router.init)
    expect do
      CommentsController.new.show
    end.to output("Enter id:\n0\nWrong id.\n").to_stdout
  end

  it 'should update comment by id' do
    allow_any_instance_of(Router).to receive(:gets).and_return("2", "q")
    allow_any_instance_of(Resource).to receive(:gets).and_return("POST", "PUT", "q")
    allow_any_instance_of(CommentsController).to receive(:gets).and_return("Zero comment", "0", "New zero comment")
    router = Router.new
    expect(router.init)
    expect do
      CommentsController.new.update
    end.to output("Enter id:\n0\nWrong id.\n").to_stdout
  end

  it 'should delete comment by id' do
    allow_any_instance_of(Router).to receive(:gets).and_return("2", "q")
    allow_any_instance_of(Resource).to receive(:gets).and_return("POST", "DELETE", "q")
    allow_any_instance_of(CommentsController).to receive(:gets).and_return("Zero comment", "0")
    router = Router.new
    expect(router.init)
    expect do
      CommentsController.new.destroy
    end.to output("Enter id:\n0\nWrong id.\n").to_stdout
  end

end