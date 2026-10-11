package com.onegravity.rteditor.api.media;

/* loaded from: classes7.dex */
public class RTVideoImpl extends RTMediaImpl implements RTVideo {
    private static final long serialVersionUID = 5966458878874846554L;
    private String mVideoPreviewImage;

    public RTVideoImpl(String str) {
        super(str);
    }

    @Override // com.onegravity.rteditor.api.media.RTMediaImpl, com.onegravity.rteditor.api.media.RTMedia
    public int getHeight() {
        return getHeight(this.mVideoPreviewImage);
    }

    @Override // com.onegravity.rteditor.api.media.RTVideo
    public String getVideoPreviewImage() {
        return this.mVideoPreviewImage;
    }

    @Override // com.onegravity.rteditor.api.media.RTMediaImpl, com.onegravity.rteditor.api.media.RTMedia
    public int getWidth() {
        return getWidth(this.mVideoPreviewImage);
    }

    @Override // com.onegravity.rteditor.api.media.RTMediaImpl, com.onegravity.rteditor.api.media.RTMedia
    public void remove() {
        super.remove();
        removeFile(this.mVideoPreviewImage);
    }

    @Override // com.onegravity.rteditor.api.media.RTVideo
    public void setVideoPreviewImage(String str) {
        this.mVideoPreviewImage = str;
    }
}
