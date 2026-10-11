package org.apache.logging.log4j.message;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.apache.logging.log4j.util.StringBuilderFormattable;

/* loaded from: classes12.dex */
public class SimpleMessage implements Message, StringBuilderFormattable, CharSequence {
    private static final long serialVersionUID = -8398002534962715992L;
    private transient CharSequence charSequence;
    private String message;

    public SimpleMessage() {
        this((String) null);
    }

    private void readObject(final ObjectInputStream in) throws IOException, ClassNotFoundException {
        in.defaultReadObject();
        this.charSequence = this.message;
    }

    private void writeObject(final ObjectOutputStream out) throws IOException {
        getFormattedMessage();
        out.defaultWriteObject();
    }

    @Override // java.lang.CharSequence
    public char charAt(final int index) {
        return this.charSequence.charAt(index);
    }

    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        SimpleMessage simpleMessage = (SimpleMessage) o;
        CharSequence charSequence = this.charSequence;
        if (charSequence != null) {
            if (charSequence.equals(simpleMessage.charSequence)) {
                return true;
            }
        } else if (simpleMessage.charSequence == null) {
            return true;
        }
        return false;
    }

    @Override // org.apache.logging.log4j.util.StringBuilderFormattable
    public void formatTo(final StringBuilder buffer) {
        CharSequence charSequence = this.message;
        if (charSequence == null) {
            charSequence = this.charSequence;
        }
        buffer.append(charSequence);
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormat() {
        return this.message;
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormattedMessage() {
        String str = this.message;
        if (str == null) {
            str = String.valueOf(this.charSequence);
        }
        this.message = str;
        return str;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Object[] getParameters() {
        return null;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Throwable getThrowable() {
        return null;
    }

    public int hashCode() {
        CharSequence charSequence = this.charSequence;
        if (charSequence != null) {
            return charSequence.hashCode();
        }
        return 0;
    }

    @Override // java.lang.CharSequence
    public int length() {
        CharSequence charSequence = this.charSequence;
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(final int start, final int end) {
        return this.charSequence.subSequence(start, end);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return getFormattedMessage();
    }

    public SimpleMessage(final String message) {
        this.message = message;
        this.charSequence = message;
    }

    public SimpleMessage(final CharSequence charSequence) {
        this.charSequence = charSequence;
    }
}
