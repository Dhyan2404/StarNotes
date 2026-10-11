package net.p110sf.saxon.s9api;

/* loaded from: classes11.dex */
public interface StaticError {
    default int getColumnNumber() {
        return getLocation().getColumnNumber();
    }

    QName getErrorCode();

    default String getInstructionName() {
        return null;
    }

    default int getLineNumber() {
        return getLocation().getLineNumber();
    }

    Location getLocation();

    String getMessage();

    default String getModuleUri() {
        return getLocation().getSystemId();
    }

    default String getPath() {
        return null;
    }

    String getTerminationMessage();

    boolean isTypeError();

    boolean isWarning();

    void setTerminationMessage(String str);
}
