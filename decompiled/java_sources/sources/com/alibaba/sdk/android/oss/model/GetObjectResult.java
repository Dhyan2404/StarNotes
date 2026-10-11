package com.alibaba.sdk.android.oss.model;

import com.alibaba.sdk.android.oss.internal.CheckCRC64DownloadInputStream;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class GetObjectResult extends OSSResult {

    /* renamed from: f */
    public ObjectMetadata f13170f = new ObjectMetadata();

    /* renamed from: g */
    public long f13171g;

    /* renamed from: h */
    public InputStream f13172h;

    @Override // com.alibaba.sdk.android.oss.model.OSSResult
    public Long getClientCRC() {
        InputStream inputStream = this.f13172h;
        return (inputStream == null || !(inputStream instanceof CheckCRC64DownloadInputStream)) ? super.getClientCRC() : Long.valueOf(((CheckCRC64DownloadInputStream) inputStream).getClientCRC64());
    }

    public long getContentLength() {
        return this.f13171g;
    }

    public ObjectMetadata getMetadata() {
        return this.f13170f;
    }

    public InputStream getObjectContent() {
        return this.f13172h;
    }

    public void setContentLength(long j) {
        this.f13171g = j;
    }

    public void setMetadata(ObjectMetadata objectMetadata) {
        this.f13170f = objectMetadata;
    }

    public void setObjectContent(InputStream inputStream) {
        this.f13172h = inputStream;
    }
}
