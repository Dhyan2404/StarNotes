package org.apache.poi.poifs.crypt.agile;

import java.util.Iterator;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.poifs.crypt.ChainingMode;
import org.apache.poi.poifs.crypt.CipherAlgorithm;
import org.apache.poi.poifs.crypt.EncryptionVerifier;
import org.apache.poi.poifs.crypt.HashAlgorithm;

/* loaded from: classes12.dex */
public class AgileEncryptionVerifier extends EncryptionVerifier {
    private int blockSize;
    private int keyBits;

    public AgileEncryptionVerifier(String str) {
        this(AgileEncryptionInfoBuilder.parseDescriptor(str));
    }

    public int getBlockSize() {
        return this.blockSize;
    }

    public int getKeySize() {
        return this.keyBits;
    }

    public void setBlockSize(int i) {
        this.blockSize = i;
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionVerifier
    public final void setCipherAlgorithm(CipherAlgorithm cipherAlgorithm) {
        super.setCipherAlgorithm(cipherAlgorithm);
        if (cipherAlgorithm.allowedKeySize.length == 1) {
            setKeySize(cipherAlgorithm.defaultKeySize);
        }
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionVerifier
    public void setEncryptedKey(byte[] bArr) {
        super.setEncryptedKey(bArr);
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionVerifier
    public void setEncryptedVerifier(byte[] bArr) {
        super.setEncryptedVerifier(bArr);
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionVerifier
    public void setEncryptedVerifierHash(byte[] bArr) {
        super.setEncryptedVerifierHash(bArr);
    }

    public void setKeySize(int i) {
        this.keyBits = i;
        for (int i2 : getCipherAlgorithm().allowedKeySize) {
            if (i2 == i) {
                return;
            }
        }
        throw new EncryptedDocumentException("KeySize " + i + " not allowed for cipher " + getCipherAlgorithm());
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionVerifier
    public void setSalt(byte[] bArr) {
        if (bArr == null || bArr.length != getCipherAlgorithm().blockSize) {
            throw new EncryptedDocumentException("invalid verifier salt");
        }
        super.setSalt(bArr);
    }

    public AgileEncryptionVerifier(EncryptionDocument encryptionDocument) {
        this.keyBits = -1;
        this.blockSize = -1;
        Iterator<KeyEncryptor> it2 = encryptionDocument.getKeyEncryptors().iterator();
        PasswordKeyEncryptor passwordKeyEncryptor = null;
        while (it2.hasNext() && (passwordKeyEncryptor = it2.next().getPasswordKeyEncryptor()) == null) {
        }
        if (passwordKeyEncryptor != null && passwordKeyEncryptor.getHashSize() != null) {
            setCipherAlgorithm(passwordKeyEncryptor.getCipherAlgorithm());
            setKeySize(passwordKeyEncryptor.getKeyBits().intValue());
            setBlockSize(passwordKeyEncryptor.getBlockSize().intValue());
            int intValue = passwordKeyEncryptor.getHashSize().intValue();
            setHashAlgorithm(passwordKeyEncryptor.getHashAlgorithm());
            if (getHashAlgorithm().hashSize == intValue) {
                Integer spinCount = passwordKeyEncryptor.getSpinCount();
                if (spinCount != null) {
                    setSpinCount(spinCount.intValue());
                }
                setEncryptedVerifier(passwordKeyEncryptor.getEncryptedVerifierHashInput());
                setSalt(passwordKeyEncryptor.getSaltValue());
                setEncryptedKey(passwordKeyEncryptor.getEncryptedKeyValue());
                setEncryptedVerifierHash(passwordKeyEncryptor.getEncryptedVerifierHashValue());
                Integer saltSize = passwordKeyEncryptor.getSaltSize();
                if (saltSize != null && saltSize.intValue() == getSalt().length) {
                    setChainingMode(passwordKeyEncryptor.getCipherChaining());
                    if (passwordKeyEncryptor.getCipherChaining() == ChainingMode.cbc || passwordKeyEncryptor.getCipherChaining() == ChainingMode.cfb) {
                        return;
                    }
                    throw new EncryptedDocumentException("Unsupported chaining mode - " + passwordKeyEncryptor.getCipherChaining());
                }
                throw new EncryptedDocumentException("Invalid salt size");
            }
            throw new EncryptedDocumentException("Unsupported hash algorithm: " + passwordKeyEncryptor.getHashAlgorithm() + " @ " + intValue + " bytes");
        }
        throw new IllegalArgumentException("encryptedKey not set");
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionVerifier, org.apache.poi.common.Duplicatable
    public AgileEncryptionVerifier copy() {
        return new AgileEncryptionVerifier(this);
    }

    public AgileEncryptionVerifier(CipherAlgorithm cipherAlgorithm, HashAlgorithm hashAlgorithm, int i, int i2, ChainingMode chainingMode) {
        this.keyBits = -1;
        this.blockSize = -1;
        setCipherAlgorithm(cipherAlgorithm);
        setHashAlgorithm(hashAlgorithm);
        setChainingMode(chainingMode);
        setKeySize(i);
        setBlockSize(i2);
        setSpinCount(100000);
    }

    public AgileEncryptionVerifier(AgileEncryptionVerifier agileEncryptionVerifier) {
        super(agileEncryptionVerifier);
        this.keyBits = -1;
        this.blockSize = -1;
        this.keyBits = agileEncryptionVerifier.keyBits;
        this.blockSize = agileEncryptionVerifier.blockSize;
    }
}
