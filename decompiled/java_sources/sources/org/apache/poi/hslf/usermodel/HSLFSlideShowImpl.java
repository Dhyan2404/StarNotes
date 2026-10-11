package org.apache.poi.hslf.usermodel;

import com.sunia.HTREnginev2.dyo;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Objects;
import java.util.TreeMap;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.POIDocument;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherRecord;
import org.apache.poi.hpsf.PropertySet;
import org.apache.poi.hslf.exceptions.CorruptPowerPointFileException;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.exceptions.OldPowerPointFormatException;
import org.apache.poi.hslf.record.CurrentUserAtom;
import org.apache.poi.hslf.record.Document;
import org.apache.poi.hslf.record.DocumentEncryptionAtom;
import org.apache.poi.hslf.record.ExOleObjStg;
import org.apache.poi.hslf.record.PersistPtrHolder;
import org.apache.poi.hslf.record.PersistRecord;
import org.apache.poi.hslf.record.PositionDependentRecord;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.hslf.record.UserEditAtom;
import org.apache.poi.hslf.usermodel.HSLFPictureData;
import org.apache.poi.hslf.usermodel.HSLFSlideShowEncrypted;
import org.apache.poi.hslf.usermodel.HSLFSlideShowImpl;
import org.apache.poi.poifs.crypt.EncryptionInfo;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.DocumentEntry;
import org.apache.poi.poifs.filesystem.DocumentInputStream;
import org.apache.poi.poifs.filesystem.EntryUtils;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.sl.usermodel.PictureData;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class HSLFSlideShowImpl extends POIDocument implements Closeable {
    private static final int MAX_DOCUMENT_SIZE = 100000000;
    static final int UNSET_OFFSET = -1;
    private byte[] _docstream;
    private HSLFObjectData[] _objects;
    private List<HSLFPictureData> _pictures;
    private Record[] _records;
    private CurrentUserAtom currentUser;
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFSlideShowImpl.class);
    private static final int DEFAULT_MAX_RECORD_LENGTH = 200000000;
    private static int MAX_RECORD_LENGTH = DEFAULT_MAX_RECORD_LENGTH;

    /* loaded from: classes12.dex */
    public static class CountingOS extends OutputStream {
        int count;

        private CountingOS() {
        }

        public int size() {
            return this.count;
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.count++;
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.count += bArr.length;
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.count += i2;
        }
    }

    /* loaded from: classes12.dex */
    public static final class PictureFactory {
        final byte[] imageData;
        private final int offset;
        private EscherBSERecord record;
        private final EscherContainerRecord recordContainer;
        private final int signature;
        private final PictureData.PictureType type;

        public PictureFactory(EscherContainerRecord escherContainerRecord, PictureData.PictureType pictureType, byte[] bArr, int i, int i2) {
            Objects.requireNonNull(escherContainerRecord);
            this.recordContainer = escherContainerRecord;
            Objects.requireNonNull(pictureType);
            this.type = pictureType;
            Objects.requireNonNull(bArr);
            this.imageData = bArr;
            this.offset = i;
            this.signature = i2;
        }

        public HSLFPictureData build() {
            Objects.requireNonNull(this.record, "Can't build an instance until the record has been assigned.");
            return HSLFPictureData.createFromSlideshowData(this.type, this.recordContainer, this.record, this.imageData, this.signature);
        }

        public int getOffset() {
            return this.offset;
        }

        public PictureFactory setRecord(EscherBSERecord escherBSERecord) {
            this.record = escherBSERecord;
            return this;
        }
    }

    public HSLFSlideShowImpl(String str) throws IOException {
        this(new POIFSFileSystem(new File(str)));
    }

    private void buildRecords() throws IOException {
        this._records = read(this._docstream, (int) this.currentUser.getCurrentEditOffset());
    }

    public static HSLFSlideShowImpl create() {
        try {
            InputStream resourceAsStream = HSLFSlideShowImpl.class.getResourceAsStream("/org/apache/poi/hslf/data/empty.ppt");
            try {
                if (resourceAsStream == null) {
                    throw new HSLFException("Missing resource 'empty.ppt'");
                }
                HSLFSlideShowImpl hSLFSlideShowImpl = new HSLFSlideShowImpl(resourceAsStream);
                resourceAsStream.close();
                return hSLFSlideShowImpl;
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        } catch (IOException e) {
            throw new HSLFException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream encryptOnePicture(HSLFSlideShowEncrypted hSLFSlideShowEncrypted, HSLFPictureData hSLFPictureData) {
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                hSLFPictureData.write(unsynchronizedByteArrayOutputStream);
                byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                hSLFSlideShowEncrypted.encryptPicture(byteArray, 0);
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArray);
                unsynchronizedByteArrayOutputStream.close();
                return byteArrayInputStream;
            } finally {
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0050, code lost:
    
        if (r2 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0056, code lost:
    
        if (r2.getPPDrawingGroup() == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0058, code lost:
    
        r7 = r2.getPPDrawingGroup().getDggContainer();
        r0 = org.apache.poi.ddf.EscherContainerRecord.BSTORE_CONTAINER;
        r1 = (org.apache.poi.ddf.EscherContainerRecord) org.apache.poi.hslf.usermodel.HSLFShape.getEscherChild(r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0068, code lost:
    
        if (r1 != null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006a, code lost:
    
        r1 = new org.apache.poi.ddf.EscherContainerRecord();
        r1.setRecordId(r0);
        r7.addChildBefore(r1, org.apache.poi.ddf.EscherOptRecord.RECORD_ID);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0077, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:?, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x007f, code lost:
    
        throw new org.apache.poi.hslf.exceptions.CorruptPowerPointFileException("Drawing group is missing");
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0087, code lost:
    
        throw new org.apache.poi.hslf.exceptions.CorruptPowerPointFileException("Document record is missing");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.apache.poi.ddf.EscherContainerRecord getBlipStore() {
        /*
            r7 = this;
            org.apache.poi.hslf.record.Record[] r7 = r7._records
            int r0 = r7.length
            r1 = 0
        L4:
            if (r1 >= r0) goto L4f
            r2 = r7[r1]
            if (r2 == 0) goto L38
            long r3 = r2.getRecordType()
            org.apache.poi.hslf.record.RecordTypes r5 = org.apache.poi.hslf.record.RecordTypes.Document
            short r5 = r5.typeID
            long r5 = (long) r5
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 != 0) goto L35
            boolean r7 = r2 instanceof org.apache.poi.hslf.record.Document
            if (r7 == 0) goto L1e
            org.apache.poi.hslf.record.Document r2 = (org.apache.poi.hslf.record.Document) r2
            goto L50
        L1e:
            org.apache.poi.hslf.exceptions.CorruptPowerPointFileException r7 = new org.apache.poi.hslf.exceptions.CorruptPowerPointFileException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Did not have a Document: "
            r0.append(r1)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r7.<init>(r0)
            throw r7
        L35:
            int r1 = r1 + 1
            goto L4
        L38:
            org.apache.poi.hslf.exceptions.CorruptPowerPointFileException r7 = new org.apache.poi.hslf.exceptions.CorruptPowerPointFileException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Did not have a valid record: "
            r0.append(r1)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r7.<init>(r0)
            throw r7
        L4f:
            r2 = 0
        L50:
            if (r2 == 0) goto L80
            org.apache.poi.hslf.record.PPDrawingGroup r7 = r2.getPPDrawingGroup()
            if (r7 == 0) goto L78
            org.apache.poi.hslf.record.PPDrawingGroup r7 = r2.getPPDrawingGroup()
            org.apache.poi.ddf.EscherContainerRecord r7 = r7.getDggContainer()
            short r0 = org.apache.poi.ddf.EscherContainerRecord.BSTORE_CONTAINER
            org.apache.poi.ddf.EscherRecord r1 = org.apache.poi.hslf.usermodel.HSLFShape.getEscherChild(r7, r0)
            org.apache.poi.ddf.EscherContainerRecord r1 = (org.apache.poi.ddf.EscherContainerRecord) r1
            if (r1 != 0) goto L77
            org.apache.poi.ddf.EscherContainerRecord r1 = new org.apache.poi.ddf.EscherContainerRecord
            r1.<init>()
            r1.setRecordId(r0)
            short r0 = org.apache.poi.ddf.EscherOptRecord.RECORD_ID
            r7.addChildBefore(r1, r0)
        L77:
            return r1
        L78:
            org.apache.poi.hslf.exceptions.CorruptPowerPointFileException r7 = new org.apache.poi.hslf.exceptions.CorruptPowerPointFileException
            java.lang.String r0 = "Drawing group is missing"
            r7.<init>(r0)
            throw r7
        L80:
            org.apache.poi.hslf.exceptions.CorruptPowerPointFileException r7 = new org.apache.poi.hslf.exceptions.CorruptPowerPointFileException
            java.lang.String r0 = "Document record is missing"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hslf.usermodel.HSLFSlideShowImpl.getBlipStore():org.apache.poi.ddf.EscherContainerRecord");
    }

    public static int getMaxRecordLength() {
        return MAX_RECORD_LENGTH;
    }

    private static DirectoryNode handleDualStorage(DirectoryNode directoryNode) throws IOException {
        return !directoryNode.hasEntry(HSLFSlideShow.PP97_DOCUMENT) ? directoryNode : (DirectoryNode) directoryNode.getEntry(HSLFSlideShow.PP97_DOCUMENT);
    }

    private void initRecordOffsets(byte[] bArr, int i, NavigableMap<Integer, Record> navigableMap, Map<Integer, Integer> map) {
        while (i != 0) {
            Record buildRecordAtOffset = Record.buildRecordAtOffset(bArr, i);
            if (!(buildRecordAtOffset instanceof UserEditAtom)) {
                throw new CorruptPowerPointFileException("Did not have a user edit atom: " + buildRecordAtOffset);
            }
            UserEditAtom userEditAtom = (UserEditAtom) buildRecordAtOffset;
            navigableMap.put(Integer.valueOf(i), userEditAtom);
            int persistPointersOffset = userEditAtom.getPersistPointersOffset();
            Record buildRecordAtOffset2 = Record.buildRecordAtOffset(bArr, persistPointersOffset);
            if (buildRecordAtOffset2 == null) {
                throw new CorruptPowerPointFileException("Powerpoint document is missing a PersistPtrHolder at " + persistPointersOffset);
            }
            if (!(buildRecordAtOffset2 instanceof PersistPtrHolder)) {
                throw new CorruptPowerPointFileException("Record is not a PersistPtrHolder: " + buildRecordAtOffset2 + " at " + persistPointersOffset);
            }
            PersistPtrHolder persistPtrHolder = (PersistPtrHolder) buildRecordAtOffset2;
            navigableMap.put(Integer.valueOf(persistPointersOffset), persistPtrHolder);
            for (Map.Entry<Integer, Integer> entry : persistPtrHolder.getSlideLocationsLookup().entrySet()) {
                Integer value = entry.getValue();
                Integer key = entry.getKey();
                navigableMap.put(value, null);
                map.put(value, key);
            }
            i = userEditAtom.getLastUserEditAtomOffset();
            if (i > 0 && navigableMap.containsKey(Integer.valueOf(i))) {
                i = navigableMap.firstKey().intValue() - 36;
                int uShort = LittleEndian.getUShort(bArr, i);
                int uShort2 = LittleEndian.getUShort(bArr, i + 2);
                int i2 = LittleEndian.getInt(bArr, i + 4);
                if (uShort != 0 || uShort2 != 4085 || (i2 != 28 && i2 != 32)) {
                    throw new CorruptPowerPointFileException("Powerpoint document contains invalid user edit atom");
                }
                LOG.atWarn().log("Repairing invalid user edit atom");
                userEditAtom.setLastUserEditAtomOffset(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List lambda$matchPicturesAndRecords$0(Integer num) {
        return new ArrayList();
    }

    private static void matchPicturesAndRecords(List<PictureFactory> list, EscherContainerRecord escherContainerRecord) {
        LinkedList linkedList = new LinkedList(list);
        linkedList.sort(Comparator.comparingInt(new ToIntFunction() { // from class: org.apache.poi.hslf.usermodel.c
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return ((HSLFSlideShowImpl.PictureFactory) obj).getOffset();
            }
        }));
        HashMap hashMap = new HashMap();
        Iterator<EscherRecord> it2 = escherContainerRecord.iterator();
        while (it2.hasNext()) {
            EscherRecord next = it2.next();
            if (!(next instanceof EscherBSERecord)) {
                throw new CorruptPowerPointFileException("Did not have a EscherBSERecord: " + next);
            }
            EscherBSERecord escherBSERecord = (EscherBSERecord) next;
            ((List) hashMap.computeIfAbsent(Integer.valueOf(escherBSERecord.getOffset()), new Function() { // from class: com.sunia.HTREnginev2.u7h
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    List lambda$matchPicturesAndRecords$0;
                    lambda$matchPicturesAndRecords$0 = HSLFSlideShowImpl.lambda$matchPicturesAndRecords$0((Integer) obj);
                    return lambda$matchPicturesAndRecords$0;
                }
            })).add(escherBSERecord);
        }
        Iterator it3 = linkedList.iterator();
        while (true) {
            int i = 0;
            if (!it3.hasNext()) {
                break;
            }
            PictureFactory pictureFactory = (PictureFactory) it3.next();
            int offset = pictureFactory.getOffset();
            List list2 = (List) hashMap.get(Integer.valueOf(offset));
            if (list2 == null || list2.isEmpty()) {
                LOG.atDebug().log("No records with offset {}", Unbox.box(offset));
            } else if (list2.size() == 1) {
                pictureFactory.setRecord((EscherBSERecord) list2.get(0));
                hashMap.remove(Integer.valueOf(offset));
                it3.remove();
            } else {
                while (true) {
                    if (i < list2.size()) {
                        EscherBSERecord escherBSERecord2 = (EscherBSERecord) list2.get(i);
                        if (Arrays.equals(escherBSERecord2.getUid(), Arrays.copyOf(pictureFactory.imageData, 16))) {
                            pictureFactory.setRecord(escherBSERecord2);
                            list2.remove(i);
                            it3.remove();
                            break;
                        }
                        i++;
                    }
                }
            }
        }
        List list3 = (List) hashMap.values().stream().flatMap(new dyo()).collect(Collectors.toList());
        Iterator it4 = linkedList.iterator();
        while (it4.hasNext()) {
            PictureFactory pictureFactory2 = (PictureFactory) it4.next();
            boolean z = false;
            for (int size = list3.size() - 1; size >= 0; size--) {
                EscherBSERecord escherBSERecord3 = (EscherBSERecord) list3.get(size);
                if (Arrays.equals(escherBSERecord3.getUid(), Arrays.copyOf(pictureFactory2.imageData, 16))) {
                    list3.remove(size);
                    pictureFactory2.setRecord(escherBSERecord3);
                    escherBSERecord3.setOffset(pictureFactory2.getOffset());
                    z = true;
                }
            }
            if (!z) {
                LOG.atDebug().log("No record found for picture at offset {}", Unbox.box(pictureFactory2.offset));
                pictureFactory2.setRecord(HSLFSlideShow.addNewEscherBseRecord(escherContainerRecord, pictureFactory2.type, pictureFactory2.imageData, pictureFactory2.offset));
            }
        }
        LOG.atDebug().log("Found {} unmatched records.", Unbox.box(list3.size()));
    }

    private Record[] read(byte[] bArr, int i) throws IOException {
        TreeMap treeMap = new TreeMap();
        Map<Integer, Integer> hashMap = new HashMap<>();
        initRecordOffsets(bArr, i, treeMap, hashMap);
        HSLFSlideShowEncrypted hSLFSlideShowEncrypted = new HSLFSlideShowEncrypted(bArr, treeMap);
        for (Map.Entry entry : treeMap.entrySet()) {
            Integer num = (Integer) entry.getKey();
            GenericRecord genericRecord = (Record) entry.getValue();
            Integer num2 = hashMap.get(num);
            if (genericRecord == null) {
                hSLFSlideShowEncrypted.decryptRecord(bArr, num2.intValue(), num.intValue());
                genericRecord = Record.buildRecordAtOffset(bArr, num.intValue());
                entry.setValue(genericRecord);
            }
            if (genericRecord instanceof PersistRecord) {
                ((PersistRecord) genericRecord).setPersistId(num2.intValue());
            }
        }
        hSLFSlideShowEncrypted.close();
        return (Record[]) treeMap.values().toArray(new Record[0]);
    }

    private void readCurrentUserStream() {
        try {
            this.currentUser = new CurrentUserAtom(getDirectory());
        } catch (IOException e) {
            LOG.atError().withThrowable(e).log("Error finding Current User Atom");
            this.currentUser = new CurrentUserAtom();
        }
    }

    private void readOtherStreams() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00d2, code lost:
    
        r9.close();
        matchPicturesAndRecords(r8, r7);
        r0 = new java.util.ArrayList();
        r1 = r8.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00e5, code lost:
    
        if (r1.hasNext() == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ed, code lost:
    
        r2 = ((org.apache.poi.hslf.usermodel.HSLFSlideShowImpl.PictureFactory) r1.next()).build();
        r2.setIndex(r0.size() + 1);
        r0.add(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00fe, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ff, code lost:
    
        org.apache.poi.hslf.usermodel.HSLFSlideShowImpl.LOG.atError().withThrowable(r2).log("Problem reading picture. Your document will probably become corrupted if you save it!");
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x010f, code lost:
    
        r13._pictures = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0111, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readPictures() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.hslf.usermodel.HSLFSlideShowImpl.readPictures():void");
    }

    private void readPowerPointStream() throws IOException {
        DirectoryNode directory = getDirectory();
        if (!directory.hasEntry(HSLFSlideShow.POWERPOINT_DOCUMENT) && directory.hasEntry(HSLFSlideShow.PP95_DOCUMENT)) {
            throw new OldPowerPointFormatException("You seem to have supplied a PowerPoint95 file, which isn't supported");
        }
        DocumentEntry documentEntry = (DocumentEntry) directory.getEntry(HSLFSlideShow.POWERPOINT_DOCUMENT);
        int size = documentEntry.getSize();
        DocumentInputStream createDocumentInputStream = directory.createDocumentInputStream(documentEntry);
        try {
            this._docstream = IOUtils.toByteArray(createDocumentInputStream, size, 100000000);
            if (createDocumentInputStream != null) {
                createDocumentInputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (createDocumentInputStream != null) {
                    try {
                        createDocumentInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public static void setMaxRecordLength(int i) {
        MAX_RECORD_LENGTH = i;
    }

    public int addPicture(HSLFPictureData hSLFPictureData) {
        int i;
        if (this._pictures == null) {
            try {
                readPictures();
            } catch (IOException e) {
                throw new CorruptPowerPointFileException(e.getMessage());
            }
        }
        if (this._pictures.isEmpty()) {
            i = 0;
        } else {
            HSLFPictureData hSLFPictureData2 = this._pictures.get(r0.size() - 1);
            i = hSLFPictureData2.getOffset() + hSLFPictureData2.getBseSize();
        }
        hSLFPictureData.setIndex(this._pictures.size() + 1);
        this._pictures.add(hSLFPictureData);
        return i;
    }

    public synchronized int appendRootLevelRecord(Record record) {
        int i;
        Record[] recordArr = this._records;
        Record[] recordArr2 = new Record[recordArr.length + 1];
        i = -1;
        boolean z = false;
        for (int length = recordArr.length - 1; length >= 0; length--) {
            if (z) {
                recordArr2[length] = this._records[length];
            } else {
                Record[] recordArr3 = this._records;
                recordArr2[length + 1] = recordArr3[length];
                if (recordArr3[length] instanceof PersistPtrHolder) {
                    recordArr2[length] = record;
                    i = length;
                    z = true;
                }
            }
        }
        this._records = recordArr2;
        return i;
    }

    public void clearDirectoryImpl() {
        super.clearDirectory();
    }

    @Override // org.apache.poi.POIDocument, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        POIFSFileSystem fileSystem;
        if ((getDirectory().getParent() == null || HSLFSlideShow.PP97_DOCUMENT.equals(getDirectory().getName())) && (fileSystem = getDirectory().getFileSystem()) != null) {
            fileSystem.close();
        }
    }

    public CurrentUserAtom getCurrentUserAtom() {
        return this.currentUser;
    }

    public DocumentEncryptionAtom getDocumentEncryptionAtom() {
        for (Record record : this._records) {
            if (record instanceof DocumentEncryptionAtom) {
                return (DocumentEncryptionAtom) record;
            }
        }
        return null;
    }

    public HSLFObjectData[] getEmbeddedObjects() {
        if (this._objects == null) {
            ArrayList arrayList = new ArrayList();
            for (Record record : this._records) {
                if (record instanceof ExOleObjStg) {
                    arrayList.add(new HSLFObjectData((ExOleObjStg) record));
                }
            }
            this._objects = (HSLFObjectData[]) arrayList.toArray(new HSLFObjectData[0]);
        }
        return this._objects;
    }

    @Override // org.apache.poi.POIDocument
    public String getEncryptedPropertyStreamName() {
        return "EncryptedSummary";
    }

    @Override // org.apache.poi.POIDocument
    public EncryptionInfo getEncryptionInfo() {
        DocumentEncryptionAtom documentEncryptionAtom = getDocumentEncryptionAtom();
        if (documentEncryptionAtom != null) {
            return documentEncryptionAtom.getEncryptionInfo();
        }
        return null;
    }

    public List<HSLFPictureData> getPictureData() {
        if (this._pictures == null) {
            try {
                readPictures();
            } catch (IOException e) {
                throw new CorruptPowerPointFileException(e.getMessage());
            }
        }
        return Collections.unmodifiableList(this._pictures);
    }

    public PropertySet getPropertySetImpl(String str) throws IOException {
        return super.getPropertySet(str);
    }

    public Record[] getRecords() {
        return this._records;
    }

    public byte[] getUnderlyingBytes() {
        return this._docstream;
    }

    public boolean initDirectoryImpl() {
        return super.initDirectory();
    }

    public void normalizeRecords() {
        try {
            updateAndWriteDependantRecords(null, null);
            this._records = HSLFSlideShowEncrypted.normalizeRecords(this._records);
        } catch (IOException e) {
            throw new CorruptPowerPointFileException(e);
        }
    }

    public void replaceDirectoryImpl(DirectoryNode directoryNode) throws IOException {
        super.replaceDirectory(directoryNode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void updateAndWriteDependantRecords(OutputStream outputStream, Map<RecordTypes, PositionDependentRecord> map) throws IOException {
        HashMap hashMap = new HashMap();
        CountingOS countingOS = new CountingOS();
        UserEditAtom userEditAtom = null;
        PersistPtrHolder persistPtrHolder = null;
        for (Document document : this._records) {
            if (!(document instanceof PositionDependentRecord)) {
                throw new CorruptPowerPointFileException("Record is not a position dependent record: " + document);
            }
            Document document2 = document;
            int lastOnDiskOffset = document2.getLastOnDiskOffset();
            int size = countingOS.size();
            document2.setLastOnDiskOffset(size);
            if (lastOnDiskOffset != -1) {
                hashMap.put(Integer.valueOf(lastOnDiskOffset), Integer.valueOf(size));
            }
            int recordType = (int) document.getRecordType();
            RecordTypes recordTypes = RecordTypes.PersistPtrIncrementalBlock;
            if (recordType == recordTypes.typeID) {
                persistPtrHolder = (PersistPtrHolder) document2;
            } else {
                recordTypes = RecordTypes.UserEditAtom;
                if (recordType == recordTypes.typeID) {
                    userEditAtom = (UserEditAtom) document2;
                } else {
                    recordTypes = null;
                }
            }
            if (map != null && recordTypes != null) {
                map.put(recordTypes, document2);
            }
            document.writeOut(countingOS);
        }
        countingOS.close();
        if (userEditAtom == null || persistPtrHolder == null) {
            throw new HSLFException("UserEditAtom or PersistPtr can't be determined.");
        }
        HashMap hashMap2 = new HashMap();
        for (Map.Entry<Integer, Integer> entry : persistPtrHolder.getSlideLocationsLookup().entrySet()) {
            hashMap2.put(hashMap.get(entry.getValue()), entry.getKey());
        }
        HSLFSlideShowEncrypted hSLFSlideShowEncrypted = new HSLFSlideShowEncrypted(getDocumentEncryptionAtom());
        try {
            for (Document document3 : this._records) {
                Document document4 = document3;
                Integer num = (Integer) hashMap2.get(Integer.valueOf(document4.getLastOnDiskOffset()));
                if (num == null) {
                    num = 0;
                }
                document4.updateOtherRecordReferences(hashMap);
                if (outputStream != null) {
                    document3.writeOut(hSLFSlideShowEncrypted.encryptRecord(outputStream, num.intValue(), document3));
                }
            }
            hSLFSlideShowEncrypted.close();
            int currentEditOffset = (int) this.currentUser.getCurrentEditOffset();
            Integer num2 = (Integer) hashMap.get(Integer.valueOf(currentEditOffset));
            if (num2 != null && userEditAtom.getLastOnDiskOffset() == num2.intValue()) {
                this.currentUser.setCurrentEditOffset(userEditAtom.getLastOnDiskOffset());
                return;
            }
            throw new HSLFException("Couldn't find the new location of the last UserEditAtom that used to be at " + currentEditOffset);
        } finally {
        }
    }

    public void validateInPlaceWritePossibleImpl() throws IllegalStateException {
        super.validateInPlaceWritePossible();
    }

    @Override // org.apache.poi.POIDocument
    public void write() throws IOException {
        validateInPlaceWritePossible();
        write(getDirectory().getFileSystem(), false);
        getDirectory().getFileSystem().writeFilesystem();
    }

    public void writePropertiesImpl() throws IOException {
        super.writeProperties();
    }

    public HSLFSlideShowImpl(InputStream inputStream) throws IOException {
        this(new POIFSFileSystem(inputStream));
    }

    public PropertySet getPropertySetImpl(String str, EncryptionInfo encryptionInfo) throws IOException {
        return super.getPropertySet(str, encryptionInfo);
    }

    public void writePropertiesImpl(POIFSFileSystem pOIFSFileSystem, List<String> list) throws IOException {
        super.writeProperties(pOIFSFileSystem, list);
    }

    public HSLFSlideShowImpl(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(pOIFSFileSystem.getRoot());
    }

    public HSLFSlideShowImpl(DirectoryNode directoryNode) throws IOException {
        super(handleDualStorage(directoryNode));
        try {
            readCurrentUserStream();
            readPowerPointStream();
            buildRecords();
            readOtherStreams();
        } catch (IOException | RuntimeException e) {
            directoryNode.getFileSystem().close();
            throw e;
        }
    }

    @Override // org.apache.poi.POIDocument
    public void write(File file) throws IOException {
        write(file, false);
    }

    public void write(File file, boolean z) throws IOException {
        POIFSFileSystem create = POIFSFileSystem.create(file);
        try {
            write(create, z);
            create.writeFilesystem();
            create.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (create != null) {
                    try {
                        create.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // org.apache.poi.POIDocument
    public void write(OutputStream outputStream) throws IOException {
        write(outputStream, false);
    }

    public void write(OutputStream outputStream, boolean z) throws IOException {
        POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem();
        try {
            write(pOIFSFileSystem, z);
            pOIFSFileSystem.writeFilesystem(outputStream);
            pOIFSFileSystem.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    pOIFSFileSystem.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void write(POIFSFileSystem pOIFSFileSystem, boolean z) throws IOException {
        if (this._pictures == null) {
            readPictures();
        }
        getDocumentSummaryInformation();
        boolean z2 = true;
        List<String> arrayList = new ArrayList<>(1);
        final HSLFSlideShowEncrypted hSLFSlideShowEncrypted = new HSLFSlideShowEncrypted(getDocumentEncryptionAtom());
        try {
            this._records = hSLFSlideShowEncrypted.updateEncryptionRecord(this._records);
            writeProperties(pOIFSFileSystem, arrayList);
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                updateAndWriteDependantRecords(unsynchronizedByteArrayOutputStream, null);
                this._docstream = unsynchronizedByteArrayOutputStream.toByteArray();
                unsynchronizedByteArrayOutputStream.close();
                pOIFSFileSystem.createOrUpdateDocument(new ByteArrayInputStream(this._docstream), HSLFSlideShow.POWERPOINT_DOCUMENT);
                arrayList.add(HSLFSlideShow.POWERPOINT_DOCUMENT);
                CurrentUserAtom currentUserAtom = this.currentUser;
                if (hSLFSlideShowEncrypted.getDocumentEncryptionAtom() == null) {
                    z2 = false;
                }
                currentUserAtom.setEncrypted(z2);
                this.currentUser.writeToFS(pOIFSFileSystem);
                arrayList.add("Current User");
                if (!this._pictures.isEmpty()) {
                    try {
                        SequenceInputStream sequenceInputStream = new SequenceInputStream(IteratorUtils.asEnumeration(this._pictures.stream().map(new Function() { // from class: com.sunia.HTREnginev2.t7h
                            @Override // java.util.function.Function
                            public final Object apply(Object obj) {
                                InputStream encryptOnePicture;
                                encryptOnePicture = HSLFSlideShowImpl.encryptOnePicture(HSLFSlideShowEncrypted.this, (HSLFPictureData) obj);
                                return encryptOnePicture;
                            }
                        }).iterator()));
                        try {
                            pOIFSFileSystem.createOrUpdateDocument(sequenceInputStream, "Pictures");
                            arrayList.add("Pictures");
                            sequenceInputStream.close();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                try {
                                    sequenceInputStream.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                                throw th2;
                            }
                        }
                    } catch (IllegalStateException e) {
                        throw ((IOException) e.getCause());
                    }
                }
                hSLFSlideShowEncrypted.close();
                if (z) {
                    EntryUtils.copyNodes(getDirectory().getFileSystem(), pOIFSFileSystem, arrayList);
                }
            } finally {
            }
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                try {
                    hSLFSlideShowEncrypted.close();
                } catch (Throwable th6) {
                    th4.addSuppressed(th6);
                }
                throw th5;
            }
        }
    }
}
