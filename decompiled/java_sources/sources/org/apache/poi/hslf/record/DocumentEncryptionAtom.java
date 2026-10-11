package org.apache.poi.hslf.record;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.hslf.record.DocumentEncryptionAtom;
import org.apache.poi.poifs.crypt.CipherAlgorithm;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.crypt.EncryptionMode;
import org.apache.poi.poifs.crypt.HashAlgorithm;
import org.apache.poi.poifs.crypt.cryptoapi.CryptoAPIEncryptionHeader;
import org.apache.poi.poifs.crypt.cryptoapi.CryptoAPIEncryptionVerifier;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public final class DocumentEncryptionAtom extends PositionDependentRecordAtom {
    private static final long _type = RecordTypes.DocumentEncryptionAtom.typeID;
    private final byte[] _header;

    /* renamed from: ei */
    private EncryptionInfo f111380ei;

    public DocumentEncryptionAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        try {
            LittleEndianInputStream littleEndianInputStream = new LittleEndianInputStream(new ByteArrayInputStream(bArr, i3, i2 - 8));
            try {
                this.f111380ei = new EncryptionInfo(littleEndianInputStream, EncryptionMode.cryptoAPI);
                littleEndianInputStream.close();
            } finally {
            }
        } catch (IOException e) {
            throw new EncryptedDocumentException(e);
        }
    }

    public EncryptionInfo getEncryptionInfo() {
        return this.f111380ei;
    }

    public String getEncryptionProviderName() {
        return this.f111380ei.getHeader().getCspName();
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("encryptionInfo", new Supplier() { // from class: com.sunia.HTREnginev2.jaf
            @Override // java.util.function.Supplier
            public final Object get() {
                return DocumentEncryptionAtom.this.getEncryptionInfo();
            }
        });
    }

    public int getKeyLength() {
        return this.f111380ei.getHeader().getKeySize();
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public void initializeEncryptionInfo(int i) {
        this.f111380ei = new EncryptionInfo(EncryptionMode.cryptoAPI, CipherAlgorithm.rc4, HashAlgorithm.sha1, i, -1, null);
    }

    @Override // org.apache.poi.hslf.record.PositionDependentRecordAtom, org.apache.poi.hslf.record.PositionDependentRecord
    public void updateOtherRecordReferences(Map<Integer, Integer> map) {
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream = new LittleEndianByteArrayOutputStream(bArr, 0);
        littleEndianByteArrayOutputStream.writeShort(this.f111380ei.getVersionMajor());
        littleEndianByteArrayOutputStream.writeShort(this.f111380ei.getVersionMinor());
        littleEndianByteArrayOutputStream.writeInt(this.f111380ei.getEncryptionFlags());
        ((CryptoAPIEncryptionHeader) this.f111380ei.getHeader()).write(littleEndianByteArrayOutputStream);
        ((CryptoAPIEncryptionVerifier) this.f111380ei.getVerifier()).write(littleEndianByteArrayOutputStream);
        LittleEndian.putInt(this._header, 4, littleEndianByteArrayOutputStream.getWriteIndex());
        outputStream.write(this._header);
        outputStream.write(bArr, 0, littleEndianByteArrayOutputStream.getWriteIndex());
        littleEndianByteArrayOutputStream.close();
    }

    public DocumentEncryptionAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putShort(bArr, 0, (short) 15);
        LittleEndian.putShort(bArr, 2, (short) _type);
        this.f111380ei = new EncryptionInfo(EncryptionMode.cryptoAPI);
    }
}
