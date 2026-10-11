package org.apache.logging.log4j.message;

import com.sunia.HTREnginev2.yud;
import org.apache.logging.log4j.util.Constants;
import org.apache.logging.log4j.util.PerformanceSensitive;

@PerformanceSensitive({"allocation"})
/* loaded from: classes12.dex */
public class ReusableSimpleMessage implements ReusableMessage, CharSequence, ParameterVisitable, yud {
    private static final long serialVersionUID = -9199974506498249809L;
    private CharSequence charSequence;

    @Override // java.lang.CharSequence
    public char charAt(final int index) {
        return this.charSequence.charAt(index);
    }

    @Override // com.sunia.HTREnginev2.yud
    public void clear() {
        this.charSequence = null;
    }

    @Override // org.apache.logging.log4j.message.ParameterVisitable
    public <S> void forEachParameter(final ParameterConsumer<S> action, final S state) {
    }

    @Override // org.apache.logging.log4j.util.StringBuilderFormattable
    public void formatTo(final StringBuilder buffer) {
        buffer.append(this.charSequence);
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormat() {
        CharSequence charSequence = this.charSequence;
        if (charSequence instanceof String) {
            return (String) charSequence;
        }
        return null;
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormattedMessage() {
        return String.valueOf(this.charSequence);
    }

    @Override // org.apache.logging.log4j.message.ReusableMessage
    public short getParameterCount() {
        return (short) 0;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Object[] getParameters() {
        return Constants.EMPTY_OBJECT_ARRAY;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Throwable getThrowable() {
        return null;
    }

    @Override // java.lang.CharSequence
    public int length() {
        CharSequence charSequence = this.charSequence;
        if (charSequence == null) {
            return 0;
        }
        return charSequence.length();
    }

    @Override // org.apache.logging.log4j.message.ReusableMessage
    public Message memento() {
        return new SimpleMessage(this.charSequence);
    }

    public void set(final String message) {
        this.charSequence = message;
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(final int start, final int end) {
        return this.charSequence.subSequence(start, end);
    }

    @Override // org.apache.logging.log4j.message.ReusableMessage
    public Object[] swapParameters(final Object[] emptyReplacement) {
        return emptyReplacement;
    }

    public void set(final CharSequence charSequence) {
        this.charSequence = charSequence;
    }
}
