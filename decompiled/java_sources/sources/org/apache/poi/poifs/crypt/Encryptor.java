package org.apache.poi.poifs.crypt;

import com.sunia.HTREnginev2.xve;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.util.Map;
import java.util.function.Supplier;
import javax.crypto.SecretKey;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.poifs.crypt.Encryptor;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.GenericRecordUtil;

/* loaded from: classes12.dex */
public abstract class Encryptor implements GenericRecord {
    protected static final String DEFAULT_POIFS_ENTRY = "EncryptedPackage";
    private EncryptionInfo encryptionInfo;
    private SecretKey secretKey;

    public Encryptor() {
    }

    public static Encryptor getInstance(EncryptionInfo encryptionInfo) {
        return encryptionInfo.getEncryptor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$getGenericProperties$0() {
        return null;
    }

    public abstract void confirmPassword(String str);

    public abstract void confirmPassword(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5);

    public abstract Encryptor copy();

    public abstract OutputStream getDataStream(DirectoryNode directoryNode) throws IOException, GeneralSecurityException;

    public OutputStream getDataStream(POIFSFileSystem pOIFSFileSystem) throws IOException, GeneralSecurityException {
        return getDataStream(pOIFSFileSystem.getRoot());
    }

    public EncryptionInfo getEncryptionInfo() {
        return this.encryptionInfo;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        Supplier xveVar;
        SecretKey secretKey = this.secretKey;
        if (secretKey == null) {
            xveVar = new Supplier() { // from class: com.sunia.HTREnginev2.pqf
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object lambda$getGenericProperties$0;
                    lambda$getGenericProperties$0 = Encryptor.lambda$getGenericProperties$0();
                    return lambda$getGenericProperties$0;
                }
            };
        } else {
            secretKey.getClass();
            xveVar = new xve(secretKey);
        }
        return GenericRecordUtil.getGenericProperties("secretKey", xveVar);
    }

    public SecretKey getSecretKey() {
        return this.secretKey;
    }

    public void setChunkSize(int i) {
        throw new EncryptedDocumentException("this decryptor doesn't support changing the chunk size");
    }

    public void setEncryptionInfo(EncryptionInfo encryptionInfo) {
        this.encryptionInfo = encryptionInfo;
    }

    public void setSecretKey(SecretKey secretKey) {
        this.secretKey = secretKey;
    }

    public Encryptor(Encryptor encryptor) {
        this.encryptionInfo = encryptor.encryptionInfo;
        this.secretKey = encryptor.secretKey;
    }

    public ChunkedCipherOutputStream getDataStream(OutputStream outputStream, int i) throws IOException, GeneralSecurityException {
        throw new EncryptedDocumentException("this decryptor doesn't support writing directly to a stream");
    }
}
