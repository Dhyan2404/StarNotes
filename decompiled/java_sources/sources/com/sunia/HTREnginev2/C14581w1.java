package com.sunia.HTREnginev2;

import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.apache.commons.compress.PasswordRequiredException;

/* renamed from: com.sunia.HTREnginev2.w1 */
/* loaded from: classes12.dex */
public class C14581w1 extends swd {

    /* renamed from: com.sunia.HTREnginev2.w1$a */
    /* loaded from: classes12.dex */
    public class a extends InputStream {

        /* renamed from: e */
        public boolean f88118e;

        /* renamed from: f */
        public CipherInputStream f88119f;

        /* renamed from: g */
        public final /* synthetic */ rwd f88120g;

        /* renamed from: h */
        public final /* synthetic */ String f88121h;

        /* renamed from: i */
        public final /* synthetic */ byte[] f88122i;

        /* renamed from: j */
        public final /* synthetic */ InputStream f88123j;

        public a(rwd rwdVar, String str, byte[] bArr, InputStream inputStream) {
            this.f88120g = rwdVar;
            this.f88121h = str;
            this.f88122i = bArr;
            this.f88123j = inputStream;
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            CipherInputStream cipherInputStream = this.f88119f;
            if (cipherInputStream != null) {
                cipherInputStream.close();
            }
        }

        /* renamed from: f */
        public final CipherInputStream m57923f() throws IOException {
            byte[] digest;
            if (this.f88118e) {
                return this.f88119f;
            }
            byte[] bArr = this.f88120g.f83570d;
            if (bArr == null) {
                throw new IOException("Missing AES256 properties in " + this.f88121h);
            }
            if (bArr.length < 2) {
                throw new IOException("AES256 properties too short in " + this.f88121h);
            }
            int i = bArr[0] & 255;
            int i2 = i & 63;
            int i3 = bArr[1] & 255;
            int i4 = ((i >> 6) & 1) + (i3 & 15);
            int i5 = ((i >> 7) & 1) + (i3 >> 4);
            int i6 = i5 + 2;
            if (i6 + i4 > bArr.length) {
                throw new IOException("Salt size + IV size too long in " + this.f88121h);
            }
            byte[] bArr2 = new byte[i5];
            System.arraycopy(bArr, 2, bArr2, 0, i5);
            byte[] bArr3 = new byte[16];
            System.arraycopy(this.f88120g.f83570d, i6, bArr3, 0, i4);
            if (this.f88122i == null) {
                throw new PasswordRequiredException(this.f88121h);
            }
            if (i2 == 63) {
                digest = new byte[32];
                System.arraycopy(bArr2, 0, digest, 0, i5);
                byte[] bArr4 = this.f88122i;
                System.arraycopy(bArr4, 0, digest, i5, Math.min(bArr4.length, 32 - i5));
            } else {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256);
                    byte[] bArr5 = new byte[8];
                    for (long j = 0; j < (1 << i2); j++) {
                        messageDigest.update(bArr2);
                        messageDigest.update(this.f88122i);
                        messageDigest.update(bArr5);
                        for (int i7 = 0; i7 < 8; i7++) {
                            byte b = (byte) (bArr5[i7] + 1);
                            bArr5[i7] = b;
                            if (b != 0) {
                                break;
                            }
                        }
                    }
                    digest = messageDigest.digest();
                } catch (NoSuchAlgorithmException e) {
                    throw new IOException("SHA-256 is unsupported by your Java implementation", e);
                }
            }
            SecretKeySpec secretKeySpec = new SecretKeySpec(digest, "AES");
            try {
                Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
                cipher.init(2, secretKeySpec, new IvParameterSpec(bArr3));
                CipherInputStream cipherInputStream = new CipherInputStream(this.f88123j, cipher);
                this.f88119f = cipherInputStream;
                this.f88118e = true;
                return cipherInputStream;
            } catch (GeneralSecurityException e2) {
                throw new IOException("Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)", e2);
            }
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            return m57923f().read();
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            return m57923f().read(bArr, i, i2);
        }
    }

    public C14581w1() {
        super(new Class[0]);
    }

    @Override // com.sunia.HTREnginev2.swd
    /* renamed from: b */
    public InputStream mo56158b(String str, InputStream inputStream, long j, rwd rwdVar, byte[] bArr, int i) {
        return new a(rwdVar, str, bArr, inputStream);
    }
}
