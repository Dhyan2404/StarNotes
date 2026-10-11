package org.apache.logging.log4j.message;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Locale;
import java.util.ResourceBundle;
import org.apache.logging.log4j.status.StatusLogger;

/* loaded from: classes12.dex */
public class LocalizedMessage implements Message, LoggerNameAwareMessage {
    private static final long serialVersionUID = 3893703791567290742L;
    private transient Object[] argArray;
    private String baseName;
    private String formattedMessage;
    private String key;
    private final Locale locale;
    private transient StatusLogger logger;
    private String loggerName;
    private transient ResourceBundle resourceBundle;
    private String[] stringArgs;
    private transient Throwable throwable;

    public LocalizedMessage(final String messagePattern, final Object[] arguments) {
        this((ResourceBundle) null, (Locale) null, messagePattern, arguments);
    }

    private void readObject(final ObjectInputStream in) throws IOException, ClassNotFoundException {
        in.defaultReadObject();
        this.formattedMessage = in.readUTF();
        this.key = in.readUTF();
        this.baseName = in.readUTF();
        in.readInt();
        this.stringArgs = (String[]) in.readObject();
        this.logger = StatusLogger.getLogger();
        this.resourceBundle = null;
        this.argArray = null;
    }

    private void writeObject(final ObjectOutputStream out) throws IOException {
        out.defaultWriteObject();
        getFormattedMessage();
        out.writeUTF(this.formattedMessage);
        out.writeUTF(this.key);
        out.writeUTF(this.baseName);
        out.writeInt(this.argArray.length);
        Object[] objArr = this.argArray;
        this.stringArgs = new String[objArr.length];
        int i = 0;
        for (Object obj : objArr) {
            this.stringArgs[i] = obj.toString();
            i++;
        }
        out.writeObject(this.stringArgs);
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormat() {
        return this.key;
    }

    @Override // org.apache.logging.log4j.message.Message
    public String getFormattedMessage() {
        String str = this.formattedMessage;
        if (str != null) {
            return str;
        }
        ResourceBundle resourceBundle = this.resourceBundle;
        if (resourceBundle == null) {
            String str2 = this.baseName;
            resourceBundle = str2 != null ? getResourceBundle(str2, this.locale, false) : getResourceBundle(this.loggerName, this.locale, true);
        }
        String format = getFormat();
        if (resourceBundle != null && resourceBundle.containsKey(format)) {
            format = resourceBundle.getString(format);
        }
        Object[] objArr = this.argArray;
        if (objArr == null) {
            objArr = this.stringArgs;
        }
        FormattedMessage formattedMessage = new FormattedMessage(format, objArr);
        this.formattedMessage = formattedMessage.getFormattedMessage();
        this.throwable = formattedMessage.getThrowable();
        return this.formattedMessage;
    }

    @Override // org.apache.logging.log4j.message.LoggerNameAwareMessage
    public String getLoggerName() {
        return this.loggerName;
    }

    @Override // org.apache.logging.log4j.message.Message
    public Object[] getParameters() {
        Object[] objArr = this.argArray;
        return objArr != null ? objArr : this.stringArgs;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    /* JADX WARN: Type inference failed for: r6v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.ResourceBundle] */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.util.ResourceBundle] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.util.ResourceBundle] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.util.ResourceBundle] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0040 -> B:9:0x0011). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x003b -> B:9:0x0011). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ResourceBundle getResourceBundle(final java.lang.String r4, final java.util.Locale r5, final boolean r6) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            java.lang.String r1 = "Unable to locate ResourceBundle "
            if (r5 == 0) goto Ld
            java.util.ResourceBundle r6 = java.util.ResourceBundle.getBundle(r4, r5)     // Catch: java.util.MissingResourceException -> L13
            goto L11
        Ld:
            java.util.ResourceBundle r6 = java.util.ResourceBundle.getBundle(r4)     // Catch: java.util.MissingResourceException -> L13
        L11:
            r0 = r6
            goto L2a
        L13:
            if (r6 != 0) goto L2a
            org.apache.logging.log4j.status.StatusLogger r3 = r3.logger
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r1)
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            r3.debug(r4)
            return r0
        L2a:
            if (r0 != 0) goto L5a
            r6 = 46
            int r6 = r4.lastIndexOf(r6)
            if (r6 <= 0) goto L5a
            r2 = 0
            java.lang.String r4 = r4.substring(r2, r6)
            if (r5 == 0) goto L40
            java.util.ResourceBundle r6 = java.util.ResourceBundle.getBundle(r4, r5)     // Catch: java.util.MissingResourceException -> L45
            goto L11
        L40:
            java.util.ResourceBundle r6 = java.util.ResourceBundle.getBundle(r4)     // Catch: java.util.MissingResourceException -> L45
            goto L11
        L45:
            org.apache.logging.log4j.status.StatusLogger r6 = r3.logger
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r1)
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            r6.debug(r2)
            goto L2a
        L5a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.logging.log4j.message.LocalizedMessage.getResourceBundle(java.lang.String, java.util.Locale, boolean):java.util.ResourceBundle");
    }

    @Override // org.apache.logging.log4j.message.Message
    public Throwable getThrowable() {
        return this.throwable;
    }

    @Override // org.apache.logging.log4j.message.LoggerNameAwareMessage
    public void setLoggerName(final String name) {
        this.loggerName = name;
    }

    public String toString() {
        return getFormattedMessage();
    }

    public LocalizedMessage(final String baseName, final String key, final Object[] arguments) {
        this(baseName, (Locale) null, key, arguments);
    }

    public LocalizedMessage(final ResourceBundle bundle, final String key, final Object[] arguments) {
        this(bundle, (Locale) null, key, arguments);
    }

    public LocalizedMessage(final String baseName, final Locale locale, final String key, final Object[] arguments) {
        this.logger = StatusLogger.getLogger();
        this.key = key;
        this.argArray = arguments;
        this.throwable = null;
        this.baseName = baseName;
        this.resourceBundle = null;
        this.locale = locale;
    }

    public LocalizedMessage(final ResourceBundle bundle, final Locale locale, final String key, final Object[] arguments) {
        this.logger = StatusLogger.getLogger();
        this.key = key;
        this.argArray = arguments;
        this.throwable = null;
        this.baseName = null;
        this.resourceBundle = bundle;
        this.locale = locale;
    }

    public LocalizedMessage(final Locale locale, final String key, final Object[] arguments) {
        this((ResourceBundle) null, locale, key, arguments);
    }

    public LocalizedMessage(final String messagePattern, final Object arg) {
        this((ResourceBundle) null, (Locale) null, messagePattern, new Object[]{arg});
    }

    public LocalizedMessage(final String baseName, final String key, final Object arg) {
        this(baseName, (Locale) null, key, new Object[]{arg});
    }

    public LocalizedMessage(final ResourceBundle bundle, final String key) {
        this(bundle, (Locale) null, key, new Object[0]);
    }

    public LocalizedMessage(final ResourceBundle bundle, final String key, final Object arg) {
        this(bundle, (Locale) null, key, new Object[]{arg});
    }

    public LocalizedMessage(final String baseName, final Locale locale, final String key, final Object arg) {
        this(baseName, locale, key, new Object[]{arg});
    }

    public LocalizedMessage(final ResourceBundle bundle, final Locale locale, final String key, final Object arg) {
        this(bundle, locale, key, new Object[]{arg});
    }

    public LocalizedMessage(final Locale locale, final String key, final Object arg) {
        this((ResourceBundle) null, locale, key, new Object[]{arg});
    }

    public LocalizedMessage(final String messagePattern, final Object arg1, final Object arg2) {
        this((ResourceBundle) null, (Locale) null, messagePattern, new Object[]{arg1, arg2});
    }

    public LocalizedMessage(final String baseName, final String key, final Object arg1, final Object arg2) {
        this(baseName, (Locale) null, key, new Object[]{arg1, arg2});
    }

    public LocalizedMessage(final ResourceBundle bundle, final String key, final Object arg1, final Object arg2) {
        this(bundle, (Locale) null, key, new Object[]{arg1, arg2});
    }

    public LocalizedMessage(final String baseName, final Locale locale, final String key, final Object arg1, final Object arg2) {
        this(baseName, locale, key, new Object[]{arg1, arg2});
    }

    public LocalizedMessage(final ResourceBundle bundle, final Locale locale, final String key, final Object arg1, final Object arg2) {
        this(bundle, locale, key, new Object[]{arg1, arg2});
    }

    public LocalizedMessage(final Locale locale, final String key, final Object arg1, final Object arg2) {
        this((ResourceBundle) null, locale, key, new Object[]{arg1, arg2});
    }
}
