guard :shell do
  watch('test.sh') { `sh ./test.sh` }
  watch(%r{test/.+\.sh}) { |m| `sh ./#{m.join}` }
end
