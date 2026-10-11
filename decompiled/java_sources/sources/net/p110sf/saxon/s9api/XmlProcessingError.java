package net.p110sf.saxon.s9api;

/* loaded from: classes11.dex */
public interface XmlProcessingError {
    XmlProcessingError asWarning();

    Throwable getCause();

    QName getErrorCode();

    HostLanguage getHostLanguage();

    Location getLocation();

    String getMessage();

    default String getModuleUri() {
        return getLocation().getSystemId();
    }

    String getPath();

    String getTerminationMessage();

    boolean isAlreadyReported();

    boolean isStaticError();

    boolean isTypeError();

    boolean isWarning();

    void setAlreadyReported(boolean z);

    void setTerminationMessage(String str);
}
