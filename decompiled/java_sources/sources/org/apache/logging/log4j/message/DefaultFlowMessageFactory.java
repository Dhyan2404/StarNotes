package org.apache.logging.log4j.message;

import java.io.Serializable;

/* loaded from: classes12.dex */
public class DefaultFlowMessageFactory implements FlowMessageFactory, Serializable {
    private static final String ENTRY_DEFAULT_PREFIX = "Enter";
    private static final String EXIT_DEFAULT_PREFIX = "Exit";
    private static final long serialVersionUID = 8578655591131397576L;
    private final String entryText;
    private final String exitText;

    /* loaded from: classes12.dex */
    public static class AbstractFlowMessage implements FlowMessage {
        private static final long serialVersionUID = 1;
        private final Message message;
        private final String text;

        public AbstractFlowMessage(final String text, final Message message) {
            this.message = message;
            this.text = text;
        }

        @Override // org.apache.logging.log4j.message.Message
        public String getFormat() {
            if (this.message == null) {
                return this.text;
            }
            return this.text + ": " + this.message.getFormat();
        }

        @Override // org.apache.logging.log4j.message.Message
        public String getFormattedMessage() {
            if (this.message == null) {
                return this.text;
            }
            return this.text + " " + this.message.getFormattedMessage();
        }

        @Override // org.apache.logging.log4j.message.FlowMessage
        public Message getMessage() {
            return this.message;
        }

        @Override // org.apache.logging.log4j.message.Message
        public Object[] getParameters() {
            Message message = this.message;
            if (message != null) {
                return message.getParameters();
            }
            return null;
        }

        @Override // org.apache.logging.log4j.message.FlowMessage
        public String getText() {
            return this.text;
        }

        @Override // org.apache.logging.log4j.message.Message
        public Throwable getThrowable() {
            Message message = this.message;
            if (message != null) {
                return message.getThrowable();
            }
            return null;
        }
    }

    /* loaded from: classes12.dex */
    public static final class SimpleEntryMessage extends AbstractFlowMessage implements EntryMessage {
        private static final long serialVersionUID = 1;

        public SimpleEntryMessage(final String entryText, final Message message) {
            super(entryText, message);
        }
    }

    public DefaultFlowMessageFactory() {
        this(ENTRY_DEFAULT_PREFIX, EXIT_DEFAULT_PREFIX);
    }

    private Message makeImmutable(final Message message) {
        return !(message instanceof ReusableMessage) ? message : new SimpleMessage(message.getFormattedMessage());
    }

    public String getEntryText() {
        return this.entryText;
    }

    public String getExitText() {
        return this.exitText;
    }

    @Override // org.apache.logging.log4j.message.FlowMessageFactory
    public EntryMessage newEntryMessage(final Message message) {
        return new SimpleEntryMessage(this.entryText, makeImmutable(message));
    }

    @Override // org.apache.logging.log4j.message.FlowMessageFactory
    public ExitMessage newExitMessage(final EntryMessage message) {
        return new SimpleExitMessage(this.exitText, message);
    }

    public DefaultFlowMessageFactory(final String entryText, final String exitText) {
        this.entryText = entryText;
        this.exitText = exitText;
    }

    @Override // org.apache.logging.log4j.message.FlowMessageFactory
    public ExitMessage newExitMessage(final Object result, final EntryMessage message) {
        return new SimpleExitMessage(this.exitText, result, message);
    }

    /* loaded from: classes12.dex */
    public static final class SimpleExitMessage extends AbstractFlowMessage implements ExitMessage {
        private static final long serialVersionUID = 1;
        private final boolean isVoid;
        private final Object result;

        public SimpleExitMessage(final String exitText, final EntryMessage message) {
            super(exitText, message.getMessage());
            this.result = null;
            this.isVoid = true;
        }

        @Override // org.apache.logging.log4j.message.DefaultFlowMessageFactory.AbstractFlowMessage, org.apache.logging.log4j.message.Message
        public String getFormattedMessage() {
            String formattedMessage = super.getFormattedMessage();
            if (this.isVoid) {
                return formattedMessage;
            }
            return formattedMessage + ": " + this.result;
        }

        public SimpleExitMessage(final String exitText, final Object result, final EntryMessage message) {
            super(exitText, message.getMessage());
            this.result = result;
            this.isVoid = false;
        }

        public SimpleExitMessage(final String exitText, final Object result, final Message message) {
            super(exitText, message);
            this.result = result;
            this.isVoid = false;
        }
    }

    @Override // org.apache.logging.log4j.message.FlowMessageFactory
    public ExitMessage newExitMessage(final Object result, final Message message) {
        return new SimpleExitMessage(this.exitText, result, message);
    }
}
