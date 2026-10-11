package org.apache.logging.log4j.message;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.text.MessageFormat;
import java.util.Arrays;
import java.util.IllegalFormatException;
import java.util.Locale;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.status.StatusLogger;

/* loaded from: classes12.dex */
public class MessageFormatMessage implements Message {
    private static final int HASHVAL = 31;
    private static final Logger LOGGER = StatusLogger.getLogger();
    private static final long serialVersionUID = 1;
    private transient String formattedMessage;
    private final Locale locale;
    private String messagePattern;
    private transient Object[] parameters;
    private String[] serializedParameters;
    private transient Throwable throwable;

    public MessageFormatMessage(final Locale locale, final String messagePattern, final Object... parameters) {
        this.locale = locale;
        this.messagePattern = messagePattern;
        this.parameters = parameters;
        int length = parameters == null ? 0 : parameters.length;
        if (length > 0) {
            Object obj = parameters[length - 1];
            if (obj instanceof Throwable) {
                this.throwable = (Throwable) obj;
            }
        }
    }

    private void readObject(final ObjectInputStream in) throws IOException {
        this.parameters = null;
        this.throwable = null;
        this.formattedMessage = in.readUTF();
        this.messagePattern = in.readUTF();
        int readInt = in.readInt();
        this.serializedParameters = new String[readInt];
        for (int i = 0; i < readInt; i++) {
            this.serializedParameters[i] = in.readUTF();
        }
    }

    private void writeObject(final ObjectOutputStream out) throws IOException {
        getFormattedMessage();
        out.writeUTF(this.formattedMessage);
        out.writeUTF(this.messagePattern);
        Object[] objArr = this.parameters;
        int length = objArr == null ? 0 : objArr.length;
        out.writeInt(length);
        this.serializedParameters = new String[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                this.serializedParameters[i] = String.valueOf(this.parameters[i]);
                out.writeUTF(this.serializedParameters[i]);
            }
        }
    }

    public boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        MessageFormatMessage messageFormatMessage = (MessageFormatMessage) o;
        String str = this.messagePattern;
        if (str == null ? messageFormatMessage.messagePattern == null : str.equals(messageFormatMessage.messagePattern)) {
            return Arrays.equals(this.serializedParameters, messageFormatMessage.serializedParameters);
        }
        return false;
    }

    public String formatMessage(final String msgPattern, final Object... args) {
        try {
            return new MessageFormat(msgPattern, this.locale).format(args);
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
            this.formattedMessage = formatMessage(this.messagePattern, this.parameters);
        }
        return this.formattedMessage;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Object[] getParameters() {
        Object[] objArr = this.parameters;
        return objArr != null ? objArr : this.serializedParameters;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Throwable getThrowable() {
        return this.throwable;
    }

    public int hashCode() {
        String str = this.messagePattern;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String[] strArr = this.serializedParameters;
        return hashCode + (strArr != null ? Arrays.hashCode(strArr) : 0);
    }

    public String toString() {
        return getFormattedMessage();
    }

    public MessageFormatMessage(final String messagePattern, final Object... parameters) {
        this(Locale.getDefault(Locale.Category.FORMAT), messagePattern, parameters);
    }
}
