package org.mortbay.io;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class UncheckedPrintWriter extends PrintWriter {

    /* renamed from: e */
    public boolean f114473e;

    /* renamed from: f */
    public String f114474f;

    public UncheckedPrintWriter(Writer writer) {
        this(writer, false);
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            synchronized (((PrintWriter) this).lock) {
                ((PrintWriter) this).out.close();
            }
        } catch (IOException e) {
            Log.debug(e);
            setError();
            throw new RuntimeIOException(e);
        }
    }

    /* renamed from: f */
    public final void m71460f() throws IOException {
        if (((PrintWriter) this).out == null) {
            throw new IOException("Stream closed");
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer, java.io.Flushable
    public void flush() {
        try {
            synchronized (((PrintWriter) this).lock) {
                m71460f();
                ((PrintWriter) this).out.flush();
            }
        } catch (IOException e) {
            Log.debug(e);
            setError();
            throw new RuntimeIOException(e);
        }
    }

    /* renamed from: j */
    public final void m71461j() {
        try {
            synchronized (((PrintWriter) this).lock) {
                m71460f();
                ((PrintWriter) this).out.write(this.f114474f);
                if (this.f114473e) {
                    ((PrintWriter) this).out.flush();
                }
            }
        } catch (InterruptedIOException unused) {
            Thread.currentThread().interrupt();
        } catch (IOException e) {
            Log.debug(e);
            setError();
            throw new RuntimeIOException(e);
        }
    }

    @Override // java.io.PrintWriter
    public void print(boolean z) {
        write(z ? "true" : "false");
    }

    @Override // java.io.PrintWriter
    public void println() {
        m71461j();
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(int i) {
        try {
            synchronized (((PrintWriter) this).lock) {
                m71460f();
                ((PrintWriter) this).out.write(i);
            }
        } catch (InterruptedIOException unused) {
            Thread.currentThread().interrupt();
        } catch (IOException e) {
            Log.debug(e);
            setError();
            throw new RuntimeIOException(e);
        }
    }

    public UncheckedPrintWriter(Writer writer, boolean z) {
        super(writer, z);
        this.f114473e = z;
        this.f114474f = System.getProperty("line.separator");
    }

    @Override // java.io.PrintWriter
    public void print(char c) {
        write(c);
    }

    @Override // java.io.PrintWriter
    public void println(boolean z) {
        synchronized (((PrintWriter) this).lock) {
            print(z);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void print(int i) {
        write(String.valueOf(i));
    }

    @Override // java.io.PrintWriter
    public void print(long j) {
        write(String.valueOf(j));
    }

    public UncheckedPrintWriter(OutputStream outputStream) {
        this(outputStream, false);
    }

    @Override // java.io.PrintWriter
    public void print(float f) {
        write(String.valueOf(f));
    }

    public UncheckedPrintWriter(OutputStream outputStream, boolean z) {
        this(new BufferedWriter(new OutputStreamWriter(outputStream)), z);
    }

    @Override // java.io.PrintWriter
    public void print(double d) {
        write(String.valueOf(d));
    }

    @Override // java.io.PrintWriter
    public void println(char c) {
        synchronized (((PrintWriter) this).lock) {
            print(c);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void print(char[] cArr) {
        write(cArr);
    }

    @Override // java.io.PrintWriter
    public void print(String str) {
        if (str == null) {
            str = "null";
        }
        write(str);
    }

    @Override // java.io.PrintWriter
    public void print(Object obj) {
        write(String.valueOf(obj));
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        try {
            synchronized (((PrintWriter) this).lock) {
                m71460f();
                ((PrintWriter) this).out.write(cArr, i, i2);
            }
        } catch (InterruptedIOException unused) {
            Thread.currentThread().interrupt();
        } catch (IOException e) {
            Log.debug(e);
            setError();
            throw new RuntimeIOException(e);
        }
    }

    @Override // java.io.PrintWriter
    public void println(int i) {
        synchronized (((PrintWriter) this).lock) {
            print(i);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(long j) {
        synchronized (((PrintWriter) this).lock) {
            print(j);
            println();
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(char[] cArr) {
        write(cArr, 0, cArr.length);
    }

    @Override // java.io.PrintWriter
    public void println(float f) {
        synchronized (((PrintWriter) this).lock) {
            print(f);
            println();
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str, int i, int i2) {
        try {
            synchronized (((PrintWriter) this).lock) {
                m71460f();
                ((PrintWriter) this).out.write(str, i, i2);
            }
        } catch (InterruptedIOException unused) {
            Thread.currentThread().interrupt();
        } catch (IOException e) {
            Log.debug(e);
            setError();
            throw new RuntimeIOException(e);
        }
    }

    @Override // java.io.PrintWriter
    public void println(double d) {
        synchronized (((PrintWriter) this).lock) {
            print(d);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(char[] cArr) {
        synchronized (((PrintWriter) this).lock) {
            print(cArr);
            println();
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public void write(String str) {
        write(str, 0, str.length());
    }

    @Override // java.io.PrintWriter
    public void println(String str) {
        synchronized (((PrintWriter) this).lock) {
            print(str);
            println();
        }
    }

    @Override // java.io.PrintWriter
    public void println(Object obj) {
        synchronized (((PrintWriter) this).lock) {
            print(obj);
            println();
        }
    }
}
