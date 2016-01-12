describe "Jobs API" do
  context "test responses" do
    it 'sends a specific job when job title parameter given' do
      job_name = "Testjob"
      FactoryGirl.create(:job, name: job_name)
      get "/api/jobs?job_name=" + job_name
      json = JSON.parse(response.body)
      expect(response).to be_success
      expect(json['job']['name']).to eq(job_name)
    end

    it 'sends a list of ten jobs when no parameter given' do
      FactoryGirl.create_list(:job, 10)
      get '/api/jobs'
      json = JSON.parse(response.body)
      expect(response).to be_success
      expect(json['jobs'].length).to eq(10)
    end
  end

  context "test salary calculations" do
    before :each do
      @test_job = FactoryGirl.create(:job)
      job_name = @test_job.name
      FactoryGirl.create_list(:employee, 5, job: @test_job)
      get "/api/jobs?job_name=" + job_name
      @json = JSON.parse(response.body)
      expect(response).to be_success
    end
    it 'responds with average salary for a job' do
      expect(@json['job']['average_salary']).to eq(@test_job.average_salary)
    end

    it 'responds with maximum salary for a job' do
      expect(@json['job']['max_salary']).to eq(@test_job.max_salary)
    end

    it 'responds with minimum salary for a job' do
      expect(@json['job']['min_salary']).to eq(@test_job.min_salary)
    end
  end
end
