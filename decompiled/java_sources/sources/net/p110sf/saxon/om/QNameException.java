package net.p110sf.saxon.om;

/* loaded from: classes11.dex */
public class QNameException extends Exception {
    String message;

    public QNameException(String str) {
        this.message = str;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }
}
