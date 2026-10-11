package net.p110sf.saxon.lib;

import java.io.Writer;
import javax.xml.transform.stream.StreamResult;

/* loaded from: classes11.dex */
public abstract class Logger {
    public static final int DISASTER = 3;
    public static final int ERROR = 2;
    public static final int INFO = 0;
    public static final int WARNING = 1;

    /* renamed from: a */
    public boolean f100505a = false;

    /* renamed from: net.sf.saxon.lib.Logger$a */
    /* loaded from: classes11.dex */
    public static class C18394a extends Writer {

        /* renamed from: e */
        public final StringBuilder f100506e = new StringBuilder();

        /* renamed from: f */
        public final Logger f100507f;

        public C18394a(Logger logger) {
            this.f100507f = logger;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            flush();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            if (this.f100506e.length() > 0) {
                this.f100507f.println(this.f100506e.toString(), 0);
                this.f100506e.setLength(0);
            }
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                char c = cArr[i + i3];
                if (c == '\n') {
                    this.f100507f.println(this.f100506e.toString(), 0);
                    this.f100506e.setLength(0);
                } else {
                    this.f100506e.append(c);
                }
            }
        }
    }

    public StreamResult asStreamResult() {
        return new StreamResult(asWriter());
    }

    public Writer asWriter() {
        return new C18394a(this);
    }

    public void close() {
    }

    public void disaster(String str) {
        println(str, 3);
    }

    public void error(String str) {
        println(str, 2);
    }

    public void info(String str) {
        println(str, 0);
    }

    public boolean isUnicodeAware() {
        return this.f100505a;
    }

    public abstract void println(String str, int i);

    public void setUnicodeAware(boolean z) {
        this.f100505a = z;
    }

    public void warning(String str) {
        println(str, 1);
    }
}
