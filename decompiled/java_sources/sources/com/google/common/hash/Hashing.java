package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import com.onyx.android.sdk.data.utils.EncryptUtils;
import com.sunia.HTREnginev2.AbstractC14530v2;
import com.sunia.HTREnginev2.dge;
import com.sunia.HTREnginev2.gii;
import com.sunia.HTREnginev2.j6j;
import com.sunia.HTREnginev2.lmg;
import com.sunia.HTREnginev2.wnf;
import com.sunia.HTREnginev2.z8g;
import java.security.Key;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.zip.Adler32;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import javax.annotation.CheckForNull;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.apache.commons.codec.digest.MurmurHash3;

@wnf
/* loaded from: classes6.dex */
public final class Hashing {

    /* renamed from: a */
    public static final int f34762a = (int) System.currentTimeMillis();

    @Immutable
    /* loaded from: classes6.dex */
    public enum ChecksumType implements gii<Checksum> {
        CRC_32("Hashing.crc32()") { // from class: com.google.common.hash.Hashing.ChecksumType.1
            @Override // com.google.common.base.Supplier, java.util.function.Supplier
            public Checksum get() {
                return new CRC32();
            }
        },
        ADLER_32("Hashing.adler32()") { // from class: com.google.common.hash.Hashing.ChecksumType.2
            @Override // com.google.common.base.Supplier, java.util.function.Supplier
            public Checksum get() {
                return new Adler32();
            }
        };

        public final HashFunction hashFunction;

        ChecksumType(String str) {
            this.hashFunction = new ChecksumHashFunction(this, 32, str);
        }
    }

    /* renamed from: com.google.common.hash.Hashing$b */
    /* loaded from: classes6.dex */
    public static final class C6170b extends AbstractC14530v2 {
        @Override // com.sunia.HTREnginev2.AbstractC14530v2
        /* renamed from: b */
        public HashCode mo27143b(Hasher[] hasherArr) {
            byte[] bArr = new byte[bits() / 8];
            int i = 0;
            for (Hasher hasher : hasherArr) {
                HashCode hash = hasher.hash();
                i += hash.writeBytesTo(bArr, i, hash.bits() / 8);
            }
            return HashCode.fromBytesNoCopy(bArr);
        }

        @Override // com.google.common.hash.HashFunction
        public int bits() {
            int i = 0;
            for (HashFunction hashFunction : this.f87049e) {
                i += hashFunction.bits();
            }
            return i;
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof C6170b) {
                return Arrays.equals(this.f87049e, ((C6170b) obj).f87049e);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.f87049e);
        }

