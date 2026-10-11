package androidx.core.util;

import android.util.Log;
import androidx.annotation.RestrictTo;
import java.io.Writer;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
@Deprecated
/* loaded from: classes3.dex */
public class LogWriter extends Writer {

    /* renamed from: e */
    public final String f5722e;

    /* renamed from: f */
    public StringBuilder f5723f = new StringBuilder(128);

    public LogWriter(String str) {
        this.f5722e = str;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m3257f();
    }

    /* renamed from: f */
    public final void m3257f() {
        if (this.f5723f.length() > 0) {
            Log.d(this.f5722e, this.f5723f.toString());
            StringBuilder sb = this.f5723f;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        m3257f();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c = cArr[i + i3];
            if (c == '\n') {
                m3257f();
            } else {
                this.f5723f.append(c);
            }
        }
    }
}
