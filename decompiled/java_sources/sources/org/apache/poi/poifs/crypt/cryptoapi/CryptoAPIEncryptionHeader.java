package org.apache.poi.poifs.crypt.cryptoapi;

import java.io.IOException;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.poifs.crypt.ChainingMode;
import org.apache.poi.poifs.crypt.CipherAlgorithm;
import org.apache.poi.poifs.crypt.CipherProvider;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.poifs.crypt.standard.StandardEncryptionHeader;
import org.apache.poi.util.LittleEndianInput;

/* loaded from: classes12.dex */
public class CryptoAPIEncryptionHeader extends StandardEncryptionHeader {
    public CryptoAPIEncryptionHeader(LittleEndianInput littleEndianInput) throws IOException {
        super(littleEndianInput);
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionHeader
    public void setKeySize(int i) {
        int[] iArr = getCipherAlgorithm().allowedKeySize;
        int length = iArr.length;
        boolean z = false;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            if (iArr[i2] == i) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            super.setKeySize(i);
            if (i > 40) {
                setCspName("Microsoft Enhanced Cryptographic Provider v1.0");
                return;
            } else {
                setCspName(CipherProvider.rc4.cipherProviderName);
                return;
            }
        }
        throw new EncryptedDocumentException("invalid keysize " + i + " for cipher algorithm " + getCipherAlgorithm());
    }

    public CryptoAPIEncryptionHeader(CryptoAPIEncryptionHeader cryptoAPIEncryptionHeader) {
        super(cryptoAPIEncryptionHeader);
    }

    public CryptoAPIEncryptionHeader(CipherAlgorithm cipherAlgorithm, HashAlgorithm hashAlgorithm, int i, int i2, ChainingMode chainingMode) {
        super(cipherAlgorithm, hashAlgorithm, i, i2, chainingMode);
    }

    @Override // org.apache.poi.poifs.crypt.standard.StandardEncryptionHeader, org.apache.poi.poifs.crypt.EncryptionHeader, org.apache.poi.common.Duplicatable
    public CryptoAPIEncryptionHeader copy() {
        return new CryptoAPIEncryptionHeader(this);
    }
}
