class UploadController < ApplicationController
  def index
     
  end
  def uploadFile
    name = DataFile.save(params[:upload])
    render :text => "<script>el = top.document.getElementById('uploadedImg');el.src='/data/"+name+"';el.style.display='';top.uploadDone();</script>"
  end

end
