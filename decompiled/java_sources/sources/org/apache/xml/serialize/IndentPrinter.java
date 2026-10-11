package org.apache.xml.serialize;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

/* loaded from: classes13.dex */
public class IndentPrinter extends Printer {

    /* renamed from: d */
    public StringBuffer f113680d;

    /* renamed from: e */
    public StringBuffer f113681e;

    /* renamed from: f */
    public int f113682f;

    /* renamed from: g */
    public int f113683g;

    /* renamed from: h */
    public int f113684h;

    public IndentPrinter(Writer writer, OutputFormat outputFormat) {
        super(writer, outputFormat);
        this.f113680d = new StringBuffer(80);
        this.f113681e = new StringBuffer(20);
        this.f113682f = 0;
        this.f113684h = 0;
        this.f113683g = 0;
    }

    @Override // org.apache.xml.serialize.Printer
    public void breakLine() {
        breakLine(false);
    }

    @Override // org.apache.xml.serialize.Printer
    public void enterDTD() {
        if (this._dtdWriter == null) {
            this.f113680d.append((Object) this.f113681e);
            this.f113681e = new StringBuffer(20);
            flushLine(false);
            StringWriter stringWriter = new StringWriter();
            this._dtdWriter = stringWriter;
            this._docWriter = this._writer;
            this._writer = stringWriter;
        }
    }

    @Override // org.apache.xml.serialize.Printer
    public void flush() {
        if (this.f113680d.length() > 0 || this.f113681e.length() > 0) {
            breakLine();
        }
        try {
            this._writer.flush();
        } catch (IOException e) {
            if (this._exception == null) {
                this._exception = e;
            }
        }
    }

    @Override // org.apache.xml.serialize.Printer
    public void flushLine(boolean z) {
        if (this.f113680d.length() > 0) {
            try {
                if (this._format.getIndenting() && !z) {
                    int i = this.f113683g;
                    if (i * 2 > this._format.getLineWidth() && this._format.getLineWidth() > 0) {
                        i = this._format.getLineWidth() / 2;
                    }
                    while (i > 0) {
                        this._writer.write(32);
                        i--;
                    }
                }
                this.f113683g = this.f113684h;
                this.f113682f = 0;
                this._writer.write(this.f113680d.toString());
                this.f113680d = new StringBuffer(40);
            } catch (IOException e) {
                if (this._exception == null) {
                    this._exception = e;
                }
            }
        }
    }

    @Override // org.apache.xml.serialize.Printer
    public int getNextIndent() {
        return this.f113684h;
    }

    @Override // org.apache.xml.serialize.Printer
    public void indent() {
        this.f113684h += this._format.getIndent();
    }

    @Override // org.apache.xml.serialize.Printer
    public String leaveDTD() {
        if (this._writer != this._dtdWriter) {
            return null;
        }
        this.f113680d.append((Object) this.f113681e);
        this.f113681e = new StringBuffer(20);
        flushLine(false);
        this._writer = this._docWriter;
        return this._dtdWriter.toString();
    }

    @Override // org.apache.xml.serialize.Printer
    public void printSpace() {
        if (this.f113681e.length() > 0) {
            if (this._format.getLineWidth() > 0 && this.f113683g + this.f113680d.length() + this.f113682f + this.f113681e.length() > this._format.getLineWidth()) {
                flushLine(false);
                try {
                    this._writer.write(this._format.getLineSeparator());
                } catch (IOException e) {
                    if (this._exception == null) {
                        this._exception = e;
                    }
                }
            }
            while (this.f113682f > 0) {
                this.f113680d.append(' ');
                this.f113682f--;
            }
            this.f113680d.append((Object) this.f113681e);
            this.f113681e = new StringBuffer(20);
        }
        this.f113682f++;
    }

    @Override // org.apache.xml.serialize.Printer
    public void printText(char c) {
        this.f113681e.append(c);
    }

    @Override // org.apache.xml.serialize.Printer
    public void setNextIndent(int i) {
        this.f113684h = i;
    }

    @Override // org.apache.xml.serialize.Printer
    public void setThisIndent(int i) {
        this.f113683g = i;
    }

    @Override // org.apache.xml.serialize.Printer
    public void unindent() {
        int indent = this.f113684h - this._format.getIndent();
        this.f113684h = indent;
        if (indent < 0) {
            this.f113684h = 0;
        }
        if (this.f113680d.length() + this.f113682f + this.f113681e.length() == 0) {
            this.f113683g = this.f113684h;
        }
    }

    @Override // org.apache.xml.serialize.Printer
    public void breakLine(boolean z) {
        if (this.f113681e.length() > 0) {
            while (this.f113682f > 0) {
                this.f113680d.append(' ');
                this.f113682f--;
            }
            this.f113680d.append((Object) this.f113681e);
            this.f113681e = new StringBuffer(20);
        }
        flushLine(z);
        try {
            this._writer.write(this._format.getLineSeparator());
        } catch (IOException e) {
            if (this._exception == null) {
                this._exception = e;
            }
        }
    }

    @Override // org.apache.xml.serialize.Printer
    public void printText(String str) {
        this.f113681e.append(str);
    }

    @Override // org.apache.xml.serialize.Printer
    public void printText(StringBuffer stringBuffer) {
        this.f113681e.append(stringBuffer.toString());
    }

    @Override // org.apache.xml.serialize.Printer
    public void printText(char[] cArr, int i, int i2) {
        this.f113681e.append(cArr, i, i2);
    }
}
