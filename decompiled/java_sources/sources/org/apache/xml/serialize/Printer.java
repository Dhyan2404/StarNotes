package org.apache.xml.serialize;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

/* loaded from: classes13.dex */
public class Printer {

    /* renamed from: c */
    public static final int f113710c = 4096;
    protected final OutputFormat _format;
    protected Writer _writer;

    /* renamed from: a */
    public final char[] f113711a = new char[4096];
    protected IOException _exception = null;
    protected StringWriter _dtdWriter = null;
    protected Writer _docWriter = null;

    /* renamed from: b */
    public int f113712b = 0;

    public Printer(Writer writer, OutputFormat outputFormat) {
        this._writer = writer;
        this._format = outputFormat;
    }

    public void breakLine() throws IOException {
        try {
            if (this.f113712b == 4096) {
                this._writer.write(this.f113711a);
                this.f113712b = 0;
            }
            char[] cArr = this.f113711a;
            int i = this.f113712b;
            cArr[i] = '\n';
            this.f113712b = i + 1;
        } catch (IOException e) {
            if (this._exception == null) {
                this._exception = e;
            }
            throw e;
        }
    }

    public void enterDTD() throws IOException {
        if (this._dtdWriter == null) {
            flushLine(false);
            StringWriter stringWriter = new StringWriter();
            this._dtdWriter = stringWriter;
            this._docWriter = this._writer;
            this._writer = stringWriter;
        }
    }

    public void flush() throws IOException {
        try {
            this._writer.write(this.f113711a, 0, this.f113712b);
            this._writer.flush();
            this.f113712b = 0;
        } catch (IOException e) {
            if (this._exception == null) {
                this._exception = e;
            }
            throw e;
        }
    }

    public void flushLine(boolean z) throws IOException {
        try {
            this._writer.write(this.f113711a, 0, this.f113712b);
        } catch (IOException e) {
            if (this._exception == null) {
                this._exception = e;
            }
        }
        this.f113712b = 0;
    }

    public IOException getException() {
        return this._exception;
    }

    public int getNextIndent() {
        return 0;
    }

    public void indent() {
    }

    public String leaveDTD() throws IOException {
        if (this._writer != this._dtdWriter) {
            return null;
        }
        flushLine(false);
        this._writer = this._docWriter;
        return this._dtdWriter.toString();
    }

    public void printSpace() throws IOException {
        try {
            if (this.f113712b == 4096) {
                this._writer.write(this.f113711a);
                this.f113712b = 0;
            }
            char[] cArr = this.f113711a;
            int i = this.f113712b;
            cArr[i] = ' ';
            this.f113712b = i + 1;
        } catch (IOException e) {
            if (this._exception == null) {
                this._exception = e;
            }
            throw e;
        }
    }

    public void printText(char c) throws IOException {
        try {
            if (this.f113712b == 4096) {
                this._writer.write(this.f113711a);
                this.f113712b = 0;
            }
            char[] cArr = this.f113711a;
            int i = this.f113712b;
            cArr[i] = c;
            this.f113712b = i + 1;
        } catch (IOException e) {
            if (this._exception == null) {
                this._exception = e;
            }
            throw e;
        }
    }

    public void setNextIndent(int i) {
    }

    public void setThisIndent(int i) {
    }

    public void unindent() {
    }

    public void breakLine(boolean z) throws IOException {
        breakLine();
    }

    public void printText(String str) throws IOException {
        try {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                if (this.f113712b == 4096) {
                    this._writer.write(this.f113711a);
                    this.f113712b = 0;
                }
                this.f113711a[this.f113712b] = str.charAt(i);
                this.f113712b++;
            }
        } catch (IOException e) {
            if (this._exception == null) {
                this._exception = e;
            }
            throw e;
        }
    }

    public void printText(StringBuffer stringBuffer) throws IOException {
        try {
            int length = stringBuffer.length();
            for (int i = 0; i < length; i++) {
                if (this.f113712b == 4096) {
                    this._writer.write(this.f113711a);
                    this.f113712b = 0;
                }
                this.f113711a[this.f113712b] = stringBuffer.charAt(i);
                this.f113712b++;
            }
        } catch (IOException e) {
            if (this._exception == null) {
                this._exception = e;
            }
            throw e;
        }
    }

    public void printText(char[] cArr, int i, int i2) throws IOException {
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                return;
            }
            try {
                if (this.f113712b == 4096) {
                    this._writer.write(this.f113711a);
                    this.f113712b = 0;
                }
                char[] cArr2 = this.f113711a;
                int i4 = this.f113712b;
                cArr2[i4] = cArr[i];
                i++;
                this.f113712b = i4 + 1;
                i2 = i3;
            } catch (IOException e) {
                if (this._exception == null) {
                    this._exception = e;
                }
                throw e;
            }
        }
    }
}
