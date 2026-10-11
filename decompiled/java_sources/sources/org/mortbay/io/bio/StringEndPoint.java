package org.mortbay.io.bio;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes13.dex */
public class StringEndPoint extends StreamEndPoint {

    /* renamed from: g */
    public String f114482g;

    /* renamed from: h */
    public ByteArrayInputStream f114483h;

    /* renamed from: i */
    public ByteArrayOutputStream f114484i;

    public StringEndPoint() {
        super(null, null);
        this.f114482g = "UTF-8";
        this.f114483h = new ByteArrayInputStream(new byte[0]);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f114484i = byteArrayOutputStream;
        this.f114480e = this.f114483h;
        this.f114481f = byteArrayOutputStream;
    }

    public String getOutput() {
        try {
            String str = new String(this.f114484i.toByteArray(), this.f114482g);
            this.f114484i.reset();
            return str;
        } catch (Exception e) {
            e.printStackTrace();
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.f114482g);
            stringBuffer.append(": ");
            stringBuffer.append(e.toString());
            throw new IllegalStateException(stringBuffer.toString());
        }
    }

    public boolean hasMore() {
        return this.f114483h.available() > 0;
    }

    public void setInput(String str) {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes(this.f114482g));
            this.f114483h = byteArrayInputStream;
            this.f114480e = byteArrayInputStream;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.f114484i = byteArrayOutputStream;
            this.f114481f = byteArrayOutputStream;
        } catch (Exception e) {
            throw new IllegalStateException(e.toString());
        }
    }

    public StringEndPoint(String str) throws IOException {
        this();
        if (str != null) {
            this.f114482g = str;
        }
    }
}
