package org.apache.poi.poifs.crypt;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.poifs.crypt.EncryptionHeader;

/* loaded from: classes12.dex */
public abstract class EncryptionHeader implements GenericRecord, Duplicatable {
    private int blockSize;
    private ChainingMode chainingMode;
    private CipherAlgorithm cipherAlgorithm;
    private String cspName;
    private int flags;
    private HashAlgorithm hashAlgorithm;
    private int keyBits;
    private byte[] keySalt;
    private CipherProvider providerType;
    private int sizeExtra;

    public EncryptionHeader() {
    }

    @Override // org.apache.poi.common.Duplicatable
    public abstract EncryptionHeader copy();

    public int getBlockSize() {
        return this.blockSize;
    }

    public ChainingMode getChainingMode() {
        return this.chainingMode;
    }

    public CipherAlgorithm getCipherAlgorithm() {
        return this.cipherAlgorithm;
    }

    public CipherProvider getCipherProvider() {
        return this.providerType;
    }

    public String getCspName() {
        return this.cspName;
    }

    public int getFlags() {
        return this.flags;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("flags", new Supplier() { // from class: com.sunia.HTREnginev2.kpf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EncryptionHeader.this.getFlags());
            }
        });
        linkedHashMap.put("sizeExtra", new Supplier() { // from class: com.sunia.HTREnginev2.lpf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EncryptionHeader.this.getSizeExtra());
            }
        });
        linkedHashMap.put("cipherAlgorithm", new Supplier() { // from class: com.sunia.HTREnginev2.mpf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionHeader.this.getCipherAlgorithm();
            }
        });
        linkedHashMap.put("hashAlgorithm", new Supplier() { // from class: com.sunia.HTREnginev2.npf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionHeader.this.getHashAlgorithm();
            }
        });
        linkedHashMap.put("keyBits", new Supplier() { // from class: com.sunia.HTREnginev2.opf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EncryptionHeader.this.getKeySize());
            }
        });
        linkedHashMap.put("blockSize", new Supplier() { // from class: com.sunia.HTREnginev2.ppf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EncryptionHeader.this.getBlockSize());
            }
        });
        linkedHashMap.put("providerType", new Supplier() { // from class: com.sunia.HTREnginev2.qpf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionHeader.this.getCipherProvider();
            }
        });
        linkedHashMap.put("chainingMode", new Supplier() { // from class: com.sunia.HTREnginev2.rpf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionHeader.this.getChainingMode();
            }
        });
        linkedHashMap.put("keySalt", new Supplier() { // from class: com.sunia.HTREnginev2.spf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionHeader.this.getKeySalt();
            }
        });
        linkedHashMap.put("cspName", new Supplier() { // from class: com.sunia.HTREnginev2.tpf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionHeader.this.getCspName();
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public HashAlgorithm getHashAlgorithm() {
        return this.hashAlgorithm;
    }

    public byte[] getKeySalt() {
        return this.keySalt;
    }

    public int getKeySize() {
        return this.keyBits;
    }

    public int getSizeExtra() {
        return this.sizeExtra;
    }

    public void setBlockSize(int i) {
        this.blockSize = i;
    }

    public void setChainingMode(ChainingMode chainingMode) {
        this.chainingMode = chainingMode;
    }

    public void setCipherAlgorithm(CipherAlgorithm cipherAlgorithm) {
        this.cipherAlgorithm = cipherAlgorithm;
        if (cipherAlgorithm.allowedKeySize.length == 1) {
            setKeySize(cipherAlgorithm.defaultKeySize);
        }
    }

    public void setCipherProvider(CipherProvider cipherProvider) {
        this.providerType = cipherProvider;
    }

    public void setCspName(String str) {
        this.cspName = str;
    }

    public void setFlags(int i) {
        this.flags = i;
    }

    public void setHashAlgorithm(HashAlgorithm hashAlgorithm) {
        this.hashAlgorithm = hashAlgorithm;
    }

    public void setKeySalt(byte[] bArr) {
        this.keySalt = bArr == null ? null : (byte[]) bArr.clone();
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

    public void setSizeExtra(int i) {
        this.sizeExtra = i;
    }

    public EncryptionHeader(EncryptionHeader encryptionHeader) {
        this.flags = encryptionHeader.flags;
        this.sizeExtra = encryptionHeader.sizeExtra;
        this.cipherAlgorithm = encryptionHeader.cipherAlgorithm;
        this.hashAlgorithm = encryptionHeader.hashAlgorithm;
        this.keyBits = encryptionHeader.keyBits;
        this.blockSize = encryptionHeader.blockSize;
        this.providerType = encryptionHeader.providerType;
        this.chainingMode = encryptionHeader.chainingMode;
        byte[] bArr = encryptionHeader.keySalt;
        this.keySalt = bArr == null ? null : (byte[]) bArr.clone();
        this.cspName = encryptionHeader.cspName;
    }
}
