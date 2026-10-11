package net.p110sf.saxon.str;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes11.dex */
public interface UnicodeWriter {

    /* renamed from: net.sf.saxon.str.UnicodeWriter$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18518a {

        /* renamed from: a */
        public static final /* synthetic */ boolean f101720a = false;
    }

    static {
        boolean z = C18518a.f101720a;
    }

    default void close() throws IOException {
    }

    default void flush() throws IOException {
    }

    void write(String str) throws IOException;

    void write(UnicodeString unicodeString) throws IOException;

    void writeAscii(byte[] bArr) throws IOException;

    default void writeCodePoint(int i) throws IOException {
        write(new UnicodeChar(i));
    }

    default void writeRepeatedAscii(byte b, int i) throws IOException {
        if (!C18518a.f101720a && b < 0) {
            throw new AssertionError();
        }
        byte[] bArr = new byte[i];
        Arrays.fill(bArr, b);
        writeAscii(bArr);
    }
}
