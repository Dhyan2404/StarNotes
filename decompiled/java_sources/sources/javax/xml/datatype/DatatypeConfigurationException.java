package javax.xml.datatype;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;

/* loaded from: classes5.dex */
public class DatatypeConfigurationException extends Exception {
    static /* synthetic */ Class class$java$lang$Throwable = null;
    private static final long serialVersionUID = -1699373159027047238L;
    private Throwable causeOnJDK13OrBelow;
    private transient boolean isJDK14OrAbove;

    public DatatypeConfigurationException() {
        this.isJDK14OrAbove = false;
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    private void initCauseByReflection(Throwable th) {
        this.causeOnJDK13OrBelow = th;
        try {
            Class<?> cls = getClass();
            Class<?>[] clsArr = new Class[1];
            Class<?> cls2 = class$java$lang$Throwable;
            if (cls2 == null) {
                cls2 = class$("java.lang.Throwable");
                class$java$lang$Throwable = cls2;
            }
            clsArr[0] = cls2;
            cls.getMethod("initCause", clsArr).invoke(this, th);
            this.isJDK14OrAbove = true;
        } catch (Exception unused) {
        }
    }

    private void printStackTrace0(PrintWriter printWriter) {
        this.causeOnJDK13OrBelow.printStackTrace(printWriter);
        printWriter.println("------------------------------------------");
        super.printStackTrace(printWriter);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        try {
            Throwable th = (Throwable) getClass().getMethod("getCause", new Class[0]).invoke(this, new Object[0]);
            if (this.causeOnJDK13OrBelow == null) {
                this.causeOnJDK13OrBelow = th;
            } else if (th == null) {
                Class<?> cls = getClass();
                Class<?>[] clsArr = new Class[1];
                Class<?> cls2 = class$java$lang$Throwable;
                if (cls2 == null) {
                    cls2 = class$("java.lang.Throwable");
                    class$java$lang$Throwable = cls2;
                }
                clsArr[0] = cls2;
                cls.getMethod("initCause", clsArr).invoke(this, this.causeOnJDK13OrBelow);
            }
            this.isJDK14OrAbove = true;
        } catch (Exception unused) {
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        if (this.isJDK14OrAbove || this.causeOnJDK13OrBelow == null) {
            super.printStackTrace();
        } else {
            printStackTrace0(new PrintWriter((OutputStream) System.err, true));
        }
    }

    public DatatypeConfigurationException(String str) {
        super(str);
        this.isJDK14OrAbove = false;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        if (this.isJDK14OrAbove || this.causeOnJDK13OrBelow == null) {
            super.printStackTrace(printStream);
        } else {
            printStackTrace0(new PrintWriter(printStream));
        }
    }

    public DatatypeConfigurationException(String str, Throwable th) {
        super(str);
        this.isJDK14OrAbove = false;
        initCauseByReflection(th);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        if (this.isJDK14OrAbove || this.causeOnJDK13OrBelow == null) {
            super.printStackTrace(printWriter);
        } else {
            printStackTrace0(printWriter);
        }
    }

    public DatatypeConfigurationException(Throwable th) {
        super(th == null ? null : th.toString());
        this.isJDK14OrAbove = false;
        initCauseByReflection(th);
    }
}