        public C6170b(HashFunction... hashFunctionArr) {
            super(hashFunctionArr);
            for (HashFunction hashFunction : hashFunctionArr) {
                Preconditions.checkArgument(hashFunction.bits() % 8 == 0, "the number of bits (%s) in hashFunction (%s) must be divisible by 8", hashFunction.bits(), (Object) hashFunction);
            }
        }
    }

    /* renamed from: com.google.common.hash.Hashing$c */
    /* loaded from: classes6.dex */
    public static final class C6171c {

        /* renamed from: a */
        public long f34763a;

        public C6171c(long j) {
            this.f34763a = j;
        }

        /* renamed from: a */
        public double m27144a() {
            this.f34763a = (this.f34763a * MurmurHash3.NULL_HASHCODE) + 1;
            return (((int) (r2 >>> 33)) + 1) / 2.147483648E9d;
        }
    }

    /* renamed from: com.google.common.hash.Hashing$d */
    /* loaded from: classes6.dex */
    public static class C6172d {

        /* renamed from: a */
        public static final HashFunction f34764a = new MessageDigestHashFunction("MD5", "Hashing.md5()");
    }

    /* renamed from: com.google.common.hash.Hashing$e */
    /* loaded from: classes6.dex */
    public static class C6173e {

        /* renamed from: a */
        public static final HashFunction f34765a = new MessageDigestHashFunction(MessageDigestAlgorithms.SHA_1, "Hashing.sha1()");
    }

    /* renamed from: com.google.common.hash.Hashing$f */
    /* loaded from: classes6.dex */
    public static class C6174f {

        /* renamed from: a */
        public static final HashFunction f34766a = new MessageDigestHashFunction(MessageDigestAlgorithms.SHA_256, "Hashing.sha256()");
    }

    /* renamed from: com.google.common.hash.Hashing$g */
    /* loaded from: classes6.dex */
    public static class C6175g {

        /* renamed from: a */
        public static final HashFunction f34767a = new MessageDigestHashFunction(MessageDigestAlgorithms.SHA_384, "Hashing.sha384()");
    }

    /* renamed from: com.google.common.hash.Hashing$h */
    /* loaded from: classes6.dex */
    public static class C6176h {

        /* renamed from: a */
        public static final HashFunction f34768a = new MessageDigestHashFunction(MessageDigestAlgorithms.SHA_512, "Hashing.sha512()");
    }

    /* renamed from: a */
    public static int m27141a(int i) {
        Preconditions.checkArgument(i > 0, "Number of bits must be positive");
        return (i + 31) & (-32);
    }

    public static HashFunction adler32() {
        return ChecksumType.ADLER_32.hashFunction;
    }

    /* renamed from: b */
    public static String m27142b(String str, Key key) {
        return String.format("Hashing.%s(Key[algorithm=%s, format=%s])", str, key.getAlgorithm(), key.getFormat());
    }

    public static HashCode combineOrdered(Iterable<HashCode> iterable) {
        Iterator<HashCode> it2 = iterable.iterator();
        Preconditions.checkArgument(it2.hasNext(), "Must be at least 1 hash code to combine.");
        int bits = it2.next().bits() / 8;
        byte[] bArr = new byte[bits];
        Iterator<HashCode> it3 = iterable.iterator();
        while (it3.hasNext()) {
            byte[] asBytes = it3.next().asBytes();
            Preconditions.checkArgument(asBytes.length == bits, "All hashcodes must have the same bit length.");
            for (int i = 0; i < asBytes.length; i++) {
                bArr[i] = (byte) ((bArr[i] * 37) ^ asBytes[i]);
            }
        }
        return HashCode.fromBytesNoCopy(bArr);
    }

    public static HashCode combineUnordered(Iterable<HashCode> iterable) {
        Iterator<HashCode> it2 = iterable.iterator();
        Preconditions.checkArgument(it2.hasNext(), "Must be at least 1 hash code to combine.");
        int bits = it2.next().bits() / 8;
        byte[] bArr = new byte[bits];
        Iterator<HashCode> it3 = iterable.iterator();
        while (it3.hasNext()) {
            byte[] asBytes = it3.next().asBytes();
            Preconditions.checkArgument(asBytes.length == bits, "All hashcodes must have the same bit length.");
            for (int i = 0; i < asBytes.length; i++) {
                bArr[i] = (byte) (bArr[i] + asBytes[i]);
            }
        }
        return HashCode.fromBytesNoCopy(bArr);
    }

    public static HashFunction concatenating(HashFunction hashFunction, HashFunction hashFunction2, HashFunction... hashFunctionArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(hashFunction);
        arrayList.add(hashFunction2);
        Collections.addAll(arrayList, hashFunctionArr);
        return new C6170b((HashFunction[]) arrayList.toArray(new HashFunction[0]));
    }

    public static int consistentHash(HashCode hashCode, int i) {
        return consistentHash(hashCode.padToLong(), i);
    }

    public static HashFunction crc32() {
        return ChecksumType.CRC_32.hashFunction;
    }

    public static HashFunction crc32c() {
        return dge.f67837e;
    }

    public static HashFunction farmHashFingerprint64() {
        return z8g.f91521e;
    }

    public static HashFunction fingerprint2011() {
        return lmg.f76607e;
    }

    public static HashFunction goodFastHash(int i) {
        int m27141a = m27141a(i);
        if (m27141a == 32) {
            return Murmur3_32HashFunction.GOOD_FAST_HASH_32;
        }
        if (m27141a <= 128) {
            return Murmur3_128HashFunction.GOOD_FAST_HASH_128;
        }
        int i2 = (m27141a + 127) / 128;
        HashFunction[] hashFunctionArr = new HashFunction[i2];
        hashFunctionArr[0] = Murmur3_128HashFunction.GOOD_FAST_HASH_128;
        int i3 = f34762a;
        for (int i4 = 1; i4 < i2; i4++) {
            i3 += 1500450271;
            hashFunctionArr[i4] = murmur3_128(i3);
        }
        return new C6170b(hashFunctionArr);
    }

    public static HashFunction hmacMd5(Key key) {
        return new j6j("HmacMD5", key, m27142b("hmacMd5", key));
    }

    public static HashFunction hmacSha1(Key key) {
        return new j6j("HmacSHA1", key, m27142b("hmacSha1", key));
    }

    public static HashFunction hmacSha256(Key key) {
        return new j6j(EncryptUtils.HMACSHA256, key, m27142b("hmacSha256", key));
    }

    public static HashFunction hmacSha512(Key key) {
        return new j6j("HmacSHA512", key, m27142b("hmacSha512", key));
    }

    @Deprecated
    public static HashFunction md5() {
        return C6172d.f34764a;
    }

    public static HashFunction murmur3_128(int i) {
        return new Murmur3_128HashFunction(i);
    }

    @Deprecated
    public static HashFunction murmur3_32(int i) {
        return new Murmur3_32HashFunction(i, false);
    }

    public static HashFunction murmur3_32_fixed(int i) {
        return new Murmur3_32HashFunction(i, true);
    }

    @Deprecated
    public static HashFunction sha1() {
        return C6173e.f34765a;
    }

    public static HashFunction sha256() {
        return C6174f.f34766a;
    }

    public static HashFunction sha384() {
        return C6175g.f34767a;
    }

    public static HashFunction sha512() {
        return C6176h.f34768a;
    }

    public static HashFunction sipHash24() {
        return SipHashFunction.SIP_HASH_24;
    }

    public static int consistentHash(long j, int i) {
        int i2 = 0;
        Preconditions.checkArgument(i > 0, "buckets must be positive: %s", i);
        C6171c c6171c = new C6171c(j);
        while (true) {
            int m27144a = (int) ((i2 + 1) / c6171c.m27144a());
            if (m27144a < 0 || m27144a >= i) {
                break;
            }
            i2 = m27144a;
        }
        return i2;
    }

    public static HashFunction hmacMd5(byte[] bArr) {
        return hmacMd5(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), "HmacMD5"));
    }

    public static HashFunction hmacSha1(byte[] bArr) {
        return hmacSha1(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), "HmacSHA1"));
    }

    public static HashFunction hmacSha256(byte[] bArr) {
        return hmacSha256(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), EncryptUtils.HMACSHA256));
    }

    public static HashFunction hmacSha512(byte[] bArr) {
        return hmacSha512(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), "HmacSHA512"));
    }

    public static HashFunction murmur3_128() {
        return Murmur3_128HashFunction.MURMUR3_128;
    }

    @Deprecated
    public static HashFunction murmur3_32() {
        return Murmur3_32HashFunction.MURMUR3_32;
    }

    public static HashFunction murmur3_32_fixed() {
        return Murmur3_32HashFunction.MURMUR3_32_FIXED;
    }

    public static HashFunction sipHash24(long j, long j2) {
        return new SipHashFunction(2, 4, j, j2);
    }

    public static HashFunction concatenating(Iterable<HashFunction> iterable) {
        Preconditions.checkNotNull(iterable);
        ArrayList arrayList = new ArrayList();
        Iterator<HashFunction> it2 = iterable.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next());
        }
        Preconditions.checkArgument(!arrayList.isEmpty(), "number of hash functions (%s) must be > 0", arrayList.size());
        return new C6170b((HashFunction[]) arrayList.toArray(new HashFunction[0]));
    }
}
