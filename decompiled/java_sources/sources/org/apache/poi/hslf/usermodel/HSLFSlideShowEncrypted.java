package org.apache.poi.hslf.usermodel;

import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import org.apache.poi.EncryptedDocumentException;
import org.apache.poi.hslf.exceptions.EncryptedPowerPointFileException;
import org.apache.poi.hslf.record.DocumentEncryptionAtom;
import org.apache.poi.hslf.record.PersistPtrHolder;
import org.apache.poi.hslf.record.PositionDependentRecord;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.UserEditAtom;
import org.apache.poi.hssf.record.crypto.Biff8EncryptionKey;
import org.apache.poi.poifs.crypt.ChunkedCipherInputStream;
import org.apache.poi.poifs.crypt.ChunkedCipherOutputStream;
import org.apache.poi.poifs.crypt.Decryptor;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.crypt.Encryptor;
import org.apache.poi.util.BitField;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianByteArrayInputStream;
import org.apache.poi.util.RecordFormatException;

@Internal
/* loaded from: classes12.dex */
public class HSLFSlideShowEncrypted implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    EncryptionInfo _encryptionInfo;
    ChunkedCipherOutputStream cyos;
    DocumentEncryptionAtom dea;
    private static final BitField fieldRecInst = new BitField(65520);
    private static final int[] BLIB_STORE_ENTRY_PARTS = {1, 1, 16, 2, 4, 4, 4, 1, 1, 1, 1};

    public HSLFSlideShowEncrypted(DocumentEncryptionAtom documentEncryptionAtom) {
        this.dea = documentEncryptionAtom;
    }

    public static Record[] addEncryptionRecord(Record[] recordArr, DocumentEncryptionAtom documentEncryptionAtom) {
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        for (Record record : recordArr) {
            i++;
            if (record instanceof UserEditAtom) {
                i2 = i;
            } else if (record instanceof PersistPtrHolder) {
                i3 = i;
            } else if (record instanceof DocumentEncryptionAtom) {
                i4 = i;
            }
        }
        if (i4 != -1) {
            documentEncryptionAtom.setLastOnDiskOffset(((DocumentEncryptionAtom) recordArr[i4]).getLastOnDiskOffset());
            recordArr[i4] = documentEncryptionAtom;
            return recordArr;
        }
        PersistPtrHolder persistPtrHolder = (PersistPtrHolder) recordArr[i3];
        UserEditAtom userEditAtom = (UserEditAtom) recordArr[i2];
        documentEncryptionAtom.setLastOnDiskOffset(persistPtrHolder.getLastOnDiskOffset() - 1);
        int maxPersistWritten = userEditAtom.getMaxPersistWritten() + 1;
        persistPtrHolder.addSlideLookup(maxPersistWritten, persistPtrHolder.getLastOnDiskOffset() - 1);
        userEditAtom.setEncryptSessionPersistIdRef(maxPersistWritten);
        userEditAtom.setMaxPersistWritten(maxPersistWritten);
        Record[] recordArr2 = new Record[recordArr.length + 1];
        if (i3 > 0) {
            System.arraycopy(recordArr, 0, recordArr2, 0, i3);
        }
        if (i3 < recordArr.length - 1) {
            System.arraycopy(recordArr, i3, recordArr2, i3 + 1, recordArr.length - i3);
        }
        recordArr2[i3] = documentEncryptionAtom;
        return recordArr2;
    }

    private void decryptPicBytes(byte[] bArr, int i, int i2) throws IOException, GeneralSecurityException {
        LittleEndianByteArrayInputStream littleEndianByteArrayInputStream = new LittleEndianByteArrayInputStream(bArr, i);
        ChunkedCipherInputStream chunkedCipherInputStream = (ChunkedCipherInputStream) getEncryptionInfo().getDecryptor().getDataStream(littleEndianByteArrayInputStream, i2, 0);
        readFully(chunkedCipherInputStream, bArr, i, i2);
        chunkedCipherInputStream.close();
        littleEndianByteArrayInputStream.close();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Record[] normalizeRecords(Record[] recordArr) {
        TreeMap treeMap = new TreeMap();
        TreeMap treeMap2 = new TreeMap();
        ArrayList arrayList = new ArrayList();
        UserEditAtom userEditAtom = null;
        PersistPtrHolder persistPtrHolder = null;
        int i = 0;
        for (Object[] objArr : recordArr) {
            PositionDependentRecord positionDependentRecord = (PositionDependentRecord) objArr;
            if (positionDependentRecord instanceof UserEditAtom) {
                userEditAtom = (UserEditAtom) positionDependentRecord;
            } else if (positionDependentRecord instanceof PersistPtrHolder) {
                if (persistPtrHolder != null) {
                    i++;
                }
                PersistPtrHolder persistPtrHolder2 = (PersistPtrHolder) positionDependentRecord;
                for (Map.Entry<Integer, Integer> entry : persistPtrHolder2.getSlideLocationsLookup().entrySet()) {
                    Integer num = (Integer) treeMap.put(entry.getKey(), entry.getValue());
                    if (num != null) {
                        arrayList.add(num);
                    }
                }
                persistPtrHolder = persistPtrHolder2;
            } else {
                treeMap2.put(Integer.valueOf(positionDependentRecord.getLastOnDiskOffset()), objArr);
            }
        }
        if (userEditAtom == null || persistPtrHolder == null || userEditAtom.getPersistPointersOffset() != persistPtrHolder.getLastOnDiskOffset()) {
            throw new EncryptedDocumentException("UserEditAtom and PersistPtrHolder must exist and their offset need to match.");
        }
        treeMap2.put(Integer.valueOf(persistPtrHolder.getLastOnDiskOffset()), persistPtrHolder);
        treeMap2.put(Integer.valueOf(userEditAtom.getLastOnDiskOffset()), userEditAtom);
        if (i == 0 && arrayList.isEmpty()) {
            return recordArr;
        }
        userEditAtom.setLastUserEditAtomOffset(0);
        persistPtrHolder.clear();
        for (Map.Entry entry2 : treeMap.entrySet()) {
            persistPtrHolder.addSlideLookup(((Integer) entry2.getKey()).intValue(), ((Integer) entry2.getValue()).intValue());
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            treeMap2.remove((Integer) it2.next());
        }
        return (Record[]) treeMap2.values().toArray(new Record[0]);
    }

    private static void readFully(ChunkedCipherInputStream chunkedCipherInputStream, byte[] bArr, int i, int i2) throws IOException {
        if (IOUtils.readFully(chunkedCipherInputStream, bArr, i, i2) == -1) {
            throw new EncryptedPowerPointFileException("unexpected EOF");
        }
    }

    public static Record[] removeEncryptionRecord(Record[] recordArr) {
        ArrayList arrayList = new ArrayList();
        int i = -1;
        PersistPtrHolder persistPtrHolder = null;
        int i2 = -1;
        int i3 = -1;
        UserEditAtom userEditAtom = null;
        for (Record record : recordArr) {
            if (record instanceof DocumentEncryptionAtom) {
                i3 = ((DocumentEncryptionAtom) record).getLastOnDiskOffset();
            } else {
                if (record instanceof UserEditAtom) {
                    userEditAtom = (UserEditAtom) record;
                    i2 = userEditAtom.getEncryptSessionPersistIdRef();
                    userEditAtom.setEncryptSessionPersistIdRef(-1);
                } else if (record instanceof PersistPtrHolder) {
                    persistPtrHolder = (PersistPtrHolder) record;
                }
                arrayList.add(record);
            }
        }
        if (persistPtrHolder == null || userEditAtom == null) {
            throw new EncryptedDocumentException("UserEditAtom or PersistPtrholder not found.");
        }
        if (i2 == -1 && i3 == -1) {
            return recordArr;
        }
        TreeMap treeMap = new TreeMap(persistPtrHolder.getSlideLocationsLookup());
        persistPtrHolder.clear();
        for (Map.Entry entry : treeMap.entrySet()) {
            if (((Integer) entry.getKey()).intValue() != i2 && ((Integer) entry.getValue()).intValue() != i3) {
                persistPtrHolder.addSlideLookup(((Integer) entry.getKey()).intValue(), ((Integer) entry.getValue()).intValue());
                i = Math.max(((Integer) entry.getKey()).intValue(), i);
            }
        }
        userEditAtom.setMaxPersistWritten(i);
        return (Record[]) arrayList.toArray(new Record[0]);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ChunkedCipherOutputStream chunkedCipherOutputStream = this.cyos;
        if (chunkedCipherOutputStream != null) {
            chunkedCipherOutputStream.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0083 A[Catch: Exception -> 0x00a7, LOOP:1: B:38:0x0081->B:39:0x0083, LOOP_END, TryCatch #0 {Exception -> 0x00a7, blocks: (B:7:0x0007, B:9:0x0029, B:11:0x002f, B:13:0x0037, B:15:0x0041, B:18:0x0048, B:39:0x0083, B:47:0x009e), top: B:6:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void decryptPicture(byte[] r8, int r9) {
        /*
            r7 = this;
            org.apache.poi.hslf.record.DocumentEncryptionAtom r0 = r7.dea
            if (r0 != 0) goto L5
            return
        L5:
            r0 = 8
            r7.decryptPicBytes(r8, r9, r0)     // Catch: java.lang.Exception -> La7
            org.apache.poi.util.BitField r1 = org.apache.poi.hslf.usermodel.HSLFSlideShowEncrypted.fieldRecInst     // Catch: java.lang.Exception -> La7
            int r2 = org.apache.poi.util.LittleEndian.getUShort(r8, r9)     // Catch: java.lang.Exception -> La7
            int r1 = r1.getValue(r2)     // Catch: java.lang.Exception -> La7
            int r2 = r9 + 2
            int r2 = org.apache.poi.util.LittleEndian.getUShort(r8, r2)     // Catch: java.lang.Exception -> La7
            int r3 = r9 + 4
            long r3 = org.apache.poi.util.LittleEndian.getUInt(r8, r3)     // Catch: java.lang.Exception -> La7
            int r3 = (int) r3     // Catch: java.lang.Exception -> La7
            int r9 = r9 + r0
            int r3 = r3 + r9
            r4 = 61447(0xf007, float:8.6106E-41)
            r5 = 0
            if (r2 != r4) goto L5c
            int[] r1 = org.apache.poi.hslf.usermodel.HSLFSlideShowEncrypted.BLIB_STORE_ENTRY_PARTS     // Catch: java.lang.Exception -> La7
            int r2 = r1.length     // Catch: java.lang.Exception -> La7
            r4 = r5
        L2d:
            if (r4 >= r2) goto L37
            r6 = r1[r4]     // Catch: java.lang.Exception -> La7
            r7.decryptPicBytes(r8, r9, r6)     // Catch: java.lang.Exception -> La7
            int r4 = r4 + 1
            goto L2d
        L37:
            int r9 = r9 + 36
            int r1 = r9 + (-3)
            int r1 = org.apache.poi.util.LittleEndian.getUShort(r8, r1)     // Catch: java.lang.Exception -> La7
            if (r1 <= 0) goto L45
            r7.decryptPicBytes(r8, r9, r1)     // Catch: java.lang.Exception -> La7
            int r9 = r9 + r1
        L45:
            if (r9 != r3) goto L48
            return
        L48:
            r7.decryptPicBytes(r8, r9, r0)     // Catch: java.lang.Exception -> La7
            org.apache.poi.util.BitField r1 = org.apache.poi.hslf.usermodel.HSLFSlideShowEncrypted.fieldRecInst     // Catch: java.lang.Exception -> La7
            int r2 = org.apache.poi.util.LittleEndian.getUShort(r8, r9)     // Catch: java.lang.Exception -> La7
            int r1 = r1.getValue(r2)     // Catch: java.lang.Exception -> La7
            int r2 = r9 + 2
            int r2 = org.apache.poi.util.LittleEndian.getUShort(r8, r2)     // Catch: java.lang.Exception -> La7
            int r9 = r9 + r0
        L5c:
            r0 = 535(0x217, float:7.5E-43)
            r4 = 1
            if (r1 == r0) goto L80
            r0 = 981(0x3d5, float:1.375E-42)
            if (r1 == r0) goto L80
            r0 = 1131(0x46b, float:1.585E-42)
            if (r1 == r0) goto L80
            r0 = 1347(0x543, float:1.888E-42)
            if (r1 == r0) goto L80
            r0 = 1761(0x6e1, float:2.468E-42)
            if (r1 == r0) goto L80
            r0 = 1763(0x6e3, float:2.47E-42)
            if (r1 == r0) goto L80
            r0 = 1765(0x6e5, float:2.473E-42)
            if (r1 == r0) goto L80
            r0 = 1961(0x7a9, float:2.748E-42)
            if (r1 != r0) goto L7e
            goto L80
        L7e:
            r0 = r4
            goto L81
        L80:
            r0 = 2
        L81:
            if (r5 >= r0) goto L8d
            r1 = 16
            r7.decryptPicBytes(r8, r9, r1)     // Catch: java.lang.Exception -> La7
            int r9 = r9 + 16
            int r5 = r5 + 1
            goto L81
        L8d:
            r0 = 61466(0xf01a, float:8.6132E-41)
            if (r2 == r0) goto L9c
            r0 = 61467(0xf01b, float:8.6134E-41)
            if (r2 == r0) goto L9c
            r0 = 61468(0xf01c, float:8.6135E-41)
            if (r2 != r0) goto L9e
        L9c:
            r4 = 34
        L9e:
            r7.decryptPicBytes(r8, r9, r4)     // Catch: java.lang.Exception -> La7
            int r9 = r9 + r4
            int r3 = r3 - r9
            r7.decryptPicBytes(r8, r9, r3)     // Catch: java.lang.Exception -> La7
            return
        La7:
            r7 = move-exception
            org.apache.poi.hslf.exceptions.CorruptPowerPointFileException r8 = new org.apache.poi.hslf.exceptions.CorruptPowerPointFileException
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hslf.usermodel.HSLFSlideShowEncrypted.decryptPicture(byte[], int):void");
    }

    public void decryptRecord(byte[] bArr, int i, int i2) {
        if (this.dea == null) {
            return;
        }
        Decryptor decryptor = getEncryptionInfo().getDecryptor();
        decryptor.setChunkSize(-1);
        try {
            LittleEndianByteArrayInputStream littleEndianByteArrayInputStream = new LittleEndianByteArrayInputStream(bArr, i2);
            try {
                ChunkedCipherInputStream chunkedCipherInputStream = (ChunkedCipherInputStream) decryptor.getDataStream(littleEndianByteArrayInputStream, bArr.length - i2, 0);
                try {
                    chunkedCipherInputStream.initCipherForBlock(i);
                    readFully(chunkedCipherInputStream, bArr, i2, 8);
                    readFully(chunkedCipherInputStream, bArr, i2 + 8, (int) LittleEndian.getUInt(bArr, i2 + 4));
                    chunkedCipherInputStream.close();
                    littleEndianByteArrayInputStream.close();
                } finally {
                }
            } finally {
            }
        } catch (Exception e) {
            throw new EncryptedPowerPointFileException(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00aa A[Catch: all -> 0x00e6, LOOP:1: B:42:0x00a8->B:43:0x00aa, LOOP_END, TryCatch #1 {all -> 0x00e6, blocks: (B:9:0x000b, B:11:0x0042, B:13:0x004e, B:16:0x005c, B:22:0x006c, B:43:0x00aa, B:52:0x00c7, B:53:0x00d8, B:58:0x00cf), top: B:8:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void encryptPicture(byte[] r10, int r11) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hslf.usermodel.HSLFSlideShowEncrypted.encryptPicture(byte[], int):void");
    }

    public OutputStream encryptRecord(OutputStream outputStream, int i, Record record) {
        try {
            if (this.dea == null || (record instanceof UserEditAtom) || (record instanceof PersistPtrHolder) || (record instanceof DocumentEncryptionAtom)) {
                ChunkedCipherOutputStream chunkedCipherOutputStream = this.cyos;
                if (chunkedCipherOutputStream != null) {
                    chunkedCipherOutputStream.flush();
                }
                return outputStream;
            }
            if (this.cyos == null) {
                Encryptor encryptor = getEncryptionInfo().getEncryptor();
                encryptor.setChunkSize(-1);
                this.cyos = encryptor.getDataStream(outputStream, 0);
            }
            this.cyos.initCipherForBlock(i, false);
            return this.cyos;
        } catch (Exception e) {
            throw new EncryptedPowerPointFileException(e);
        }
    }

    public DocumentEncryptionAtom getDocumentEncryptionAtom() {
        return this.dea;
    }

    public EncryptionInfo getEncryptionInfo() {
        DocumentEncryptionAtom documentEncryptionAtom = this.dea;
        if (documentEncryptionAtom != null) {
            return documentEncryptionAtom.getEncryptionInfo();
        }
        return null;
    }

    public Record[] updateEncryptionRecord(Record[] recordArr) {
        String currentUserPassword = Biff8EncryptionKey.getCurrentUserPassword();
        if (currentUserPassword == null) {
            if (this.dea == null) {
                return recordArr;
            }
            this.dea = null;
            return removeEncryptionRecord(recordArr);
        }
        if (this.dea == null) {
            this.dea = new DocumentEncryptionAtom();
        }
        EncryptionInfo encryptionInfo = this.dea.getEncryptionInfo();
        byte[] salt = encryptionInfo.getVerifier().getSalt();
        Encryptor encryptor = getEncryptionInfo().getEncryptor();
        if (salt == null) {
            encryptor.confirmPassword(currentUserPassword);
        } else {
            encryptor.confirmPassword(currentUserPassword, null, null, encryptionInfo.getDecryptor().getVerifier(), salt, null);
        }
        return addEncryptionRecord(normalizeRecords(recordArr), this.dea);
    }

    public HSLFSlideShowEncrypted(byte[] bArr, NavigableMap<Integer, Record> navigableMap) {
        UserEditAtom userEditAtom;
        Iterator<Map.Entry<Integer, Record>> it2 = navigableMap.descendingMap().entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                userEditAtom = null;
                break;
            }
            Record value = it2.next().getValue();
            if (value instanceof UserEditAtom) {
                userEditAtom = (UserEditAtom) value;
                if (userEditAtom.getEncryptSessionPersistIdRef() != -1) {
                    break;
                }
            }
        }
        if (userEditAtom == null) {
            this.dea = null;
            return;
        }
        Record record = navigableMap.get(Integer.valueOf(userEditAtom.getPersistPointersOffset()));
        if (record instanceof PersistPtrHolder) {
            Integer num = ((PersistPtrHolder) record).getSlideLocationsLookup().get(Integer.valueOf(userEditAtom.getEncryptSessionPersistIdRef()));
            if (num == null) {
                this.dea = null;
                return;
            }
            Record record2 = navigableMap.get(num);
            if (record2 == null) {
                record2 = Record.buildRecordAtOffset(bArr, num.intValue());
                navigableMap.put(num, record2);
            }
            if (record2 instanceof DocumentEncryptionAtom) {
                this.dea = (DocumentEncryptionAtom) record2;
                String currentUserPassword = Biff8EncryptionKey.getCurrentUserPassword();
                EncryptionInfo encryptionInfo = getEncryptionInfo();
                if (encryptionInfo != null) {
                    try {
                        if (encryptionInfo.getDecryptor() != null) {
                            Decryptor decryptor = encryptionInfo.getDecryptor();
                            if (currentUserPassword == null) {
                                currentUserPassword = Decryptor.DEFAULT_PASSWORD;
                            }
                            if (!decryptor.verifyPassword(currentUserPassword)) {
                                throw new EncryptedPowerPointFileException("PowerPoint file is encrypted. The correct password needs to be set via Biff8EncryptionKey.setCurrentUserPassword()");
                            }
                            return;
                        }
                    } catch (GeneralSecurityException e) {
                        throw new EncryptedPowerPointFileException(e);
                    }
                }
                throw new IllegalStateException("Invalid encryption-info: " + encryptionInfo);
            }
            throw new EncryptedPowerPointFileException("Did not have a DocumentEncryptionAtom: " + record2);
        }
        throw new RecordFormatException("Encountered an unexpected record-type: " + record);
    }
}
