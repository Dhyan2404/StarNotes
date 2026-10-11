package org.apache.poi.smtp;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes12.dex */
public class SMTPMessage {
    private MIMEHeaders headers = new MIMEHeaders();
    private List<MessageBodyPart> bodyParts = new ArrayList();

    public void addPart(MessageBodyPart messageBodyPart) {
        this.bodyParts.add(messageBodyPart);
    }

    public List<MessageBodyPart> getBodyParts() {
        return this.bodyParts;
    }

    public MIMEHeaders getHeaders() {
        return this.headers;
    }

    public MessageBodyPart getPart(int i) {
        return this.bodyParts.get(i);
    }

    public List<MessageBodyPart> getParts(ContentType contentType) {
        ArrayList arrayList = new ArrayList();
        for (MessageBodyPart messageBodyPart : this.bodyParts) {
            if (messageBodyPart.getHeaders().getContentType() == contentType) {
                arrayList.add(messageBodyPart);
            }
        }
        return arrayList;
    }

    public int partSize() {
        return this.bodyParts.size();
    }

    public void setBodyParts(List<MessageBodyPart> list) {
        this.bodyParts = list;
    }

    public void setHeaders(MIMEHeaders mIMEHeaders) {
        this.headers = mIMEHeaders;
    }

    public String toString() {
        return "SimpleMIMEMessage{headers=" + this.headers + ", bodyParts=" + this.bodyParts + '}';
    }
}
