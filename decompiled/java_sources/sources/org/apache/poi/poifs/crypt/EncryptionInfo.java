package org.apache.poi.poifs.crypt;

import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInput;

/* loaded from: classes12.dex */
public class EncryptionInfo implements GenericRecord {
    public static final String ENCRYPTION_INFO_ENTRY = "EncryptionInfo";
    private Decryptor decryptor;
    private final int encryptionFlags;
    private final EncryptionMode encryptionMode;
    private Encryptor encryptor;
    private EncryptionHeader header;
    private EncryptionVerifier verifier;
    private final int versionMajor;
    private final int versionMinor;
    public static final BitField flagCryptoAPI = BitFieldFactory.getInstance(4);
    public static final BitField flagDocProps = BitFieldFactory.getInstance(8);
    public static final BitField flagExternal = BitFieldFactory.getInstance(16);
    public static final BitField flagAES = BitFieldFactory.getInstance(32);
    private static final int[] FLAGS_MASKS = {4, 8, 16, 32};
    private static final String[] FLAGS_NAMES = {"CRYPTO_API", "DOC_PROPS", "EXTERNAL", "AES"};

    public EncryptionInfo(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(pOIFSFileSystem.getRoot());
    }

    private static EncryptionInfoBuilder getBuilder(EncryptionMode encryptionMode) {
        return encryptionMode.builder.get();
    }

    public EncryptionInfo copy() {
        return new EncryptionInfo(this);
    }

    public Decryptor getDecryptor() {
        return this.decryptor;
    }

    public int getEncryptionFlags() {
        return this.encryptionFlags;
    }

    public EncryptionMode getEncryptionMode() {
        return this.encryptionMode;
    }

