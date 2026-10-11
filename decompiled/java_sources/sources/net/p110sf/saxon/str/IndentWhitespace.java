package net.p110sf.saxon.str;

import java.io.IOException;
import java.util.Arrays;
import java.util.function.Supplier;
import net.p110sf.saxon.p111z.ConcatenatingIntIterator;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntRepeatIterator;
import net.p110sf.saxon.str.IndentWhitespace;

/* loaded from: classes11.dex */
public class IndentWhitespace extends WhitespaceString {

    /* renamed from: e */
    public final int f101664e;

    /* renamed from: f */
    public final int f101665f;

    public IndentWhitespace(int i, int i2) {
        this.f101664e = i;
        this.f101665f = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ IntIterator m63882f() {
        return new IntRepeatIterator(32, this.f101665f);
    }

    /* renamed from: of */
    public static IndentWhitespace m63883of(int i, int i2) {
        return new IndentWhitespace(i, i2);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int codePointAt(long j) {
        if (j >= 0 && j < this.f101664e) {
            return 10;
        }
        if (j <= this.f101664e + this.f101665f) {
            return 32;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public IntIterator codePoints() {
        return new ConcatenatingIntIterator(new IntRepeatIterator(10, this.f101664e), new Supplier() { // from class: com.sunia.HTREnginev2.nji
            @Override // java.util.function.Supplier
            public final Object get() {
                IntIterator m63882f;
                m63882f = IndentWhitespace.this.m63882f();
                return m63882f;
            }
        });
    }

    public int getNewlines() {
        return this.f101664e;
    }

    public int getSpaces() {
        return this.f101665f;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long length() {
        return this.f101664e + this.f101665f;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int length32() {
        return this.f101664e + this.f101665f;
    }

    @Override // net.p110sf.saxon.str.WhitespaceString
    public String toString() {
        int i = this.f101664e;
        char[] cArr = new char[this.f101665f + i];
        Arrays.fill(cArr, 0, i, '\n');
        int i2 = this.f101664e;
        Arrays.fill(cArr, i2, this.f101665f + i2, ' ');
        return new String(cArr);
    }

    @Override // net.p110sf.saxon.str.WhitespaceString
    public UnicodeString uncompress() {
        int i = this.f101664e;
        byte[] bArr = new byte[this.f101665f + i];
        Arrays.fill(bArr, 0, i, (byte) 10);
        int i2 = this.f101664e;
        Arrays.fill(bArr, i2, this.f101665f + i2, (byte) 32);
        return new Twine8(bArr);
    }

    @Override // net.p110sf.saxon.str.WhitespaceString
    public void write(UnicodeWriter unicodeWriter) throws IOException {
        int i = this.f101664e;
        if (i > 0) {
            unicodeWriter.writeRepeatedAscii((byte) 10, i);
        }
        int i2 = this.f101665f;
        if (i2 > 0) {
            unicodeWriter.writeRepeatedAscii((byte) 32, i2);
        }
    }

    @Override // net.p110sf.saxon.str.WhitespaceString
    public void writeEscape(boolean[] zArr, UnicodeWriter unicodeWriter) throws IOException {
        if (zArr[10]) {
            for (int i = 0; i < this.f101664e; i++) {
                unicodeWriter.writeAscii(StringConstants.ESCAPE_NL);
            }
        } else {
            unicodeWriter.writeRepeatedAscii((byte) 10, this.f101664e);
        }
        unicodeWriter.writeRepeatedAscii((byte) 32, this.f101665f);
    }
}
