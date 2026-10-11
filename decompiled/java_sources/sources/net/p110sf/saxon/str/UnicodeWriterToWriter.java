package net.p110sf.saxon.str;

import java.io.IOException;
import java.io.Writer;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;

/* loaded from: classes11.dex */
public class UnicodeWriterToWriter implements UnicodeWriter {

    /* renamed from: e */
    public final Writer f101721e;

    public UnicodeWriterToWriter(Writer writer) {
        this.f101721e = writer;
    }

    @Override // net.p110sf.saxon.str.UnicodeWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f101721e.close();
    }

    @Override // net.p110sf.saxon.str.UnicodeWriter, java.io.Flushable
    public void flush() throws IOException {
        this.f101721e.flush();
    }

    @Override // net.p110sf.saxon.str.UnicodeWriter
    public void write(UnicodeString unicodeString) throws IOException {
        this.f101721e.write(unicodeString.toString());
    }

    @Override // net.p110sf.saxon.str.UnicodeWriter
    public void writeAscii(byte[] bArr) throws IOException {
        char[] cArr = new char[bArr.length];
        StringTool.copy8to16(bArr, 0, cArr, 0, bArr.length);
        this.f101721e.write(cArr);
    }

    @Override // net.p110sf.saxon.str.UnicodeWriter
    public void writeCodePoint(int i) throws IOException {
        if (i <= 65535) {
            this.f101721e.write((char) i);
        } else {
            this.f101721e.write(UTF16CharacterSet.highSurrogate(i));
            this.f101721e.write(UTF16CharacterSet.lowSurrogate(i));
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeWriter
    public void write(String str) throws IOException {
        this.f101721e.write(str);
    }
}
