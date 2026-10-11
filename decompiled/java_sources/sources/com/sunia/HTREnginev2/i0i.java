package com.sunia.HTREnginev2;

import com.alibaba.sdk.android.oss.common.utils.CaseInsensitiveHashMap;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class i0i {

    /* renamed from: a */
    public Map<String, String> f72751a = new CaseInsensitiveHashMap();

    /* renamed from: b */
    public InputStream f72752b;

    /* renamed from: c */
    public long f72753c;

    /* renamed from: d */
    public String f72754d;

    public void addHeader(String str, String str2) {
        this.f72751a.put(str, str2);
    }

    public void close() throws IOException {
        InputStream inputStream = this.f72752b;
        if (inputStream != null) {
            inputStream.close();
            this.f72752b = null;
        }
    }

    public InputStream getContent() {
        return this.f72752b;
    }

    public long getContentLength() {
        return this.f72753c;
    }

    public Map<String, String> getHeaders() {
        return this.f72751a;
    }

    public String getStringBody() {
        return this.f72754d;
    }

    public void setContent(InputStream inputStream) {
        this.f72752b = inputStream;
    }

    public void setContentLength(long j) {
        this.f72753c = j;
    }

    public void setHeaders(Map<String, String> map) {
        if (this.f72751a == null) {
            this.f72751a = new CaseInsensitiveHashMap();
        }
        Map<String, String> map2 = this.f72751a;
        if (map2 != null && map2.size() > 0) {
            this.f72751a.clear();
        }
        this.f72751a.putAll(map);
    }

    public void setStringBody(String str) {
        this.f72754d = str;
    }
}
