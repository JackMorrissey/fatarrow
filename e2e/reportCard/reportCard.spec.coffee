ReportCardPage = require './ReportCardPage'

describe 'ReportCard Page', ->
	beforeEach ->
		@page = new ReportCardPage()

		@page.visitPage()

	it 'should get the username', ->
		@page.fillUsername 'CaryLandholt'
		@page.search()
		expect(@page.getFullName()).toEqual('Cary Landholt')

	it 'should get the username', ->
		@page.fillUsername 'jackmorrissey'
		@page.search()
		expect(@page.getFullName()).toEqual('Jack Morrissey')

	it 'should get the username', ->
		@page.fillUsername 'nmehta6'
		@page.search()
		expect(@page.getFullName()).toEqual('Nachiket Mehta')