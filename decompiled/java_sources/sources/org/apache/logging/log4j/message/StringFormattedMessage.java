package org.apache.logging.log4j.message;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.IllegalFormatException;
import java.util.Locale;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.status.StatusLogger;

/* loaded from: classes12.dex */
public class StringFormattedMessage implements Message {
    private static final int HASHVAL = 31;
    private static final Logger LOGGER = StatusLogger.getLogger();
    private static final long serialVersionUID = -665975803997290697L;
    private transient Object[] argArray;
    private transient String formattedMessage;
    private final Locale locale;
    private String messagePattern;
    private String[] stringArgs;
    private transient Throwable throwable;

    public StringFormattedMessage(final Locale locale, final String messagePattern, final Object... arguments) {
        this.locale = locale;
        this.messagePattern = messagePattern;
        this.argArray = arguments;
        if (arguments == null || arguments.length <= 0 || !(arguments[arguments.length - 1] instanceof Throwable)) {
            return;
        }
        this.throwable = (Throwable) arguments[arguments.length - 1];
    }

    private void readObject(final ObjectInputStream in) throws IOException, ClassNotFoundException {
        in.defaultReadObject();
        this.formattedMessage = in.readUTF();
        this.messagePattern = in.readUTF();
        int readInt = in.readInt();
        this.stringArgs = new String[readInt];
        for (int i = 0; i < readInt; i++) {
            this.stringArgs[i] = in.readUTF();
        }
    }

    private void writeObject(final ObjectOutputStream out) throws IOException {
        out.defaultWriteObject();
        getFormattedMessage();
        out.writeUTF(this.formattedMessage);
        out.writeUTF(this.messagePattern);
        out.writeInt(this.argArray.length);
        Object[] objArr = this.argArray;
        this.stringArgs = new String[objArr.length];
        int i = 0;
        for (Object obj : objArr) {
            String valueOf = String.valueOf(obj);
            this.stringArgs[i] = valueOf;
            out.writeUTF(valueOf);
            i++;
        }
    }

    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        StringFormattedMessage stringFormattedMessage = (StringFormattedMessage) o;
        String str = this.messagePattern;
        if (str == null ? stringFormattedMessage.messagePattern == null : str.equals(stringFormattedMessage.messagePattern)) {
            return Arrays.equals(this.stringArgs, stringFormattedMessage.stringArgs);
        }
        return false;
    }

    public String formatMessage(final String msgPattern, final Object... args) {
        try {
            return String.format(this.locale, msgPattern, args);
        } catch (IllegalFormatException e) {
            LOGGER.error("Unable to format msg: " + msgPattern, (Throwable) e);
            return msgPattern;
        }
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormat() {
        return this.messagePattern;
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormattedMessage() {
        if (this.formattedMessage == null) {
            this.formattedMessage = formatMessage(this.messagePattern, this.argArray);
        }
        return this.formattedMessage;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Object[] getParameters() {
        Object[] objArr = this.argArray;
        return objArr != null ? objArr : this.stringArgs;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Throwable getThrowable() {
        return this.throwable;
    }

    public int hashCode() {
        String str = this.messagePattern;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String[] strArr = this.stringArgs;
        return hashCode + (strArr != null ? Arrays.hashCode(strArr) : 0);
    }

    public String toString() {
        return getFormattedMessage();
    }

    public StringFormattedMessage(final String messagePattern, final Object... arguments) {
        this(Locale.getDefault(Locale.Category.FORMAT), messagePattern, arguments);
    }
}
