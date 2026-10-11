package org.apache.poi.smtp;

/* loaded from: classes12.dex */
public class MessageBodyPart {
    private String content;
    private MIMEHeaders headers = new MIMEHeaders();
    private int size;

    public String getContent() {
        return this.content;
    }

    public MIMEHeaders getHeaders() {
        return this.headers;
    }

    public int getSize() {
        return this.size;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setHeaders(MIMEHeaders mIMEHeaders) {
        this.headers = mIMEHeaders;
    }

    public void setSize(int i) {
        this.size = i;
    }

    public String toString() {
        return "MessageBodyPart{headers=" + this.headers + ", content=" + this.content + ", size=" + this.size + '}';
    }
}
