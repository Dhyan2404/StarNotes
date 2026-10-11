package org.apache.logging.log4j.status;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.message.Message;

/* loaded from: classes12.dex */
public class StatusData implements Serializable {
    private static final long serialVersionUID = -4341916115118014017L;
    private final StackTraceElement caller;
    private final Level level;
    private final Message msg;
    private String threadName;
    private final Throwable throwable;
    private final long timestamp = System.currentTimeMillis();

    public StatusData(final StackTraceElement caller, final Level level, final Message msg, final Throwable t, final String threadName) {
        this.caller = caller;
        this.level = level;
        this.msg = msg;
        this.throwable = t;
        this.threadName = threadName;
    }

    public String getFormattedStatus() {
        StringBuilder sb = new StringBuilder();
        sb.append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss,SSS").format(new Date(this.timestamp)));
        sb.append(' ');
        sb.append(getThreadName());
        sb.append(' ');
        sb.append(this.level.toString());
        sb.append(' ');
        sb.append(this.msg.getFormattedMessage());
        Object[] parameters = this.msg.getParameters();
        Throwable th = this.throwable;
        if (th == null && parameters != null && (parameters[parameters.length - 1] instanceof Throwable)) {
            th = (Throwable) parameters[parameters.length - 1];
        }
        if (th != null) {
            sb.append(' ');
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            th.printStackTrace(new PrintStream(byteArrayOutputStream));
            sb.append(byteArrayOutputStream.toString());
        }
        return sb.toString();
    }

    public Level getLevel() {
        return this.level;
    }

    public Message getMessage() {
        return this.msg;
    }

    public StackTraceElement getStackTraceElement() {
        return this.caller;
    }

    public String getThreadName() {
        if (this.threadName == null) {
            this.threadName = Thread.currentThread().getName();
        }
        return this.threadName;
    }

    public Throwable getThrowable() {
        return this.throwable;
    }

    public long getTimestamp() {
        return this.timestamp;
    }
}
