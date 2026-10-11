package com.onegravity.rteditor.api.media;

/* loaded from: classes7.dex */
public class RTAudioImpl extends RTMediaImpl implements RTAudio {
    private static final long serialVersionUID = -1213141231761752521L;
    private String mAudioPreviewImage;

    public RTAudioImpl(String str) {
        super(str);
    }

    @Override // com.onegravity.rteditor.api.media.RTAudio
    public String getAudioPreviewImage() {
        return this.mAudioPreviewImage;
    }

    @Override // com.onegravity.rteditor.api.media.RTMediaImpl, com.onegravity.rteditor.api.media.RTMedia
    public int getHeight() {
        return getHeight(this.mAudioPreviewImage);
    }

    @Override // com.onegravity.rteditor.api.media.RTMediaImpl, com.onegravity.rteditor.api.media.RTMedia
    public int getWidth() {
        return getWidth(this.mAudioPreviewImage);
    }

    @Override // com.onegravity.rteditor.api.media.RTMediaImpl, com.onegravity.rteditor.api.media.RTMedia
    public void remove() {
        super.remove();
        removeFile(this.mAudioPreviewImage);
    }

    @Override // com.onegravity.rteditor.api.media.RTAudio
    public void setAudioPreviewImage(String str) {
        this.mAudioPreviewImage = str;
    }
}
