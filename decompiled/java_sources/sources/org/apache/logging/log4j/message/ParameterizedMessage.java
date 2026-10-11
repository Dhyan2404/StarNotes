package org.apache.logging.log4j.message;

import com.sunia.HTREnginev2.pvk;
import java.util.Arrays;
import org.apache.logging.log4j.util.Constants;
import org.apache.logging.log4j.util.StringBuilderFormattable;
import org.apache.logging.log4j.util.StringBuilders;

/* loaded from: classes12.dex */
public class ParameterizedMessage implements Message, StringBuilderFormattable {
    private static final int DEFAULT_STRING_BUILDER_SIZE = 255;
    public static final String ERROR_MSG_SEPARATOR = ":";
    public static final String ERROR_PREFIX = "[!!!";
    public static final String ERROR_SEPARATOR = "=>";
    public static final String ERROR_SUFFIX = "!!!]";
    private static final int HASHVAL = 31;
    public static final String RECURSION_PREFIX = "[...";
    public static final String RECURSION_SUFFIX = "...]";
    private static final long serialVersionUID = -665975803997290697L;
    private static ThreadLocal<StringBuilder> threadLocalStringBuilder = new ThreadLocal<>();
    private transient Object[] argArray;
    private String formattedMessage;
    private int[] indices;
    private String messagePattern;
    private transient Throwable throwable;
    private int usedCount;

    @Deprecated
    public ParameterizedMessage(final String messagePattern, final String[] arguments, final Throwable throwable) {
        this.argArray = arguments;
        this.throwable = throwable;
        init(messagePattern);
    }

    public static int countArgumentPlaceholders(final String messagePattern) {
        return pvk.m56408i(messagePattern);
    }

    public static String deepToString(final Object o) {
        return pvk.m56412m(o);
    }

    public static String format(final String messagePattern, final Object[] arguments) {
        return pvk.m56413n(messagePattern, arguments);
    }

    private static StringBuilder getThreadLocalStringBuilder() {
        StringBuilder sb = threadLocalStringBuilder.get();
        if (sb == null) {
            sb = new StringBuilder(255);
            threadLocalStringBuilder.set(sb);
        }
        sb.setLength(0);
        return sb;
    }

    public static String identityToString(final Object obj) {
        return pvk.m56422w(obj);
    }

    private void init(final String messagePattern) {
        this.messagePattern = messagePattern;
        int[] iArr = new int[Math.max(1, messagePattern == null ? 0 : messagePattern.length() >> 1)];
        this.indices = iArr;
        int m56409j = pvk.m56409j(messagePattern, iArr);
        initThrowable(this.argArray, m56409j);
        Object[] objArr = this.argArray;
        this.usedCount = Math.min(m56409j, objArr != null ? objArr.length : 0);
    }

    private void initThrowable(final Object[] params, final int usedParams) {
        int length;
        if (params == null || usedParams >= (length = params.length) || this.throwable != null) {
            return;
        }
        Object obj = params[length - 1];
        if (obj instanceof Throwable) {
            this.throwable = (Throwable) obj;
        }
    }

    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        ParameterizedMessage parameterizedMessage = (ParameterizedMessage) o;
        String str = this.messagePattern;
        if (str == null ? parameterizedMessage.messagePattern == null : str.equals(parameterizedMessage.messagePattern)) {
            return Arrays.equals(this.argArray, parameterizedMessage.argArray);
        }
        return false;
    }

    @Override // org.apache.logging.log4j.util.StringBuilderFormattable
    public void formatTo(final StringBuilder buffer) {
        String str = this.formattedMessage;
        if (str != null) {
            buffer.append(str);
            return;
        }
        int[] iArr = this.indices;
        if (iArr[0] < 0) {
            pvk.m56414o(buffer, this.messagePattern, this.argArray, this.usedCount);
        } else {
            pvk.m56415p(buffer, this.messagePattern, this.argArray, this.usedCount, iArr);
        }
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormat() {
        return this.messagePattern;
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormattedMessage() {
        if (this.formattedMessage == null) {
            StringBuilder threadLocalStringBuilder2 = getThreadLocalStringBuilder();
            formatTo(threadLocalStringBuilder2);
            this.formattedMessage = threadLocalStringBuilder2.toString();
            StringBuilders.trimToMaxSize(threadLocalStringBuilder2, Constants.MAX_REUSABLE_MESSAGE_SIZE);
        }
        return this.formattedMessage;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Object[] getParameters() {
        return this.argArray;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Throwable getThrowable() {
        return this.throwable;
    }

    public int hashCode() {
        String str = this.messagePattern;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Object[] objArr = this.argArray;
        return hashCode + (objArr != null ? Arrays.hashCode(objArr) : 0);
    }

    public String toString() {
        return "ParameterizedMessage[messagePattern=" + this.messagePattern + ", stringArgs=" + Arrays.toString(this.argArray) + ", throwable=" + this.throwable + ']';
    }

    public ParameterizedMessage(final String messagePattern, final Object[] arguments, final Throwable throwable) {
        this.argArray = arguments;
        this.throwable = throwable;
        init(messagePattern);
    }

    public ParameterizedMessage(final String messagePattern, final Object... arguments) {
        this.argArray = arguments;
        init(messagePattern);
    }

    public ParameterizedMessage(final String messagePattern, final Object arg) {
        this(messagePattern, arg);
    }

    public ParameterizedMessage(final String messagePattern, final Object arg0, final Object arg1) {
        this(messagePattern, arg0, arg1);
    }
}
