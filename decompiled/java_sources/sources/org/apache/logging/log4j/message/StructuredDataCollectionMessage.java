package org.apache.logging.log4j.message;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.logging.log4j.util.StringBuilderFormattable;

/* loaded from: classes12.dex */
public class StructuredDataCollectionMessage implements StringBuilderFormattable, MessageCollectionMessage<StructuredDataMessage> {
    private static final long serialVersionUID = 5725337076388822924L;
    private final List<StructuredDataMessage> structuredDataMessageList;

    public StructuredDataCollectionMessage(final List<StructuredDataMessage> messages) {
        this.structuredDataMessageList = messages;
    }

    @Override // org.apache.logging.log4j.util.StringBuilderFormattable
    public void formatTo(final StringBuilder buffer) {
        Iterator<StructuredDataMessage> it2 = this.structuredDataMessageList.iterator();
        while (it2.hasNext()) {
            it2.next().formatTo(buffer);
        }
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormat() {
        StringBuilder sb = new StringBuilder();
        for (StructuredDataMessage structuredDataMessage : this.structuredDataMessageList) {
            if (structuredDataMessage.getFormat() != null) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(structuredDataMessage.getFormat());
            }
        }
        return sb.toString();
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormattedMessage() {
        StringBuilder sb = new StringBuilder();
        formatTo(sb);
        return sb.toString();
    }

    @Override // org.apache.logging.log4j.message.Message
    public Object[] getParameters() {
        ArrayList<Object[]> arrayList = new ArrayList();
        Iterator<StructuredDataMessage> it2 = this.structuredDataMessageList.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Object[] parameters = it2.next().getParameters();
            if (parameters != null) {
                arrayList.add(parameters);
                i += parameters.length;
            }
        }
        Object[] objArr = new Object[i];
        int i2 = 0;
        for (Object[] objArr2 : arrayList) {
            int length = objArr2.length;
            int i3 = 0;
            while (i3 < length) {
                objArr[i2] = objArr2[i3];
                i3++;
                i2++;
            }
        }
        return objArr;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Throwable getThrowable() {
        Iterator<StructuredDataMessage> it2 = this.structuredDataMessageList.iterator();
        while (it2.hasNext()) {
            Throwable throwable = it2.next().getThrowable();
            if (throwable != null) {
                return throwable;
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public Iterator<StructuredDataMessage> iterator() {
        return this.structuredDataMessageList.iterator();
    }
}
