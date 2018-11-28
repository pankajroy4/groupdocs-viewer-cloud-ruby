#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_file.rb">
#    Copyright (c) 2003-2018 Aspose Pty Ltd
# </copyright>
# <summary>
#   Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
# </summary>
# --------------------------------------------------------------------------------------------------------------------
#

module GroupDocsViewerCloud
    class TestFile
        attr_accessor :file_name;
        attr_accessor :folder;
        attr_accessor :password;
        attr_accessor :url;
        attr_accessor :attachment_name;
        attr_accessor :attachment_password;

        def self.with_attachment_msg
            f = TestFile.new
            f.file_name = "with-attachment.msg"
            f.folder = "email\\msg"
            f.attachment_name = "password-protected.docx"
            f.attachment_password = "password"

            f
        end

        def self.from_url_one_page_docx 
            f = TestFile.new
            f.file_name = "one-page.docx"
            f.url = "https://www.dropbox.com/s/j260ve4f90h1p41/one-page.docx?dl=1"

            f
        end

        def self.from_url_with_notes_pptx
            f = TestFile.new
            f.file_name = "with-notes.pptx"
            f.url = "https://www.dropbox.com/s/r2eioe2atushqcf/with-notes.pptx?dl=1"
                
            f
        end

        def self.uses_custom_font_pptx
            f = TestFile.new
            f.file_name = "uses-custom-font.pptx"
            f.folder = "slides\\pptx"

            f
        end

        def self.one_page_docx
            f = TestFile.new
            f.file_name = "one-page.docx"
            f.folder = "words\\docx"

            f
        end

        def self.four_pages_docx
            f = TestFile.new
            f.file_name = "four-pages.docx"
            f.folder = "words\\docx"

            f
        end

        def self.password_protected_docx
            f = TestFile.new
            f.file_name = "password-protected.docx"
            f.folder = "words\\docx"
            f.password = "password"

            f
        end

        def self.with_attachment_pdf
            f = TestFile.new
            f.file_name = "with-attachment.pdf"
            f.folder = "pdf\\pdf"
            f.attachment_name = "password-protected.docx"
            f.attachment_password = "password"

            f
        end

        def self.two_hidden_pages_vsd
            f = TestFile.new
            f.file_name = "two-hidden-pages.vsd"
            f.folder = "diagram\\vsd"

            f
        end

        def self.corrupted_pdf
            f = TestFile.new
            f.file_name = "corrupted.pdf"
            f.folder = "pdf\\pdf"

            f
        end

        def self.project_mpp
            f = TestFile.new
            f.file_name = "sample.mpp"
            f.folder = "project\\mpp"
    
            f
        end

        def self.outlook_pst
            f = TestFile.new
            f.file_name = "sample.pst"
            f.folder = "email\\outlook"
    
            f
        end

        def self.image_cgm
            f = TestFile.new
            f.file_name = "nasa.cgm"
            f.folder = "image"
    
            f
        end

        def self.print_pcl
            f = TestFile.new
            f.file_name = "print.pcl"
            f.folder = "print"
    
            f
        end

        def self.print_ps
            f = TestFile.new
            f.file_name = "sample.ps"
            f.folder = "print"
    
            f
        end

        def self.supported
            [
                self.with_attachment_msg,
                self.uses_custom_font_pptx,
                self.one_page_docx,
                self.with_attachment_pdf,
                self.two_hidden_pages_vsd,
                self.project_mpp,
                self.outlook_pst,
                self.image_cgm,
                self.print_pcl,
                self.print_ps
            ]        
        end
    end
end