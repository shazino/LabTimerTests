default: clean ios

clean:
	xcodebuild clean
	rm -rf output

test:
	xcodebuild -workspace LabTimerTests.xcworkspace -scheme LabTimerTests test

ci: test

