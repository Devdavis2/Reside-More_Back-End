require 'test_helper'

class ContractorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contractor = contractors(:one)
  end

  test "should get index" do
    get contractors_url, as: :json
    assert_response :success
  end

  test "should create contractor" do
    assert_difference('Contractor.count') do
      post contractors_url, params: { contractor: { bankruptcy: @contractor.bankruptcy, bbb_coc: @contractor.bbb_coc, certificates_licenses: @contractor.certificates_licenses, city: @contractor.city, clean: @contractor.clean, communication: @contractor.communication, company: @contractor.company, contractor_license_number: @contractor.contractor_license_number, coverage: @contractor.coverage, electrician: @contractor.electrician, email: @contractor.email, employees: @contractor.employees, experience: @contractor.experience, first_name: @contractor.first_name, insurance: @contractor.insurance, insurance_type: @contractor.insurance_type, job_address: @contractor.job_address, job_bid: @contractor.job_bid, job_capacity: @contractor.job_capacity, last_name: @contractor.last_name, lead_source: @contractor.lead_source, licensed_insured: @contractor.licensed_insured, lien_waiver: @contractor.lien_waiver, management_experience: @contractor.management_experience, materials_labor: @contractor.materials_labor, past_projects: @contractor.past_projects, phone: @contractor.phone, plumber: @contractor.plumber, projects: @contractor.projects, recent_jobs: @contractor.recent_jobs, references: @contractor.references, sow: @contractor.sow, specilization: @contractor.specilization, state: @contractor.state, street_address: @contractor.street_address, sub_contractor: @contractor.sub_contractor, warranties: @contractor.warranties, warranties_length: @contractor.warranties_length, zip: @contractor.zip } }, as: :json
    end

    assert_response 201
  end

  test "should show contractor" do
    get contractor_url(@contractor), as: :json
    assert_response :success
  end

  test "should update contractor" do
    patch contractor_url(@contractor), params: { contractor: { bankruptcy: @contractor.bankruptcy, bbb_coc: @contractor.bbb_coc, certificates_licenses: @contractor.certificates_licenses, city: @contractor.city, clean: @contractor.clean, communication: @contractor.communication, company: @contractor.company, contractor_license_number: @contractor.contractor_license_number, coverage: @contractor.coverage, electrician: @contractor.electrician, email: @contractor.email, employees: @contractor.employees, experience: @contractor.experience, first_name: @contractor.first_name, insurance: @contractor.insurance, insurance_type: @contractor.insurance_type, job_address: @contractor.job_address, job_bid: @contractor.job_bid, job_capacity: @contractor.job_capacity, last_name: @contractor.last_name, lead_source: @contractor.lead_source, licensed_insured: @contractor.licensed_insured, lien_waiver: @contractor.lien_waiver, management_experience: @contractor.management_experience, materials_labor: @contractor.materials_labor, past_projects: @contractor.past_projects, phone: @contractor.phone, plumber: @contractor.plumber, projects: @contractor.projects, recent_jobs: @contractor.recent_jobs, references: @contractor.references, sow: @contractor.sow, specilization: @contractor.specilization, state: @contractor.state, street_address: @contractor.street_address, sub_contractor: @contractor.sub_contractor, warranties: @contractor.warranties, warranties_length: @contractor.warranties_length, zip: @contractor.zip } }, as: :json
    assert_response 200
  end

  test "should destroy contractor" do
    assert_difference('Contractor.count', -1) do
      delete contractor_url(@contractor), as: :json
    end

    assert_response 204
  end
end
