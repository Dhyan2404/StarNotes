package com.alibaba.sdk.android.oss.internal;

import com.sunia.HTREnginev2.i0i;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import okhttp3.Response;

/* loaded from: classes3.dex */
public class ResponseMessage extends i0i {

    /* renamed from: e */
    public Response f13040e;

    /* renamed from: f */
    public RequestMessage f13041f;

    /* renamed from: g */
    public int f13042g;

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ void addHeader(String str, String str2) {
        super.addHeader(str, str2);
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ void close() throws IOException {
        super.close();
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ InputStream getContent() {
        return super.getContent();
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ long getContentLength() {
        return super.getContentLength();
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ Map getHeaders() {
        return super.getHeaders();
    }

    public RequestMessage getRequest() {
        return this.f13041f;
    }

    public Response getResponse() {
        return this.f13040e;
    }

    public int getStatusCode() {
        return this.f13042g;
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ String getStringBody() {
        return super.getStringBody();
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ void setContent(InputStream inputStream) {
        super.setContent(inputStream);
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ void setContentLength(long j) {
        super.setContentLength(j);
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ void setHeaders(Map map) {
        super.setHeaders(map);
    }

    public void setRequest(RequestMessage requestMessage) {
        this.f13041f = requestMessage;
    }

    public void setResponse(Response response) {
        this.f13040e = response;
    }

    public void setStatusCode(int i) {
        this.f13042g = i;
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ void setStringBody(String str) {
        super.setStringBody(str);
    }
}
