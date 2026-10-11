package com.google.firebase.installations;

import android.util.Base64;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.UUID;

/* loaded from: classes6.dex */
public class RandomFidGenerator {

    /* renamed from: a */
    public static final byte f35921a = Byte.parseByte("01110000", 2);

    /* renamed from: b */
    public static final byte f35922b = Byte.parseByte("00001111", 2);

    /* renamed from: c */
    public static final int f35923c = 22;

    /* renamed from: a */
    public static String m28155a(byte[] bArr) {
        return new String(Base64.encode(bArr, 11), Charset.defaultCharset()).substring(0, 22);
    }

    /* renamed from: b */
    public static byte[] m28156b(UUID uuid, byte[] bArr) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.putLong(uuid.getMostSignificantBits());
        wrap.putLong(uuid.getLeastSignificantBits());
        return wrap.array();
    }

    @NonNull
    public String createRandomFid() {
        byte[] m28156b = m28156b(UUID.randomUUID(), new byte[17]);
        byte b = m28156b[0];
        m28156b[16] = b;
        m28156b[0] = (byte) ((b & f35922b) | f35921a);
        return m28155a(m28156b);
    }
}
