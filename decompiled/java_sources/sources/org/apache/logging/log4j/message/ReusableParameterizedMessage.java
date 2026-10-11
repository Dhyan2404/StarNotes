package org.apache.logging.log4j.message;

import com.sunia.HTREnginev2.pvk;
import com.sunia.HTREnginev2.yud;
import java.util.Arrays;
import org.apache.logging.log4j.util.Constants;
import org.apache.logging.log4j.util.PerformanceSensitive;
import org.apache.logging.log4j.util.StringBuilders;

@PerformanceSensitive({"allocation"})
/* loaded from: classes12.dex */
public class ReusableParameterizedMessage implements ReusableMessage, ParameterVisitable, yud {
    private static final int MAX_PARMS = 10;
    private static final int MIN_BUILDER_SIZE = 512;
    private static final long serialVersionUID = 7800075879295123856L;
    private int argCount;
    private transient ThreadLocal<StringBuilder> buffer;
    private String messagePattern;
    private transient Throwable throwable;
    private int usedCount;
    private transient Object[] varargs;
    private final int[] indices = new int[256];
    private transient Object[] params = new Object[10];
    transient boolean reserved = false;

    private static int count(final String messagePattern, final int[] indices) {
        try {
            return pvk.m56409j(messagePattern, indices);
        } catch (Exception unused) {
            return pvk.m56408i(messagePattern);
        }
    }

    private StringBuilder getBuffer() {
        if (this.buffer == null) {
            this.buffer = new ThreadLocal<>();
        }
        StringBuilder sb = this.buffer.get();
        if (sb == null) {
            String str = this.messagePattern;
            StringBuilder sb2 = new StringBuilder(Math.max(512, (str == null ? 0 : str.length()) * 2));
            this.buffer.set(sb2);
            sb = sb2;
        }
        sb.setLength(0);
        return sb;
    }

    private Object[] getParams() {
        Object[] objArr = this.varargs;
        return objArr == null ? this.params : objArr;
    }

    private Object[] getTrimmedParams() {
        Object[] objArr = this.varargs;
        return objArr == null ? Arrays.copyOf(this.params, this.argCount) : objArr;
    }

    private void init(final String messagePattern, final int argCount, final Object[] paramArray) {
        this.varargs = null;
        this.messagePattern = messagePattern;
        this.argCount = argCount;
        int count = count(messagePattern, this.indices);
        initThrowable(paramArray, argCount, count);
        this.usedCount = Math.min(count, argCount);
    }

    private void initThrowable(final Object[] params, final int argCount, final int usedParams) {
        if (usedParams < argCount) {
            Object obj = params[argCount - 1];
            if (obj instanceof Throwable) {
                this.throwable = (Throwable) obj;
                return;
            }
        }
        this.throwable = null;
    }

    @Override // com.sunia.HTREnginev2.yud
    public void clear() {
        this.reserved = false;
        this.varargs = null;
        this.messagePattern = null;
        this.throwable = null;
    }

    @Override // org.apache.logging.log4j.message.ParameterVisitable
    public <S> void forEachParameter(final ParameterConsumer<S> action, final S state) {
        Object[] params = getParams();
        for (short s = 0; s < this.argCount; s = (short) (s + 1)) {
            action.accept(params[s], s, state);
        }
    }