    public Encryptor getEncryptor() {
        return this.encryptor;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("encryptionMode", new Supplier() { // from class: com.sunia.HTREnginev2.upf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionInfo.this.getEncryptionMode();
            }
        });
        linkedHashMap.put("versionMajor", new Supplier() { // from class: com.sunia.HTREnginev2.vpf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EncryptionInfo.this.getVersionMajor());
            }
        });
        linkedHashMap.put("versionMinor", new Supplier() { // from class: com.sunia.HTREnginev2.wpf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EncryptionInfo.this.getVersionMinor());
            }
        });
        linkedHashMap.put("encryptionFlags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.xpf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(EncryptionInfo.this.getEncryptionFlags());
            }
        }, FLAGS_MASKS, FLAGS_NAMES));
        linkedHashMap.put(Constants.NAME_HEADER, new Supplier() { // from class: com.sunia.HTREnginev2.ypf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionInfo.this.getHeader();
            }
        });
        linkedHashMap.put("verifier", new Supplier() { // from class: com.sunia.HTREnginev2.zpf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionInfo.this.getVerifier();
            }
        });
        linkedHashMap.put("decryptor", new Supplier() { // from class: com.sunia.HTREnginev2.aqf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionInfo.this.getDecryptor();
            }
        });
        linkedHashMap.put("encryptor", new Supplier() { // from class: com.sunia.HTREnginev2.bqf
            @Override // java.util.function.Supplier
            public final Object get() {
                return EncryptionInfo.this.getEncryptor();
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public EncryptionHeader getHeader() {
        return this.header;
    }

    public EncryptionVerifier getVerifier() {
        return this.verifier;
    }

    public int getVersionMajor() {
        return this.versionMajor;
    }

    public int getVersionMinor() {
        return this.versionMinor;
    }

    public boolean isDocPropsEncrypted() {
        return !flagDocProps.isSet(getEncryptionFlags());
    }

    public void setDecryptor(Decryptor decryptor) {
        this.decryptor = decryptor;
    }

    public void setEncryptor(Encryptor encryptor) {
        this.encryptor = encryptor;
    }

    public void setHeader(EncryptionHeader encryptionHeader) {
        this.header = encryptionHeader;
    }

    public void setVerifier(EncryptionVerifier encryptionVerifier) {
        this.verifier = encryptionVerifier;
    }

    public EncryptionInfo(DirectoryNode directoryNode) throws IOException {
        this(directoryNode.createDocumentInputStream(ENCRYPTION_INFO_ENTRY), null);
    }

    public EncryptionInfo(LittleEndianInput littleEndianInput, EncryptionMode encryptionMode) throws IOException {
        EncryptionMode encryptionMode2 = EncryptionMode.xor;
        if (encryptionMode == encryptionMode2) {
            this.versionMajor = encryptionMode2.versionMajor;
            this.versionMinor = encryptionMode2.versionMinor;
        } else {
            this.versionMajor = littleEndianInput.readUShort();
            this.versionMinor = littleEndianInput.readUShort();
        }
        int i = this.versionMajor;
        if (i == encryptionMode2.versionMajor && this.versionMinor == encryptionMode2.versionMinor) {
            this.encryptionMode = encryptionMode2;
            this.encryptionFlags = -1;
        } else {
            EncryptionMode encryptionMode3 = EncryptionMode.binaryRC4;
            if (i == encryptionMode3.versionMajor && this.versionMinor == encryptionMode3.versionMinor) {
                this.encryptionMode = encryptionMode3;
                this.encryptionFlags = -1;
            } else if (2 <= i && i <= 4 && this.versionMinor == 2) {
                int readInt = littleEndianInput.readInt();
                this.encryptionFlags = readInt;
                EncryptionMode encryptionMode4 = EncryptionMode.cryptoAPI;
                if (encryptionMode != encryptionMode4 && flagAES.isSet(readInt)) {
                    encryptionMode4 = EncryptionMode.standard;
                }
                this.encryptionMode = encryptionMode4;
            } else {
                EncryptionMode encryptionMode5 = EncryptionMode.agile;
                if (i == encryptionMode5.versionMajor && this.versionMinor == encryptionMode5.versionMinor) {
                    this.encryptionMode = encryptionMode5;
                    this.encryptionFlags = littleEndianInput.readInt();
                } else {
                    int readInt2 = littleEndianInput.readInt();
                    this.encryptionFlags = readInt2;
                    throw new EncryptedDocumentException("Unknown encryption: version major: " + this.versionMajor + " / version minor: " + this.versionMinor + " / fCrypto: " + flagCryptoAPI.isSet(readInt2) + " / fExternal: " + flagExternal.isSet(readInt2) + " / fDocProps: " + flagDocProps.isSet(readInt2) + " / fAES: " + flagAES.isSet(readInt2));
                }
            }
        }
        try {
            getBuilder(this.encryptionMode).initialize(this, littleEndianInput);
        } catch (Exception e) {
            throw new IOException(e);
        }
    }

    public EncryptionInfo(EncryptionMode encryptionMode) {
        this(encryptionMode, null, null, -1, -1, null);
    }

    public EncryptionInfo(EncryptionMode encryptionMode, CipherAlgorithm cipherAlgorithm, HashAlgorithm hashAlgorithm, int i, int i2, ChainingMode chainingMode) {
        this.encryptionMode = encryptionMode;
        this.versionMajor = encryptionMode.versionMajor;
        this.versionMinor = encryptionMode.versionMinor;
        this.encryptionFlags = encryptionMode.encryptionFlags;
        try {
            getBuilder(encryptionMode).initialize(this, cipherAlgorithm, hashAlgorithm, i, i2, chainingMode);
        } catch (Exception e) {
            throw new EncryptedDocumentException(e);
        }
    }

    public EncryptionInfo(EncryptionInfo encryptionInfo) {
        this.encryptionMode = encryptionInfo.encryptionMode;
        this.versionMajor = encryptionInfo.versionMajor;
        this.versionMinor = encryptionInfo.versionMinor;
        this.encryptionFlags = encryptionInfo.encryptionFlags;
        EncryptionHeader encryptionHeader = encryptionInfo.header;
        this.header = encryptionHeader == null ? null : encryptionHeader.copy();
        EncryptionVerifier encryptionVerifier = encryptionInfo.verifier;
        this.verifier = encryptionVerifier != null ? encryptionVerifier.copy() : null;
        Decryptor decryptor = encryptionInfo.decryptor;
        if (decryptor != null) {
            Decryptor copy = decryptor.copy();
            this.decryptor = copy;
            copy.setEncryptionInfo(this);
        }
        Encryptor encryptor = encryptionInfo.encryptor;
        if (encryptor != null) {
            Encryptor copy2 = encryptor.copy();
            this.encryptor = copy2;
            copy2.setEncryptionInfo(this);
        }
    }
}
