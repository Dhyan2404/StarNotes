package com.dropbox.core;

import com.google.android.material.motion.MotionUtils;

/* loaded from: classes4.dex */
public class DbxApiException extends DbxException {
    private static final long serialVersionUID = 0;
    private final LocalizedText userMessage;

    public DbxApiException(String str, LocalizedText localizedText, String str2) {
        super(str, str2);
        this.userMessage = localizedText;
    }

    public static String buildMessage(String str, LocalizedText localizedText) {
        return buildMessage(str, localizedText, null);
    }

    public LocalizedText getUserMessage() {
        return this.userMessage;
    }

    public static String buildMessage(String str, LocalizedText localizedText, Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append("Exception in ");
        sb.append(str);
        if (obj != null) {
            sb.append(": ");
            sb.append(obj);
        }
        if (localizedText != null) {
            sb.append(" (user message: ");
            sb.append(localizedText);
            sb.append(MotionUtils.f31762d);
        }
        return sb.toString();
    }

    public DbxApiException(String str, LocalizedText localizedText, String str2, Throwable th) {
        super(str, str2, th);
        this.userMessage = localizedText;
    }
}
