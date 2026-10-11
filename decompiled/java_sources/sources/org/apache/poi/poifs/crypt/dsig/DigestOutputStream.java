package org.apache.poi.poifs.crypt.dsig;

import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.PrivateKey;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.poifs.crypt.ChainingMode;
import org.apache.poi.poifs.crypt.CipherAlgorithm;
import org.apache.poi.poifs.crypt.CryptoFunctions;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.ietf.jgss.GSSException;
import org.ietf.jgss.Oid;

/* loaded from: classes12.dex */
class DigestOutputStream extends OutputStream {
    final HashAlgorithm algo;
    final PrivateKey key;

    /* renamed from: md */
    private MessageDigest f111457md;

    public DigestOutputStream(HashAlgorithm hashAlgorithm, PrivateKey privateKey) {
        this.algo = hashAlgorithm;
        this.key = privateKey;
    }

    public static boolean isMSCapi(PrivateKey privateKey) {
        return privateKey != null && privateKey.getClass().getName().contains("mscapi");
    }

    public byte[] getHashMagic() {
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                byte[] der = new Oid(this.algo.rsaOid).getDER();
                unsynchronizedByteArrayOutputStream.write(48);
                unsynchronizedByteArrayOutputStream.write(this.algo.hashSize + der.length + 6);
                unsynchronizedByteArrayOutputStream.write(48);
                unsynchronizedByteArrayOutputStream.write(der.length + 2);
                unsynchronizedByteArrayOutputStream.write(der);
                unsynchronizedByteArrayOutputStream.write(new byte[]{5, 0, 4});
                unsynchronizedByteArrayOutputStream.write(this.algo.hashSize);
                byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                unsynchronizedByteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        unsynchronizedByteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (GSSException | IOException e) {
            throw new IllegalStateException((Throwable) e);
        }
    }

    public void init() throws GeneralSecurityException {
        if (!isMSCapi(this.key)) {
            this.f111457md = CryptoFunctions.getMessageDigest(this.algo);
            return;
        }
        throw new EncryptedDocumentException("Windows keystore entries can't be signed with the " + this.algo + " hash. Please use one digest algorithm of sha1 / sha256 / sha384 / sha512.");
    }

    public byte[] sign() throws IOException, GeneralSecurityException {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            unsynchronizedByteArrayOutputStream.write(getHashMagic());
            unsynchronizedByteArrayOutputStream.write(this.f111457md.digest());
            byte[] doFinal = CryptoFunctions.getCipher(this.key, CipherAlgorithm.rsa, ChainingMode.ecb, null, 1, "PKCS1Padding").doFinal(unsynchronizedByteArrayOutputStream.toByteArray());
            unsynchronizedByteArrayOutputStream.close();
            return doFinal;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    unsynchronizedByteArrayOutputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f111457md.update((byte) i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f111457md.update(bArr, i, i2);
    }
}
