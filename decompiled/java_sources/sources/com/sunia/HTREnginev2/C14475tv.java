package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* renamed from: com.sunia.HTREnginev2.tv */
/* loaded from: classes6.dex */
public final class C14475tv {

    /* renamed from: a */
    public static final int f85788a = 1024;

    /* renamed from: b */
    public static final int f85789b = 16384;

    /* renamed from: c */
    public static final float f85790c = 0.5f;

    /* renamed from: d */
    public static final ThreadLocal<SoftReference<byte[]>> f85791d = new ThreadLocal<>();

    /* renamed from: e */
    public static final Class<?> f85792e;

    /* renamed from: f */
    public static final long f85793f;

    static {
        Class<?> m57457f = m57457f("java.io.FileOutputStream");
        f85792e = m57457f;
        f85793f = m57454c(m57457f);
    }

    /* renamed from: a */
    public static void m57452a() {
        f85791d.set(null);
    }

    /* renamed from: b */
    public static byte[] m57453b() {
        SoftReference<byte[]> softReference = f85791d.get();
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    /* renamed from: c */
    public static long m57454c(Class<?> clazz) {
        if (clazz == null) {
            return -1L;
        }
        try {
            if (dun.m53730U()) {
                return dun.m53735Z(clazz.getDeclaredField("channel"));
            }
            return -1L;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    /* renamed from: d */
    public static byte[] m57455d(int requestedSize) {
        int max = Math.max(requestedSize, 1024);
        byte[] m57453b = m57453b();
        if (m57453b == null || m57456e(max, m57453b.length)) {
            m57453b = new byte[max];
            if (max <= 16384) {
                m57458g(m57453b);
            }
        }
        return m57453b;
    }

    /* renamed from: e */
    public static boolean m57456e(int requestedSize, int bufferLength) {
        return bufferLength < requestedSize && ((float) bufferLength) < ((float) requestedSize) * 0.5f;
    }

    /* renamed from: f */
    public static Class<?> m57457f(String className) {
        try {
            return Class.forName(className);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* renamed from: g */
    public static void m57458g(byte[] value) {
        f85791d.set(new SoftReference<>(value));
    }

    /* renamed from: h */
    public static void m57459h(ByteBuffer buffer, OutputStream output) throws IOException {
        int position = buffer.position();
        try {
            if (buffer.hasArray()) {
                output.write(buffer.array(), buffer.arrayOffset() + buffer.position(), buffer.remaining());
            } else if (!m57460i(buffer, output)) {
                byte[] m57455d = m57455d(buffer.remaining());
                while (buffer.hasRemaining()) {
                    int min = Math.min(buffer.remaining(), m57455d.length);
                    buffer.get(m57455d, 0, min);
                    output.write(m57455d, 0, min);
                }
            }
        } finally {
            iri.m54775e(buffer, position);
        }
    }

    /* renamed from: i */
    public static boolean m57460i(ByteBuffer buffer, OutputStream output) throws IOException {
        WritableByteChannel writableByteChannel;
        long j = f85793f;
        if (j < 0 || !f85792e.isInstance(output)) {
            return false;
        }
        try {
            writableByteChannel = (WritableByteChannel) dun.m53726Q(output, j);
        } catch (ClassCastException unused) {
            writableByteChannel = null;
        }
        if (writableByteChannel == null) {
            return false;
        }
        writableByteChannel.write(buffer);
        return true;
    }
}
