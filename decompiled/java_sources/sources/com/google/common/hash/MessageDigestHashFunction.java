package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import com.sunia.HTREnginev2.AbstractC14121n2;
import com.sunia.HTREnginev2.AbstractC14378s3;
import com.sunia.HTREnginev2.wnf;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

@Immutable
@wnf
/* loaded from: classes6.dex */
final class MessageDigestHashFunction extends AbstractC14378s3 implements Serializable {
    private final int bytes;
    private final MessageDigest prototype;
    private final boolean supportsClone;
    private final String toString;

    /* loaded from: classes6.dex */
    public static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final String algorithmName;
        private final int bytes;
        private final String toString;

        private Object readResolve() {
            return new MessageDigestHashFunction(this.algorithmName, this.bytes, this.toString);
        }

        private SerializedForm(String str, int i, String str2) {
            this.algorithmName = str;
            this.bytes = i;
            this.toString = str2;
        }
    }

    /* renamed from: com.google.common.hash.MessageDigestHashFunction$b */
    /* loaded from: classes6.dex */
    public static final class C6186b extends AbstractC14121n2 {

        /* renamed from: b */
        public final MessageDigest f34774b;

        /* renamed from: c */
        public final int f34775c;

        /* renamed from: d */
        public boolean f34776d;

        @Override // com.sunia.HTREnginev2.AbstractC14121n2
        /* renamed from: b */
        public void mo27138b(byte b) {
            m27156f();
            this.f34774b.update(b);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14121n2
        /* renamed from: c */
        public void mo27155c(ByteBuffer byteBuffer) {
            m27156f();
            this.f34774b.update(byteBuffer);
        }

        @Override // com.sunia.HTREnginev2.AbstractC14121n2
        /* renamed from: e */
        public void mo27139e(byte[] bArr, int i, int i2) {
            m27156f();
            this.f34774b.update(bArr, i, i2);
        }

        /* renamed from: f */
        public final void m27156f() {
            Preconditions.checkState(!this.f34776d, "Cannot re-use a Hasher after calling hash() on it");
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            m27156f();
            this.f34776d = true;
            return this.f34775c == this.f34774b.getDigestLength() ? HashCode.fromBytesNoCopy(this.f34774b.digest()) : HashCode.fromBytesNoCopy(Arrays.copyOf(this.f34774b.digest(), this.f34775c));
        }

        public C6186b(MessageDigest messageDigest, int i) {
            this.f34774b = messageDigest;
            this.f34775c = i;
        }
    }

    public MessageDigestHashFunction(String str, String str2) {
        MessageDigest messageDigest = getMessageDigest(str);
        this.prototype = messageDigest;
        this.bytes = messageDigest.getDigestLength();
        this.toString = (String) Preconditions.checkNotNull(str2);
        this.supportsClone = supportsClone(messageDigest);
    }

    private static MessageDigest getMessageDigest(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    private static boolean supportsClone(MessageDigest messageDigest) {
        try {
            messageDigest.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.bytes * 8;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        if (this.supportsClone) {
            try {
                return new C6186b((MessageDigest) this.prototype.clone(), this.bytes);
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new C6186b(getMessageDigest(this.prototype.getAlgorithm()), this.bytes);
    }

    public String toString() {
        return this.toString;
    }

    public Object writeReplace() {
        return new SerializedForm(this.prototype.getAlgorithm(), this.bytes, this.toString);
    }

    public MessageDigestHashFunction(String str, int i, String str2) {
        this.toString = (String) Preconditions.checkNotNull(str2);
        MessageDigest messageDigest = getMessageDigest(str);
        this.prototype = messageDigest;
        int digestLength = messageDigest.getDigestLength();
        Preconditions.checkArgument(i >= 4 && i <= digestLength, "bytes (%s) must be >= 4 and < %s", i, digestLength);
        this.bytes = i;
        this.supportsClone = supportsClone(messageDigest);
    }
}
