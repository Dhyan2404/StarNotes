package com.sun.org.apache.xml.internal.dtm;

import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import javax.xml.transform.SourceLocator;

/* loaded from: classes10.dex */
public class DTMException extends RuntimeException {
    static final long serialVersionUID = -775576419181334734L;
    Throwable containedException;
    SourceLocator locator;

    public DTMException(String str) {
        super(str);
        this.containedException = null;
        this.locator = null;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        Throwable th = this.containedException;
        if (th == this) {
            return null;
        }
        return th;
    }

    public Throwable getException() {
        return this.containedException;
    }

    public String getLocationAsString() {
        if (this.locator == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        String systemId = this.locator.getSystemId();
        int lineNumber = this.locator.getLineNumber();
        int columnNumber = this.locator.getColumnNumber();
        if (systemId != null) {
            stringBuffer.append("; SystemID: ");
            stringBuffer.append(systemId);
        }
        if (lineNumber != 0) {
            stringBuffer.append("; Line#: ");
            stringBuffer.append(lineNumber);
        }
        if (columnNumber != 0) {
            stringBuffer.append("; Column#: ");
            stringBuffer.append(columnNumber);
        }
        return stringBuffer.toString();
    }

    public SourceLocator getLocator() {
        return this.locator;
    }

    public String getMessageAndLocation() {
        StringBuffer stringBuffer = new StringBuffer();
        String message = super.getMessage();
        if (message != null) {
            stringBuffer.append(message);
        }
        SourceLocator sourceLocator = this.locator;
        if (sourceLocator != null) {
            String systemId = sourceLocator.getSystemId();
            int lineNumber = this.locator.getLineNumber();
            int columnNumber = this.locator.getColumnNumber();
            if (systemId != null) {
                stringBuffer.append("; SystemID: ");
                stringBuffer.append(systemId);
            }
            if (lineNumber != 0) {
                stringBuffer.append("; Line#: ");
                stringBuffer.append(lineNumber);
            }
            if (columnNumber != 0) {
                stringBuffer.append("; Column#: ");
                stringBuffer.append(columnNumber);
            }
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0017, code lost:
    
        r2.containedException = r3;
     */
    @Override // java.lang.Throwable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.lang.Throwable initCause(java.lang.Throwable r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            java.lang.Throwable r0 = r2.containedException     // Catch: java.lang.Throwable -> L27
            r1 = 0
            if (r0 != 0) goto L15
            if (r3 != 0) goto L9
            goto L15
        L9:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L27
            java.lang.String r0 = "ER_CANNOT_OVERWRITE_CAUSE"
            java.lang.String r0 = com.sun.org.apache.xml.internal.res.XMLMessages.createXMLMessage(r0, r1)     // Catch: java.lang.Throwable -> L27
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L27
            throw r3     // Catch: java.lang.Throwable -> L27
        L15:
            if (r3 == r2) goto L1b
            r2.containedException = r3     // Catch: java.lang.Throwable -> L27
            monitor-exit(r2)
            return r2
        L1b:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L27
            java.lang.String r0 = "ER_SELF_CAUSATION_NOT_PERMITTED"
            java.lang.String r0 = com.sun.org.apache.xml.internal.res.XMLMessages.createXMLMessage(r0, r1)     // Catch: java.lang.Throwable -> L27
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L27
            throw r3     // Catch: java.lang.Throwable -> L27
        L27:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.dtm.DTMException.initCause(java.lang.Throwable):java.lang.Throwable");
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(new PrintWriter((OutputStream) System.err, true));
    }

    public void setLocator(SourceLocator sourceLocator) {
        this.locator = sourceLocator;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        printStackTrace(new PrintWriter(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        Throwable th;
        String locationAsString;
        boolean z = true;
        if (printWriter == null) {
            printWriter = new PrintWriter((OutputStream) System.err, true);
        }
        try {
            String locationAsString2 = getLocationAsString();
            if (locationAsString2 != null) {
                printWriter.println(locationAsString2);
            }
            super.printStackTrace(printWriter);
        } catch (Throwable unused) {
        }
        try {
            Throwable.class.getMethod("getCause", null);
        } catch (NoSuchMethodException unused2) {
            z = false;
        }
        if (z) {
            return;
        }
        Throwable exception = getException();
        for (int i = 0; i < 10 && exception != null; i++) {
            printWriter.println("---------");
            try {
                if ((exception instanceof DTMException) && (locationAsString = ((DTMException) exception).getLocationAsString()) != null) {
                    printWriter.println(locationAsString);
                }
                exception.printStackTrace(printWriter);
            } catch (Throwable unused3) {
                printWriter.println("Could not print stack trace...");
            }
            try {
                Method method = exception.getClass().getMethod("getException", null);
                if (method != null) {
                    th = (Throwable) method.invoke(exception, null);
                    if (exception == th) {
                        return;
                    }
                } else {
                    th = null;
                }
                exception = th;
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused4) {
                exception = null;
            }
        }
    }

    public DTMException(Throwable th) {
        super(th.getMessage());
        this.containedException = th;
        this.locator = null;
    }

    public DTMException(String str, Throwable th) {
        super((str == null || str.length() == 0) ? th.getMessage() : str);
        this.containedException = th;
        this.locator = null;
    }

    public DTMException(String str, SourceLocator sourceLocator) {
        super(str);
        this.containedException = null;
        this.locator = sourceLocator;
    }

    public DTMException(String str, SourceLocator sourceLocator, Throwable th) {
        super(str);
        this.containedException = th;
        this.locator = sourceLocator;
    }
}
