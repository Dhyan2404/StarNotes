package net.p110sf.saxon.lib;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.Writer;
import javax.xml.transform.stream.StreamResult;

/* loaded from: classes11.dex */
public class StandardLogger extends Logger {

    /* renamed from: b */
    public PrintWriter f100571b;

    /* renamed from: c */
    public int f100572c;

    /* renamed from: d */
    public boolean f100573d;

    public StandardLogger() {
        this.f100571b = new PrintWriter(System.err);
        this.f100572c = 0;
        this.f100573d = false;
    }

    @Override // net.p110sf.saxon.lib.Logger
    public StreamResult asStreamResult() {
        return new StreamResult(this.f100571b);
    }

    @Override // net.p110sf.saxon.lib.Logger
    public void close() {
        if (this.f100573d) {
            this.f100571b.close();
        }
    }

    public PrintWriter getPrintWriter() {
        return this.f100571b;
    }

    public int getThreshold() {
        return this.f100572c;
    }

    @Override // net.p110sf.saxon.lib.Logger
    public void println(String str, int i) {
        if (i >= this.f100572c) {
            this.f100571b.write(str + "\n");
            this.f100571b.flush();
        }
    }

    public void setPrintStream(PrintStream printStream) {
        this.f100571b = new PrintWriter(printStream);
    }

    public void setPrintWriter(PrintWriter printWriter) {
        this.f100571b = printWriter;
    }

    public void setThreshold(int i) {
        this.f100572c = i;
    }

    public StandardLogger(PrintStream printStream) {
        this.f100571b = new PrintWriter(System.err);
        this.f100572c = 0;
        this.f100573d = false;
        setPrintStream(printStream);
    }

    public StandardLogger(Writer writer) {
        this.f100571b = new PrintWriter(System.err);
        this.f100572c = 0;
        this.f100573d = false;
        setPrintWriter(new PrintWriter(writer));
    }

    public StandardLogger(File file) throws FileNotFoundException {
        this.f100571b = new PrintWriter(System.err);
        this.f100572c = 0;
        this.f100573d = false;
        setPrintStream(new PrintStream(file));
        this.f100573d = true;
    }
}
