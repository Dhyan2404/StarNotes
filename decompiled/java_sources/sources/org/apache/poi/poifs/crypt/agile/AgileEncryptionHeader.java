package org.apache.poi.poifs.crypt.agile;

import com.sunia.HTREnginev2.gon;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.poifs.crypt.ChainingMode;
import org.apache.poi.poifs.crypt.CipherAlgorithm;
import org.apache.poi.poifs.crypt.EncryptionHeader;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.poifs.crypt.agile.AgileEncryptionHeader;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public class AgileEncryptionHeader extends EncryptionHeader {
    private byte[] encryptedHmacKey;
    private byte[] encryptedHmacValue;

    public AgileEncryptionHeader(String str) {
        this(AgileEncryptionInfoBuilder.parseDescriptor(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return super.getGenericProperties();
    }

    public byte[] getEncryptedHmacKey() {
        return this.encryptedHmacKey;
    }

    public byte[] getEncryptedHmacValue() {
        return this.encryptedHmacValue;
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionHeader, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(gon.f71271X, new Supplier() { // from class: com.sunia.HTREnginev2.p9
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = AgileEncryptionHeader.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, "encryptedHmacKey", new Supplier() { // from class: com.sunia.HTREnginev2.q9
            @Override // java.util.function.Supplier
            public final Object get() {
                return AgileEncryptionHeader.this.getEncryptedHmacKey();
            }
        }, "encryptedHmacValue", new Supplier() { // from class: com.sunia.HTREnginev2.r9
            @Override // java.util.function.Supplier
            public final Object get() {
                return AgileEncryptionHeader.this.getEncryptedHmacValue();
            }
        });
    }

    public void setEncryptedHmacKey(byte[] bArr) {
        this.encryptedHmacKey = bArr == null ? null : (byte[]) bArr.clone();
    }

    public void setEncryptedHmacValue(byte[] bArr) {
        this.encryptedHmacValue = bArr == null ? null : (byte[]) bArr.clone();
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionHeader
    public void setKeySalt(byte[] bArr) {
        if (bArr == null || bArr.length != getBlockSize()) {
            throw new EncryptedDocumentException("invalid verifier salt");
        }
        super.setKeySalt(bArr);
    }

    public AgileEncryptionHeader(AgileEncryptionHeader agileEncryptionHeader) {
        super(agileEncryptionHeader);
        byte[] bArr = agileEncryptionHeader.encryptedHmacKey;
        this.encryptedHmacKey = bArr == null ? null : (byte[]) bArr.clone();
        byte[] bArr2 = agileEncryptionHeader.encryptedHmacValue;
        this.encryptedHmacValue = bArr2 != null ? (byte[]) bArr2.clone() : null;
    }

    @Override // org.apache.poi.poifs.crypt.EncryptionHeader, org.apache.poi.common.Duplicatable
    public AgileEncryptionHeader copy() {
        return new AgileEncryptionHeader(this);
    }

    public AgileEncryptionHeader(EncryptionDocument encryptionDocument) {
        try {
            KeyData keyData = encryptionDocument.getKeyData();
            if (keyData != null) {
                int intValue = keyData.getKeyBits().intValue();
                CipherAlgorithm cipherAlgorithm = keyData.getCipherAlgorithm();
                setCipherAlgorithm(cipherAlgorithm);
                setCipherProvider(cipherAlgorithm.provider);
                setKeySize(intValue);
                setFlags(0);
                setSizeExtra(0);
                setCspName(null);
                setBlockSize(keyData.getBlockSize().intValue());
                setChainingMode(keyData.getCipherChaining());
                if (getChainingMode() != ChainingMode.cbc && getChainingMode() != ChainingMode.cfb) {
                    throw new EncryptedDocumentException("Unsupported chaining mode - " + keyData.getCipherChaining());
                }
                int intValue2 = keyData.getHashSize().intValue();
                setHashAlgorithm(keyData.getHashAlgorithm());
                if (getHashAlgorithm().hashSize == intValue2) {
                    int intValue3 = keyData.getSaltSize().intValue();
                    setKeySalt(keyData.getSaltValue());
                    if (getKeySalt().length == intValue3) {
                        DataIntegrity dataIntegrity = encryptionDocument.getDataIntegrity();
                        setEncryptedHmacKey(dataIntegrity.getEncryptedHmacKey());
                        setEncryptedHmacValue(dataIntegrity.getEncryptedHmacValue());
                        return;
                    }
                    throw new EncryptedDocumentException("Invalid salt length");
                }
                throw new EncryptedDocumentException("Unsupported hash algorithm: " + keyData.getHashAlgorithm() + " @ " + intValue2 + " bytes");
            }
            throw new NullPointerException("keyData not set");
        } catch (Exception unused) {
            throw new EncryptedDocumentException("Unable to parse keyData");
        }
    }

    public AgileEncryptionHeader(CipherAlgorithm cipherAlgorithm, HashAlgorithm hashAlgorithm, int i, int i2, ChainingMode chainingMode) {
        setCipherAlgorithm(cipherAlgorithm);
        setHashAlgorithm(hashAlgorithm);
        setKeySize(i);
        setBlockSize(i2);
        setChainingMode(chainingMode);
    }
}
