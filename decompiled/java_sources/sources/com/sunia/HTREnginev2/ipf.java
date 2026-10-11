package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;

@RequiresApi(19)
/* loaded from: classes3.dex */
public class ipf {

    /* renamed from: a */
    public static final int f73471a = 8;

    /* renamed from: b */
    public static final int f73472b = 1;

    /* renamed from: c */
    public static final int f73473c = 2;

    /* renamed from: d */
    public static final int f73474d = 4;

    /* renamed from: a */
    public static int m54749a(int i) {
        return (((i + 8) - 1) & (-8)) / 8;
    }

    /* renamed from: b */
    public static byte[] m54750b(@NonNull byte[] bArr) throws IOException {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } finally {
            }
        } catch (Throwable th) {
            deflater.end();
            throw th;
        }
    }

    @NonNull
    /* renamed from: c */
    public static RuntimeException m54751c(@Nullable String str) {
        return new IllegalStateException(str);
    }

    @NonNull
    /* renamed from: d */
    public static byte[] m54752d(@NonNull InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read < 0) {
                throw m54751c("Not enough bytes to read: " + i);
            }
            i2 += read;
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0059, code lost:
    
        if (r0.finished() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0065, code lost:
    
        throw m54751c("Inflater did not finish");
     */
    @androidx.annotation.NonNull
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m54753e(@androidx.annotation.NonNull java.io.InputStream r8, int r9, int r10) throws java.io.IOException {
        /*
            java.util.zip.Inflater r0 = new java.util.zip.Inflater
            r0.<init>()
            byte[] r1 = new byte[r10]     // Catch: java.lang.Throwable -> L84
            r2 = 2048(0x800, float:2.87E-42)
            byte[] r2 = new byte[r2]     // Catch: java.lang.Throwable -> L84
            r3 = 0
            r4 = r3
            r5 = r4
        Le:
            boolean r6 = r0.finished()     // Catch: java.lang.Throwable -> L84
            if (r6 != 0) goto L53
            boolean r6 = r0.needsDictionary()     // Catch: java.lang.Throwable -> L84
            if (r6 != 0) goto L53
            if (r4 >= r9) goto L53
            int r6 = r8.read(r2)     // Catch: java.lang.Throwable -> L84
            if (r6 < 0) goto L38
            r0.setInput(r2, r3, r6)     // Catch: java.lang.Throwable -> L84
            int r7 = r10 - r5
            int r7 = r0.inflate(r1, r5, r7)     // Catch: java.util.zip.DataFormatException -> L2e java.lang.Throwable -> L84
            int r5 = r5 + r7
            int r4 = r4 + r6
            goto Le
        L2e:
            r8 = move-exception
            java.lang.String r8 = r8.getMessage()     // Catch: java.lang.Throwable -> L84
            java.lang.RuntimeException r8 = m54751c(r8)     // Catch: java.lang.Throwable -> L84
            throw r8     // Catch: java.lang.Throwable -> L84
        L38:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L84
            r8.<init>()     // Catch: java.lang.Throwable -> L84
            java.lang.String r10 = "Invalid zip data. Stream ended after $totalBytesRead bytes. Expected "
            r8.append(r10)     // Catch: java.lang.Throwable -> L84
            r8.append(r9)     // Catch: java.lang.Throwable -> L84
            java.lang.String r9 = " bytes"
            r8.append(r9)     // Catch: java.lang.Throwable -> L84
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L84
            java.lang.RuntimeException r8 = m54751c(r8)     // Catch: java.lang.Throwable -> L84
            throw r8     // Catch: java.lang.Throwable -> L84
        L53:
            if (r4 != r9) goto L66
            boolean r8 = r0.finished()     // Catch: java.lang.Throwable -> L84
            if (r8 == 0) goto L5f
            r0.end()
            return r1
        L5f:
            java.lang.String r8 = "Inflater did not finish"
            java.lang.RuntimeException r8 = m54751c(r8)     // Catch: java.lang.Throwable -> L84
            throw r8     // Catch: java.lang.Throwable -> L84
        L66:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L84
            r8.<init>()     // Catch: java.lang.Throwable -> L84
            java.lang.String r10 = "Didn't read enough bytes during decompression. expected="
            r8.append(r10)     // Catch: java.lang.Throwable -> L84
            r8.append(r9)     // Catch: java.lang.Throwable -> L84
            java.lang.String r9 = " actual="
            r8.append(r9)     // Catch: java.lang.Throwable -> L84
            r8.append(r4)     // Catch: java.lang.Throwable -> L84
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L84
            java.lang.RuntimeException r8 = m54751c(r8)     // Catch: java.lang.Throwable -> L84
            throw r8     // Catch: java.lang.Throwable -> L84
        L84:
            r8 = move-exception
            r0.end()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.ipf.m54753e(java.io.InputStream, int, int):byte[]");
    }

    @NonNull
    /* renamed from: f */
    public static String m54754f(InputStream inputStream, int i) throws IOException {
        return new String(m54752d(inputStream, i), StandardCharsets.UTF_8);
    }

    /* renamed from: g */
    public static long m54755g(@NonNull InputStream inputStream, int i) throws IOException {
        byte[] m54752d = m54752d(inputStream, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j += (m54752d[i2] & 255) << (i2 * 8);
        }
        return j;
    }

    /* renamed from: h */
    public static int m54756h(@NonNull InputStream inputStream) throws IOException {
        return (int) m54755g(inputStream, 2);
    }

    /* renamed from: i */
    public static long m54757i(@NonNull InputStream inputStream) throws IOException {
        return m54755g(inputStream, 4);
    }

    /* renamed from: j */
    public static int m54758j(@NonNull InputStream inputStream) throws IOException {
        return (int) m54755g(inputStream, 1);
    }

    /* renamed from: k */
    public static int m54759k(@NonNull String str) {
        return str.getBytes(StandardCharsets.UTF_8).length;
    }

    /* renamed from: l */
    public static void m54760l(@NonNull InputStream inputStream, @NonNull OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[512];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    /* renamed from: m */
    public static void m54761m(@NonNull OutputStream outputStream, byte[] bArr) throws IOException {
        m54765q(outputStream, bArr.length);
        byte[] m54750b = m54750b(bArr);
        m54765q(outputStream, m54750b.length);
        outputStream.write(m54750b);
    }

    /* renamed from: n */
    public static void m54762n(@NonNull OutputStream outputStream, @NonNull String str) throws IOException {
        outputStream.write(str.getBytes(StandardCharsets.UTF_8));
    }

    /* renamed from: o */
    public static void m54763o(@NonNull OutputStream outputStream, long j, int i) throws IOException {
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) ((j >> (i2 * 8)) & 255);
        }
        outputStream.write(bArr);
    }

    /* renamed from: p */
    public static void m54764p(@NonNull OutputStream outputStream, int i) throws IOException {
        m54763o(outputStream, i, 2);
    }

    /* renamed from: q */
    public static void m54765q(@NonNull OutputStream outputStream, long j) throws IOException {
        m54763o(outputStream, j, 4);
    }

    /* renamed from: r */
    public static void m54766r(@NonNull OutputStream outputStream, int i) throws IOException {
        m54763o(outputStream, i, 1);
    }
}
