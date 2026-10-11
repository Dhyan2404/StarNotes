package org.apache.poi.poifs.crypt;

import com.sunia.HTREnginev2.xve;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.util.Map;
import java.util.function.Supplier;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.poifs.crypt.Decryptor;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public abstract class Decryptor implements GenericRecord {
    public static final String DEFAULT_PASSWORD = "VelvetSweatshop";
    public static final String DEFAULT_POIFS_ENTRY = "EncryptedPackage";
    protected EncryptionInfo encryptionInfo;
    private byte[] integrityHmacKey;
    private byte[] integrityHmacValue;
    private SecretKey secretKey;
    private byte[] verifier;

    public Decryptor() {
    }

    public static Decryptor getInstance(EncryptionInfo encryptionInfo) {
        Decryptor decryptor = encryptionInfo.getDecryptor();
        if (decryptor != null) {
            return decryptor;
        }
        throw new EncryptedDocumentException("Unsupported version");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$getGenericProperties$0() {
        return null;
    }

    public abstract Decryptor copy();

    public int getBlockSizeInBytes() {
        return this.encryptionInfo.getHeader().getBlockSize();
    }

    public InputStream getDataStream(InputStream inputStream, int i, int i2) throws IOException, GeneralSecurityException {
        throw new EncryptedDocumentException("this decryptor doesn't support reading from a stream");
    }

    public abstract InputStream getDataStream(DirectoryNode directoryNode) throws IOException, GeneralSecurityException;

    public EncryptionInfo getEncryptionInfo() {
        return this.encryptionInfo;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        Supplier xveVar;
        SecretKey secretKey = this.secretKey;
        if (secretKey == null) {
            xveVar = new Supplier() { // from class: com.sunia.HTREnginev2.wve
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = Decryptor.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            };
        } else {
            secretKey.getClass();
            xveVar = new xve(secretKey);
        }
        return GenericRecordUtil.getGenericProperties("secretKey", xveVar, "verifier", new Supplier() { // from class: com.sunia.HTREnginev2.yve
            @Override // java.util.function.Supplier
            public final Object get() {
                return Decryptor.this.getVerifier();
            }
        }, "integrityHmacKey", new Supplier() { // from class: com.sunia.HTREnginev2.zve
            @Override // java.util.function.Supplier
            public final Object get() {
                return Decryptor.this.getIntegrityHmacKey();
            }
        }, "integrityHmacValue", new Supplier() { // from class: com.sunia.HTREnginev2.awe
            @Override // java.util.function.Supplier
            public final Object get() {
                return Decryptor.this.getIntegrityHmacValue();
            }
        });
    }

    public byte[] getIntegrityHmacKey() {
        return this.integrityHmacKey;
    }

    public byte[] getIntegrityHmacValue() {
        return this.integrityHmacValue;
    }

    public int getKeySizeInBytes() {
        return this.encryptionInfo.getHeader().getKeySize() / 8;
    }

    public abstract long getLength();

    public SecretKey getSecretKey() {
        return this.secretKey;
    }

    public byte[] getVerifier() {
        return this.verifier;
    }

    public Cipher initCipherForBlock(Cipher cipher, int i) throws GeneralSecurityException {
        throw new EncryptedDocumentException("this decryptor doesn't support initCipherForBlock");
    }

    public void setChunkSize(int i) {
        throw new EncryptedDocumentException("this decryptor doesn't support changing the chunk size");
    }

    public void setEncryptionInfo(EncryptionInfo encryptionInfo) {
        this.encryptionInfo = encryptionInfo;
    }

    public void setIntegrityHmacKey(byte[] bArr) {
        this.integrityHmacKey = bArr == null ? null : (byte[]) bArr.clone();
    }

    public void setIntegrityHmacValue(byte[] bArr) {
        this.integrityHmacValue = bArr == null ? null : (byte[]) bArr.clone();
    }

    public void setSecretKey(SecretKey secretKey) {
        this.secretKey = secretKey;
    }

    public void setVerifier(byte[] bArr) {
        this.verifier = bArr == null ? null : (byte[]) bArr.clone();
    }

    public abstract boolean verifyPassword(String str) throws GeneralSecurityException;

    public Decryptor(Decryptor decryptor) {
        this.encryptionInfo = decryptor.encryptionInfo;
        this.secretKey = decryptor.secretKey;
        byte[] bArr = decryptor.verifier;
        this.verifier = bArr == null ? null : (byte[]) bArr.clone();
        byte[] bArr2 = decryptor.integrityHmacKey;
        this.integrityHmacKey = bArr2 == null ? null : (byte[]) bArr2.clone();
        byte[] bArr3 = decryptor.integrityHmacValue;
        this.integrityHmacValue = bArr3 != null ? (byte[]) bArr3.clone() : null;
    }

    public InputStream getDataStream(POIFSFileSystem pOIFSFileSystem) throws IOException, GeneralSecurityException {
        return getDataStream(pOIFSFileSystem.getRoot());
    }
}
