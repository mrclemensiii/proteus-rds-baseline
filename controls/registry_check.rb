
describe registry_key('HKEY_LOCAL_MACHINE\\Software\\ECi\\POe_W1a') do
    it { should exist }
    it { should have_property 'FileServer' }
    its('FileServer') { should eq '\\\\ECiProteus.com\\POe-W1a-FS' }
    it { should have_property 'MetadataDB' }
    its('MetadataDB') { should eq '_POe_W1a_METADATA' }
    it { should have_property 'MetadataServer' }
    its('MetadataServer') { should eq 'POe-W1a-SQL1' }
    it { should have_property 'TSPrintPDFWriterLocation' }
    its('TSPrintPDFWriterLocation') { should eq 'C:\\Program Files (x86)\\TerminalWorks\\TSPrint Server\\pdfwriter.exe' } 
end