package org.apache.poi.smtp;

/* loaded from: classes12.dex */
public class SMTPException extends RuntimeException {
    public SMTPException() {
    }

    public SMTPException(String str) {
        super(str);
    }

    public SMTPException(String str, Throwable th) {
        super(str, th);
    }

    public SMTPException(Throwable th) {
        super(th);
    }

    public SMTPException(String str, Throwable th, boolean z, boolean z2) {
        super(str, th, z, z2);
    }
}