    @Override // org.apache.logging.log4j.util.StringBuilderFormattable
    public void formatTo(final StringBuilder builder) {
        if (this.indices[0] < 0) {
            pvk.m56414o(builder, this.messagePattern, getParams(), this.argCount);
        } else {
            pvk.m56415p(builder, this.messagePattern, getParams(), this.usedCount, this.indices);
        }
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormat() {
        return this.messagePattern;
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormattedMessage() {
        StringBuilder buffer = getBuffer();
        formatTo(buffer);
        String sb = buffer.toString();
        StringBuilders.trimToMaxSize(buffer, Constants.MAX_REUSABLE_MESSAGE_SIZE);
        return sb;
    }

    @Override // org.apache.logging.log4j.message.ReusableMessage
    public short getParameterCount() {
        return (short) this.argCount;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Object[] getParameters() {
        return getTrimmedParams();
    }

    @Override // org.apache.logging.log4j.message.Message
    public Throwable getThrowable() {
        return this.throwable;
    }

    @Override // org.apache.logging.log4j.message.ReusableMessage
    public Message memento() {
        return new ParameterizedMessage(this.messagePattern, getTrimmedParams());
    }

    public ReusableParameterizedMessage reserve() {
        this.reserved = true;
        return this;
    }

    public ReusableParameterizedMessage set(final String messagePattern, final Object... arguments) {
        init(messagePattern, arguments == null ? 0 : arguments.length, arguments);
        this.varargs = arguments;
        return this;
    }

    @Override // org.apache.logging.log4j.message.ReusableMessage
    public Object[] swapParameters(final Object[] emptyReplacement) {
        Object[] objArr = this.varargs;
        if (objArr != null) {
            int i = this.argCount;
            if (i > emptyReplacement.length) {
                emptyReplacement = new Object[i];
            }
            System.arraycopy(objArr, 0, emptyReplacement, 0, i);
            return emptyReplacement;
        }
        Object[] objArr2 = this.params;
        if (emptyReplacement.length >= 10) {
            this.params = emptyReplacement;
        } else {
            int i2 = this.argCount;
            if (i2 <= emptyReplacement.length) {
                System.arraycopy(objArr2, 0, emptyReplacement, 0, i2);
                for (int i3 = 0; i3 < this.argCount; i3++) {
                    this.params[i3] = null;
                }
                return emptyReplacement;
            }
            this.params = new Object[10];
        }
        return objArr2;
    }

    public String toString() {
        return "ReusableParameterizedMessage[messagePattern=" + getFormat() + ", stringArgs=" + Arrays.toString(getParameters()) + ", throwable=" + getThrowable() + ']';
    }

    public ReusableParameterizedMessage set(final String messagePattern, final Object p0) {
        Object[] objArr = this.params;
        objArr[0] = p0;
        init(messagePattern, 1, objArr);
        return this;
    }

    public ReusableParameterizedMessage set(final String messagePattern, final Object p0, final Object p1) {
        Object[] objArr = this.params;
        objArr[0] = p0;
        objArr[1] = p1;
        init(messagePattern, 2, objArr);
        return this;
    }

    public ReusableParameterizedMessage set(final String messagePattern, final Object p0, final Object p1, final Object p2) {
        Object[] objArr = this.params;
        objArr[0] = p0;
        objArr[1] = p1;
        objArr[2] = p2;
        init(messagePattern, 3, objArr);
        return this;
    }

    public ReusableParameterizedMessage set(final String messagePattern, final Object p0, final Object p1, final Object p2, final Object p3) {
        Object[] objArr = this.params;
        objArr[0] = p0;
        objArr[1] = p1;
        objArr[2] = p2;
        objArr[3] = p3;
        init(messagePattern, 4, objArr);
        return this;
    }

    public ReusableParameterizedMessage set(final String messagePattern, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4) {
        Object[] objArr = this.params;
        objArr[0] = p0;
        objArr[1] = p1;
        objArr[2] = p2;
        objArr[3] = p3;
        objArr[4] = p4;
        init(messagePattern, 5, objArr);
        return this;
    }

    public ReusableParameterizedMessage set(final String messagePattern, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5) {
        Object[] objArr = this.params;
        objArr[0] = p0;
        objArr[1] = p1;
        objArr[2] = p2;
        objArr[3] = p3;
        objArr[4] = p4;
        objArr[5] = p5;
        init(messagePattern, 6, objArr);
        return this;
    }

    public ReusableParameterizedMessage set(final String messagePattern, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6) {
        Object[] objArr = this.params;
        objArr[0] = p0;
        objArr[1] = p1;
        objArr[2] = p2;
        objArr[3] = p3;
        objArr[4] = p4;
        objArr[5] = p5;
        objArr[6] = p6;
        init(messagePattern, 7, objArr);
        return this;
    }

    public ReusableParameterizedMessage set(final String messagePattern, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7) {
        Object[] objArr = this.params;
        objArr[0] = p0;
        objArr[1] = p1;
        objArr[2] = p2;
        objArr[3] = p3;
        objArr[4] = p4;
        objArr[5] = p5;
        objArr[6] = p6;
        objArr[7] = p7;
        init(messagePattern, 8, objArr);
        return this;
    }

    public ReusableParameterizedMessage set(final String messagePattern, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8) {
        Object[] objArr = this.params;
        objArr[0] = p0;
        objArr[1] = p1;
        objArr[2] = p2;
        objArr[3] = p3;
        objArr[4] = p4;
        objArr[5] = p5;
        objArr[6] = p6;
        objArr[7] = p7;
        objArr[8] = p8;
        init(messagePattern, 9, objArr);
        return this;
    }

    public ReusableParameterizedMessage set(final String messagePattern, final Object p0, final Object p1, final Object p2, final Object p3, final Object p4, final Object p5, final Object p6, final Object p7, final Object p8, final Object p9) {
        Object[] objArr = this.params;
        objArr[0] = p0;
        objArr[1] = p1;
        objArr[2] = p2;
        objArr[3] = p3;
        objArr[4] = p4;
        objArr[5] = p5;
        objArr[6] = p6;
        objArr[7] = p7;
        objArr[8] = p8;
        objArr[9] = p9;
        init(messagePattern, 10, objArr);
        return this;
    }
}
