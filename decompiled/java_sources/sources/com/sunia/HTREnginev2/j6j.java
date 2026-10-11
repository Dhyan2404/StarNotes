package com.sunia.HTREnginev2;

import com.google.common.base.Preconditions;
import com.google.common.hash.HashCode;
import com.google.common.hash.Hasher;
import com.google.errorprone.annotations.Immutable;
import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;

@Immutable
@wnf
/* loaded from: classes6.dex */
public final class j6j extends AbstractC14378s3 {

    /* renamed from: e */
    public final Mac f73988e;

    /* renamed from: f */
    public final Key f73989f;

    /* renamed from: g */
    public final String f73990g;

    /* renamed from: h */
    public final int f73991h;

    /* renamed from: i */
    public final boolean f73992i;

    /* renamed from: com.sunia.HTREnginev2.j6j$b */
    /* loaded from: classes6.dex */
    public static final class C13913b extends AbstractC14121n2 {

        /* renamed from: b */
        public final Mac f73993b;

        /* renamed from: c */
        public boolean f73994c;

        @Override // com.sunia.HTREnginev2.AbstractC14121n2
        /* renamed from: b */
        public void mo27138b(byte b) {
            m54898f();
            this.f73993b.update(b);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14121n2
        /* renamed from: c */
        public void mo27155c(ByteBuffer byteBuffer) {
            m54898f();
            Preconditions.checkNotNull(byteBuffer);
            this.f73993b.update(byteBuffer);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14121n2
        /* renamed from: d */
        public void mo54897d(byte[] bArr) {
            m54898f();
            this.f73993b.update(bArr);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14121n2
        /* renamed from: e */
        public void mo27139e(byte[] bArr, int i, int i2) {
            m54898f();
            this.f73993b.update(bArr, i, i2);
        }

        /* renamed from: f */
        public final void m54898f() {
            Preconditions.checkState(!this.f73994c, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            m54898f();
            this.f73994c = true;
            return HashCode.fromBytesNoCopy(this.f73993b.doFinal());
        }

        public C13913b(Mac mac) {
            this.f73993b = mac;
        }
    }

    public j6j(String str, Key key, String str2) {
        Mac m54895a = m54895a(str, key);
        this.f73988e = m54895a;
        this.f73989f = (Key) Preconditions.checkNotNull(key);
        this.f73990g = (String) Preconditions.checkNotNull(str2);
        this.f73991h = m54895a.getMacLength() * 8;
        this.f73992i = m54896b(m54895a);
    }

    /* renamed from: a */
    public static Mac m54895a(String str, Key key) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(key);
            return mac;
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new IllegalStateException(e2);
        }
    }

    /* renamed from: b */
    public static boolean m54896b(Mac mac) {
        try {
            mac.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.f73991h;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        if (this.f73992i) {
            try {
                return new C13913b((Mac) this.f73988e.clone());
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new C13913b(m54895a(this.f73988e.getAlgorithm(), this.f73989f));
    }

    public String toString() {
        return this.f73990g;
    }
}
