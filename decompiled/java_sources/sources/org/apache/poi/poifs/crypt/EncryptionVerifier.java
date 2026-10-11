package org.apache.poi.poifs.crypt;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.poifs.crypt.EncryptionVerifier;

/* loaded from: classes12.dex */
public abstract class EncryptionVerifier implements GenericRecord, Duplicatable {
    private ChainingMode chainingMode;
    private CipherAlgorithm cipherAlgorithm;
    private byte[] encryptedKey;
    private byte[] encryptedVerifier;
    private byte[] encryptedVerifierHash;
    private HashAlgorithm hashAlgorithm;
    private byte[] salt;
    private int spinCount;

    public EncryptionVerifier() {
    }

    @Override // org.apache.poi.common.Duplicatable
    public abstract EncryptionVerifier copy();

    public ChainingMode getChainingMode() {
        return this.chainingMode;
    }

    public CipherAlgorithm getCipherAlgorithm() {
        return this.cipherAlgorithm;
    }

    public byte[] getEncryptedKey() {
        return this.encryptedKey;
    }

    public byte[] getEncryptedVerifier() {
        return this.encryptedVerifier;
    }

    public byte[] getEncryptedVerifierHash() {
        return this.encryptedVerifierHash;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("salt", new Supplier() { // from class: com.sunia.HTREnginev2.hqf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionVerifier.this.getSalt();
            }
        });
        linkedHashMap.put("encryptedVerifier", new Supplier() { // from class: com.sunia.HTREnginev2.iqf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionVerifier.this.getEncryptedVerifier();
            }
        });
        linkedHashMap.put("encryptedVerifierHash", new Supplier() { // from class: com.sunia.HTREnginev2.jqf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionVerifier.this.getEncryptedVerifierHash();
            }
        });
        linkedHashMap.put("encryptedKey", new Supplier() { // from class: com.sunia.HTREnginev2.kqf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionVerifier.this.getEncryptedKey();
            }
        });
        linkedHashMap.put("spinCount", new Supplier() { // from class: com.sunia.HTREnginev2.lqf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EncryptionVerifier.this.getSpinCount());
            }
        });
        linkedHashMap.put("cipherAlgorithm", new Supplier() { // from class: com.sunia.HTREnginev2.mqf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionVerifier.this.getCipherAlgorithm();
            }
        });
        linkedHashMap.put("chainingMode", new Supplier() { // from class: com.sunia.HTREnginev2.nqf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionVerifier.this.getChainingMode();
            }
        });
        linkedHashMap.put("hashAlgorithm", new Supplier() { // from class: com.sunia.HTREnginev2.oqf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionVerifier.this.getHashAlgorithm();
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public HashAlgorithm getHashAlgorithm() {
        return this.hashAlgorithm;
    }

    public byte[] getSalt() {
        return this.salt;
    }

    public int getSpinCount() {
        return this.spinCount;
    }

    public void setChainingMode(ChainingMode chainingMode) {
        this.chainingMode = chainingMode;
    }

    public void setCipherAlgorithm(CipherAlgorithm cipherAlgorithm) {
        this.cipherAlgorithm = cipherAlgorithm;
    }

    public void setEncryptedKey(byte[] bArr) {
        this.encryptedKey = bArr == null ? null : (byte[]) bArr.clone();
    }

    public void setEncryptedVerifier(byte[] bArr) {
        this.encryptedVerifier = bArr == null ? null : (byte[]) bArr.clone();
    }

    public void setEncryptedVerifierHash(byte[] bArr) {
        this.encryptedVerifierHash = bArr == null ? null : (byte[]) bArr.clone();
    }

    public void setHashAlgorithm(HashAlgorithm hashAlgorithm) {
        this.hashAlgorithm = hashAlgorithm;
    }

    public void setSalt(byte[] bArr) {
        this.salt = bArr == null ? null : (byte[]) bArr.clone();
    }

    public void setSpinCount(int i) {
        this.spinCount = i;
    }

    public EncryptionVerifier(EncryptionVerifier encryptionVerifier) {
        byte[] bArr = encryptionVerifier.salt;
        this.salt = bArr == null ? null : (byte[]) bArr.clone();
        byte[] bArr2 = encryptionVerifier.encryptedVerifier;
        this.encryptedVerifier = bArr2 == null ? null : (byte[]) bArr2.clone();
        byte[] bArr3 = encryptionVerifier.encryptedVerifierHash;
        this.encryptedVerifierHash = bArr3 == null ? null : (byte[]) bArr3.clone();
        byte[] bArr4 = encryptionVerifier.encryptedKey;
        this.encryptedKey = bArr4 != null ? (byte[]) bArr4.clone() : null;
        this.spinCount = encryptionVerifier.spinCount;
        this.cipherAlgorithm = encryptionVerifier.cipherAlgorithm;
        this.chainingMode = encryptionVerifier.chainingMode;
        this.hashAlgorithm = encryptionVerifier.hashAlgorithm;
    }
}
