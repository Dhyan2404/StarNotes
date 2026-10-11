package org.mortbay.log;

import com.onyx.android.sdk.base.utils.DateTimeUtil;
import org.mortbay.util.DateCache;

/* loaded from: classes13.dex */
public class StdErrLog implements Logger {

    /* renamed from: c */
    public static DateCache f115229c;

    /* renamed from: d */
    public static boolean f115230d;

    /* renamed from: a */
    public String f115231a;

    /* renamed from: b */
    public StringBuffer f115232b;

    static {
        f115230d = System.getProperty("DEBUG", null) != null;
        try {
            f115229c = new DateCache(DateTimeUtil.FORMAT_YYYYMMDD_HHMMSS);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public StdErrLog() {
        this(null);
    }

    /* renamed from: a */
    public final void m71624a(String str) {
        if (str == null) {
            this.f115232b.append("null");
            return;
        }
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!Character.isISOControl(charAt)) {
                this.f115232b.append(charAt);
            } else if (charAt == '\n') {
                this.f115232b.append('|');
            } else if (charAt == '\r') {
                this.f115232b.append('<');
            } else {
                this.f115232b.append('?');
            }
        }
    }

    /* renamed from: b */
    public final void m71625b(String str, Object obj, Object obj2) {
        int indexOf = str == null ? -1 : str.indexOf("{}");
        int indexOf2 = indexOf >= 0 ? str.indexOf("{}", indexOf + 2) : -1;
        if (indexOf < 0) {
            m71624a(str);
            if (obj != null) {
                this.f115232b.append(' ');
                m71624a(String.valueOf(obj));
            }
            if (obj2 != null) {
                this.f115232b.append(' ');
                m71624a(String.valueOf(obj2));
                return;
            }
            return;
        }
        m71624a(str.substring(0, indexOf));
        if (obj == null) {
            obj = "null";
        }
        m71624a(String.valueOf(obj));
        if (indexOf2 >= 0) {
            m71624a(str.substring(indexOf + 2, indexOf2));
            if (obj2 == null) {
                obj2 = "null";
            }
            m71624a(String.valueOf(obj2));
            m71624a(str.substring(indexOf2 + 2));
            return;
        }
        m71624a(str.substring(indexOf + 2));
        if (obj2 != null) {
            this.f115232b.append(' ');
            m71624a(String.valueOf(obj2));
        }
    }

    /* renamed from: c */
    public final void m71626c(Throwable th) {
        if (th == null) {
            this.f115232b.append("null");
            return;
        }
        this.f115232b.append('\n');
        m71624a(th.toString());
        StackTraceElement[] stackTrace = th.getStackTrace();
        for (int i = 0; stackTrace != null && i < stackTrace.length; i++) {
            this.f115232b.append("\n\tat ");
            m71624a(stackTrace[i].toString());
        }
    }

    /* renamed from: d */
    public final void m71627d(String str, int i, String str2) {
        this.f115232b.setLength(0);
        this.f115232b.append(str);
        if (i > 99) {
            this.f115232b.append('.');
        } else if (i > 9) {
            this.f115232b.append(".0");
        } else {
            this.f115232b.append(".00");
        }
        StringBuffer stringBuffer = this.f115232b;
        stringBuffer.append(i);
        stringBuffer.append(str2);
        stringBuffer.append(this.f115231a);
        stringBuffer.append(':');
    }

    @Override // org.mortbay.log.Logger
    public void debug(String str, Throwable th) {
        if (f115230d) {
            String now = f115229c.now();
            int lastMs = f115229c.lastMs();
            synchronized (this.f115232b) {
                m71627d(now, lastMs, ":DBUG:");
                m71624a(str);
                m71626c(th);
                System.err.println(this.f115232b.toString());
            }
        }
    }

    @Override // org.mortbay.log.Logger
    public Logger getLogger(String str) {
        return (!(str == null && this.f115231a == null) && (str == null || !str.equals(this.f115231a))) ? new StdErrLog(str) : this;
    }

    @Override // org.mortbay.log.Logger
    public void info(String str, Object obj, Object obj2) {
        String now = f115229c.now();
        int lastMs = f115229c.lastMs();
        synchronized (this.f115232b) {
            m71627d(now, lastMs, ":INFO:");
            m71625b(str, obj, obj2);
            System.err.println(this.f115232b.toString());
        }
    }

    @Override // org.mortbay.log.Logger
    public boolean isDebugEnabled() {
        return f115230d;
    }

    @Override // org.mortbay.log.Logger
    public void setDebugEnabled(boolean z) {
        f115230d = z;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("STDERR");
        stringBuffer.append(this.f115231a);
        return stringBuffer.toString();
    }

    @Override // org.mortbay.log.Logger
    public void warn(String str, Object obj, Object obj2) {
        String now = f115229c.now();
        int lastMs = f115229c.lastMs();
        synchronized (this.f115232b) {
            m71627d(now, lastMs, ":WARN:");
            m71625b(str, obj, obj2);
            System.err.println(this.f115232b.toString());
        }
    }

    public StdErrLog(String str) {
        this.f115232b = new StringBuffer();
        this.f115231a = str == null ? "" : str;
    }

    @Override // org.mortbay.log.Logger
    public void warn(String str, Throwable th) {
        String now = f115229c.now();
        int lastMs = f115229c.lastMs();
        synchronized (this.f115232b) {
            m71627d(now, lastMs, ":WARN:");
            m71624a(str);
            m71626c(th);
            System.err.println(this.f115232b.toString());
        }
    }

    @Override // org.mortbay.log.Logger
    public void debug(String str, Object obj, Object obj2) {
        if (f115230d) {
            String now = f115229c.now();
            int lastMs = f115229c.lastMs();
            synchronized (this.f115232b) {
                m71627d(now, lastMs, ":DBUG:");
                m71625b(str, obj, obj2);
                System.err.println(this.f115232b.toString());
            }
        }
    }
}
