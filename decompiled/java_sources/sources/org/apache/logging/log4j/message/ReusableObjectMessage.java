package org.apache.logging.log4j.message;

import com.sunia.HTREnginev2.yud;
import org.apache.logging.log4j.util.PerformanceSensitive;
import org.apache.logging.log4j.util.StringBuilders;

@PerformanceSensitive({"allocation"})
/* loaded from: classes12.dex */
public class ReusableObjectMessage implements ReusableMessage, ParameterVisitable, yud {
    private static final long serialVersionUID = 6922476812535519960L;
    private transient Object obj;

    @Override // com.sunia.HTREnginev2.yud
    public void clear() {
        this.obj = null;
    }

    @Override // org.apache.logging.log4j.message.ParameterVisitable
    public <S> void forEachParameter(final ParameterConsumer<S> action, final S state) {
        action.accept(this.obj, 0, state);
    }

    @Override // org.apache.logging.log4j.util.StringBuilderFormattable
    public void formatTo(final StringBuilder buffer) {
        StringBuilders.appendValue(buffer, this.obj);
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormat() {
        Object obj = this.obj;
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormattedMessage() {
        return String.valueOf(this.obj);
    }

    public Object getParameter() {
        return this.obj;
    }

    @Override // org.apache.logging.log4j.message.ReusableMessage
    public short getParameterCount() {
        return (short) 1;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Object[] getParameters() {
        return new Object[]{this.obj};
    }

    @Override // org.apache.logging.log4j.message.Message
    public Throwable getThrowable() {
        Object obj = this.obj;
        if (obj instanceof Throwable) {
            return (Throwable) obj;
        }
        return null;
    }

    @Override // org.apache.logging.log4j.message.ReusableMessage
    public Message memento() {
        return new ObjectMessage(this.obj);
    }

    public void set(final Object object) {
        this.obj = object;
    }

    @Override // org.apache.logging.log4j.message.ReusableMessage
    public Object[] swapParameters(final Object[] emptyReplacement) {
        if (emptyReplacement.length != 0) {
            emptyReplacement[0] = this.obj;
            return emptyReplacement;
        }
        Object[] objArr = new Object[10];
        objArr[0] = this.obj;
        return objArr;
    }

    public String toString() {
        return getFormattedMessage();
    }
}
