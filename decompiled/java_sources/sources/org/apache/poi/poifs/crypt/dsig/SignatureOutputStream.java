package org.apache.poi.poifs.crypt.dsig;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import org.apache.poi.poifs.crypt.HashAlgorithm;

/* loaded from: classes12.dex */
class SignatureOutputStream extends DigestOutputStream {
    Signature signature;

    public SignatureOutputStream(HashAlgorithm hashAlgorithm, PrivateKey privateKey) {
        super(hashAlgorithm, privateKey);
    }

    @Override // org.apache.poi.poifs.crypt.dsig.DigestOutputStream
    public void init() throws GeneralSecurityException {
        String str = DigestOutputStream.isMSCapi(this.key) ? "SunMSCAPI" : "SunRsaSign";
        if (Security.getProvider(str) != null) {
            this.signature = Signature.getInstance(this.algo.ecmaString + "withRSA", str);
        } else {
            this.signature = Signature.getInstance(this.algo.ecmaString + "withRSA");
        }
        this.signature.initSign(this.key);
    }

    @Override // org.apache.poi.poifs.crypt.dsig.DigestOutputStream
    public byte[] sign() throws SignatureException {
        return this.signature.sign();
    }

    @Override // org.apache.poi.poifs.crypt.dsig.DigestOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        try {
            this.signature.update((byte) i);
        } catch (SignatureException e) {
            throw new IOException(e);
        }
    }

    @Override // org.apache.poi.poifs.crypt.dsig.DigestOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.signature.update(bArr, i, i2);
        } catch (SignatureException e) {
            throw new IOException(e);
        }
    }
}
