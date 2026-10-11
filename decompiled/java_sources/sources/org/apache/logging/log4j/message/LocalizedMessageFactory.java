package org.apache.logging.log4j.message;

import java.util.ResourceBundle;

/* loaded from: classes12.dex */
public class LocalizedMessageFactory extends AbstractMessageFactory {
    private static final long serialVersionUID = -1996295808703146741L;
    private final String baseName;
    private final transient ResourceBundle resourceBundle;

    public LocalizedMessageFactory(final ResourceBundle resourceBundle) {
        this.resourceBundle = resourceBundle;
        this.baseName = null;
    }

    public String getBaseName() {
        return this.baseName;
    }

    public ResourceBundle getResourceBundle() {
        return this.resourceBundle;
    }

    @Override // org.apache.logging.log4j.message.AbstractMessageFactory, org.apache.logging.log4j.message.MessageFactory
    public Message newMessage(final String key) {
        ResourceBundle resourceBundle = this.resourceBundle;
        if (resourceBundle == null) {
            return new LocalizedMessage(this.baseName, key);
        }
        return new LocalizedMessage(resourceBundle, key);
    }

    public LocalizedMessageFactory(final String baseName) {
        this.resourceBundle = null;
        this.baseName = baseName;
    }

    @Override // org.apache.logging.log4j.message.MessageFactory
    public Message newMessage(final String key, final Object... params) {
        ResourceBundle resourceBundle = this.resourceBundle;
        if (resourceBundle == null) {
            return new LocalizedMessage(this.baseName, key, params);
        }
        return new LocalizedMessage(resourceBundle, key, params);
    }
}
