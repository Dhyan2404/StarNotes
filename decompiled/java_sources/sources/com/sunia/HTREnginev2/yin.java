package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes3.dex */
public final class yin {

    /* renamed from: a */
    @NonNull
    public final byte[] f90779a;

    /* renamed from: b */
    @Nullable
    public String f90780b;

    /* renamed from: c */
    @Nullable
    public List<byte[]> f90781c;

    public yin(@NonNull byte[] bArr) {
        this.f90779a = bArr;
    }

    /* renamed from: b */
    public static int m58426b(byte[] bArr, byte[] bArr2) {
        if (bArr == bArr2) {
            return 0;
        }
        if (bArr == null) {
            return -1;
        }
        if (bArr2 == null) {
            return 1;
        }
        for (int i = 0; i < Math.min(bArr.length, bArr2.length); i++) {
            byte b = bArr[i];
            byte b2 = bArr2[i];
            if (b != b2) {
                return b - b2;
            }
        }
        if (bArr.length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        return 0;
    }

    @NonNull
    /* renamed from: c */
    public static yin m58427c(String str, List<byte[]> list) throws IOException {
        return new yin(m58428d(str, list), str, list);
    }

    @NonNull
    /* renamed from: d */
    public static byte[] m58428d(@NonNull String str, @NonNull List<byte[]> list) throws IOException {
        Collections.sort(list, new Comparator() { // from class: com.sunia.HTREnginev2.xin
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m58426b;
                m58426b = yin.m58426b((byte[]) obj, (byte[]) obj2);
                return m58426b;
            }
        });
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeUTF(str);
        dataOutputStream.writeInt(list.size());
        for (byte[] bArr : list) {
            dataOutputStream.writeInt(bArr.length);
            dataOutputStream.write(bArr);
        }
        dataOutputStream.flush();
        return byteArrayOutputStream.toByteArray();
    }

    @NonNull
    /* renamed from: e */
    public static yin m58429e(@NonNull byte[] bArr) {
        return new yin(bArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || yin.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f90779a, ((yin) obj).f90779a);
    }

    @NonNull
    /* renamed from: f */
    public byte[] m58430f(int i) throws IOException {
        m58433i();
        List<byte[]> list = this.f90781c;
        if (list != null) {
            return Arrays.copyOf(list.get(i), this.f90781c.get(i).length);
        }
        throw new IllegalStateException();
    }

    /* renamed from: g */
    public int m58431g() throws IOException {
        m58433i();
        List<byte[]> list = this.f90781c;
        if (list != null) {
            return list.size();
        }
        throw new IllegalStateException();
    }

    @NonNull
    /* renamed from: h */
    public String m58432h() throws IOException {
        m58433i();
        String str = this.f90780b;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException();
    }

    public int hashCode() {
        return Arrays.hashCode(this.f90779a);
    }

    /* renamed from: i */
    public final void m58433i() throws IOException {
        if (this.f90780b != null) {
            return;
        }
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(this.f90779a));
        this.f90780b = dataInputStream.readUTF();
        int readInt = dataInputStream.readInt();
        this.f90781c = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            int readInt2 = dataInputStream.readInt();
            byte[] bArr = new byte[readInt2];
            if (dataInputStream.read(bArr) != readInt2) {
                throw new IllegalStateException("Could not read fingerprint");
            }
            this.f90781c.add(bArr);
        }
    }

    @NonNull
    /* renamed from: j */
    public byte[] m58434j() {
        byte[] bArr = this.f90779a;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public yin(@NonNull byte[] bArr, @NonNull String str, @NonNull List<byte[]> list) {
        this.f90779a = bArr;
        this.f90780b = str;
        this.f90781c = new ArrayList(list.size());
        for (byte[] bArr2 : list) {
            this.f90781c.add(Arrays.copyOf(bArr2, bArr2.length));
        }
    }
}
