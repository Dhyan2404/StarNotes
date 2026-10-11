package org.apache.commons.compress.archivers.zip;

import java.nio.file.attribute.FileTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import okhttp3.internal.ws.WebSocketProtocol;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.EntryStreamOffsets;
import org.apache.commons.compress.archivers.zip.ExtraFieldUtils;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipExtraField;
import org.apache.commons.compress.archivers.zip.ZipShort;
import org.apache.commons.compress.utils.ByteUtils;

/* loaded from: classes12.dex */
public class ZipArchiveEntry extends ZipEntry implements ArchiveEntry, EntryStreamOffsets {
    public static final int CRC_UNKNOWN = -1;
    static final ZipArchiveEntry[] EMPTY_ZIP_ARCHIVE_ENTRY_ARRAY = new ZipArchiveEntry[0];
    public static final int PLATFORM_FAT = 0;
    public static final int PLATFORM_UNIX = 3;
    private static final int SHORT_MASK = 65535;
    private static final int SHORT_SHIFT = 16;
    private int alignment;
    private CommentSource commentSource;
    private long dataOffset;
    private long diskNumberStart;
    private long externalAttributes;
    private ZipExtraField[] extraFields;
    private GeneralPurposeBit gpb;
    private int internalAttributes;
    private boolean isStreamContiguous;
    private long localHeaderOffset;
    private int method;
    private String name;
    private NameSource nameSource;
    private int platform;
    private int rawFlag;
    private byte[] rawName;
    private long size;
    private UnparseableExtraFieldData unparseableExtra;
    private int versionMadeBy;
    private int versionRequired;

    /* loaded from: classes12.dex */
    public enum CommentSource {
        COMMENT,
        UNICODE_EXTRA_FIELD
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'BEST_EFFORT' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* loaded from: classes12.dex */
    public static class ExtraFieldParsingMode implements ExtraFieldParsingBehavior {
        private static final /* synthetic */ ExtraFieldParsingMode[] $VALUES;
        public static final ExtraFieldParsingMode BEST_EFFORT;
        public static final ExtraFieldParsingMode DRACONIC;
        public static final ExtraFieldParsingMode ONLY_PARSEABLE_LENIENT;
        public static final ExtraFieldParsingMode ONLY_PARSEABLE_STRICT;
        public static final ExtraFieldParsingMode STRICT_FOR_KNOW_EXTRA_FIELDS;
        private final ExtraFieldUtils.UnparseableExtraField onUnparseableData;

        static {
            ExtraFieldUtils.UnparseableExtraField unparseableExtraField = ExtraFieldUtils.UnparseableExtraField.READ;
            ExtraFieldParsingMode extraFieldParsingMode = new ExtraFieldParsingMode("BEST_EFFORT", 0, unparseableExtraField) { // from class: org.apache.commons.compress.archivers.zip.ZipArchiveEntry.ExtraFieldParsingMode.1
                @Override // org.apache.commons.compress.archivers.zip.ZipArchiveEntry.ExtraFieldParsingMode, org.apache.commons.compress.archivers.zip.ExtraFieldParsingBehavior
                public ZipExtraField fill(ZipExtraField zipExtraField, byte[] bArr, int i, int i2, boolean z) {
                    return ExtraFieldParsingMode.fillAndMakeUnrecognizedOnError(zipExtraField, bArr, i, i2, z);
                }
            };
            BEST_EFFORT = extraFieldParsingMode;
            ExtraFieldParsingMode extraFieldParsingMode2 = new ExtraFieldParsingMode("STRICT_FOR_KNOW_EXTRA_FIELDS", 1, unparseableExtraField);
            STRICT_FOR_KNOW_EXTRA_FIELDS = extraFieldParsingMode2;
            ExtraFieldUtils.UnparseableExtraField unparseableExtraField2 = ExtraFieldUtils.UnparseableExtraField.SKIP;
            ExtraFieldParsingMode extraFieldParsingMode3 = new ExtraFieldParsingMode("ONLY_PARSEABLE_LENIENT", 2, unparseableExtraField2) { // from class: org.apache.commons.compress.archivers.zip.ZipArchiveEntry.ExtraFieldParsingMode.2
                @Override // org.apache.commons.compress.archivers.zip.ZipArchiveEntry.ExtraFieldParsingMode, org.apache.commons.compress.archivers.zip.ExtraFieldParsingBehavior
                public ZipExtraField fill(ZipExtraField zipExtraField, byte[] bArr, int i, int i2, boolean z) {
                    return ExtraFieldParsingMode.fillAndMakeUnrecognizedOnError(zipExtraField, bArr, i, i2, z);
                }
            };
            ONLY_PARSEABLE_LENIENT = extraFieldParsingMode3;
            ExtraFieldParsingMode extraFieldParsingMode4 = new ExtraFieldParsingMode("ONLY_PARSEABLE_STRICT", 3, unparseableExtraField2);
            ONLY_PARSEABLE_STRICT = extraFieldParsingMode4;
            ExtraFieldParsingMode extraFieldParsingMode5 = new ExtraFieldParsingMode("DRACONIC", 4, ExtraFieldUtils.UnparseableExtraField.THROW);
            DRACONIC = extraFieldParsingMode5;
            $VALUES = new ExtraFieldParsingMode[]{extraFieldParsingMode, extraFieldParsingMode2, extraFieldParsingMode3, extraFieldParsingMode4, extraFieldParsingMode5};
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ZipExtraField fillAndMakeUnrecognizedOnError(ZipExtraField zipExtraField, byte[] bArr, int i, int i2, boolean z) {
            try {
                return ExtraFieldUtils.fillExtraField(zipExtraField, bArr, i, i2, z);
            } catch (ZipException unused) {
                UnrecognizedExtraField unrecognizedExtraField = new UnrecognizedExtraField();
                unrecognizedExtraField.setHeaderId(zipExtraField.getHeaderId());
                if (z) {
                    unrecognizedExtraField.setLocalFileDataData(Arrays.copyOfRange(bArr, i, i2 + i));
                } else {
                    unrecognizedExtraField.setCentralDirectoryData(Arrays.copyOfRange(bArr, i, i2 + i));
                }
                return unrecognizedExtraField;
            }
        }

        public static ExtraFieldParsingMode valueOf(String str) {
            return (ExtraFieldParsingMode) Enum.valueOf(ExtraFieldParsingMode.class, str);
        }

        public static ExtraFieldParsingMode[] values() {
            return (ExtraFieldParsingMode[]) $VALUES.clone();
        }

        @Override // org.apache.commons.compress.archivers.zip.ExtraFieldParsingBehavior
        public ZipExtraField createExtraField(ZipShort zipShort) throws ZipException, InstantiationException, IllegalAccessException {
            return ExtraFieldUtils.createExtraField(zipShort);
        }

        @Override // org.apache.commons.compress.archivers.zip.ExtraFieldParsingBehavior
        public ZipExtraField fill(ZipExtraField zipExtraField, byte[] bArr, int i, int i2, boolean z) throws ZipException {
            return ExtraFieldUtils.fillExtraField(zipExtraField, bArr, i, i2, z);
        }

        @Override // org.apache.commons.compress.archivers.zip.UnparseableExtraFieldBehavior
        public ZipExtraField onUnparseableExtraField(byte[] bArr, int i, int i2, boolean z, int i3) throws ZipException {
            return this.onUnparseableData.onUnparseableExtraField(bArr, i, i2, z, i3);
        }

        private ExtraFieldParsingMode(String str, int i, ExtraFieldUtils.UnparseableExtraField unparseableExtraField) {
            this.onUnparseableData = unparseableExtraField;
        }
    }

    /* loaded from: classes12.dex */
    public enum NameSource {
        NAME,
        NAME_WITH_EFS_FLAG,
        UNICODE_EXTRA_FIELD
    }

    public ZipArchiveEntry(String str) {
        super(str);
        this.method = -1;
        this.size = -1L;
        this.platform = 0;
        this.gpb = new GeneralPurposeBit();
        this.localHeaderOffset = -1L;
        this.dataOffset = -1L;
        this.nameSource = NameSource.NAME;
        this.commentSource = CommentSource.COMMENT;
        setName(str);
    }

    /* renamed from: i0 */
    public static /* synthetic */ boolean m66429i0(ZipShort zipShort, ZipExtraField zipExtraField) {
        return zipShort.equals(zipExtraField.getHeaderId());
    }

    /* renamed from: H */
    public final ZipExtraField m66430H(List<ZipExtraField> list) {
        final Class<UnparseableExtraFieldData> cls = UnparseableExtraFieldData.class;
        return list.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.exo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return cls.isInstance((ZipExtraField) obj);
            }
        }).findFirst().orElse(null);
    }

    /* renamed from: I */
    public final ZipExtraField[] m66431I() {
        ZipExtraField[] m66432M = m66432M();
        return m66432M == this.extraFields ? m66437j(m66432M, m66432M.length) : m66432M;
    }

    /* renamed from: M */
    public final ZipExtraField[] m66432M() {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        return zipExtraFieldArr == null ? m66436h0() : this.unparseableExtra != null ? m66433e0() : zipExtraFieldArr;
    }

    public void addAsFirstExtraField(ZipExtraField zipExtraField) {
        if (zipExtraField instanceof UnparseableExtraFieldData) {
            this.unparseableExtra = (UnparseableExtraFieldData) zipExtraField;
        } else {
            if (getExtraField(zipExtraField.getHeaderId()) != null) {
                removeExtraField(zipExtraField.getHeaderId());
            }
            ZipExtraField[] zipExtraFieldArr = this.extraFields;
            ZipExtraField[] zipExtraFieldArr2 = new ZipExtraField[zipExtraFieldArr != null ? zipExtraFieldArr.length + 1 : 1];
            this.extraFields = zipExtraFieldArr2;
            zipExtraFieldArr2[0] = zipExtraField;
            if (zipExtraFieldArr != null) {
                System.arraycopy(zipExtraFieldArr, 0, zipExtraFieldArr2, 1, zipExtraFieldArr2.length - 1);
            }
        }
        setExtra();
    }

    public void addExtraField(ZipExtraField zipExtraField) {
        if (zipExtraField instanceof UnparseableExtraFieldData) {
            this.unparseableExtra = (UnparseableExtraFieldData) zipExtraField;
        } else if (this.extraFields == null) {
            this.extraFields = new ZipExtraField[]{zipExtraField};
        } else {
            if (getExtraField(zipExtraField.getHeaderId()) != null) {
                removeExtraField(zipExtraField.getHeaderId());
            }
            ZipExtraField[] zipExtraFieldArr = this.extraFields;
            ZipExtraField[] m66437j = m66437j(zipExtraFieldArr, zipExtraFieldArr.length + 1);
            m66437j[m66437j.length - 1] = zipExtraField;
            this.extraFields = m66437j;
        }
        setExtra();
    }

    @Override // java.util.zip.ZipEntry
    public Object clone() {
        ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) super.clone();
        zipArchiveEntry.setInternalAttributes(getInternalAttributes());
        zipArchiveEntry.setExternalAttributes(getExternalAttributes());
        zipArchiveEntry.setExtraFields(m66432M());
        return zipArchiveEntry;
    }

    /* renamed from: e0 */
    public final ZipExtraField[] m66433e0() {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        ZipExtraField[] m66437j = m66437j(zipExtraFieldArr, zipExtraFieldArr.length + 1);
        m66437j[this.extraFields.length] = this.unparseableExtra;
        return m66437j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) obj;
        if (!Objects.equals(getName(), zipArchiveEntry.getName())) {
            return false;
        }
        String comment = getComment();
        String comment2 = zipArchiveEntry.getComment();
        if (comment == null) {
            comment = "";
        }
        if (comment2 == null) {
            comment2 = "";
        }
        return getTime() == zipArchiveEntry.getTime() && comment.equals(comment2) && getInternalAttributes() == zipArchiveEntry.getInternalAttributes() && getPlatform() == zipArchiveEntry.getPlatform() && getExternalAttributes() == zipArchiveEntry.getExternalAttributes() && getMethod() == zipArchiveEntry.getMethod() && getSize() == zipArchiveEntry.getSize() && getCrc() == zipArchiveEntry.getCrc() && getCompressedSize() == zipArchiveEntry.getCompressedSize() && Arrays.equals(getCentralDirectoryExtra(), zipArchiveEntry.getCentralDirectoryExtra()) && Arrays.equals(getLocalFileDataExtra(), zipArchiveEntry.getLocalFileDataExtra()) && this.localHeaderOffset == zipArchiveEntry.localHeaderOffset && this.dataOffset == zipArchiveEntry.dataOffset && this.gpb.equals(zipArchiveEntry.gpb);
    }

    /* renamed from: f0 */
    public final ZipExtraField[] m66434f0() {
        ZipExtraField[] m66435g0 = m66435g0();
        return m66435g0 == this.extraFields ? m66437j(m66435g0, m66435g0.length) : m66435g0;
    }

    /* renamed from: g0 */
    public final ZipExtraField[] m66435g0() {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        return zipExtraFieldArr == null ? ExtraFieldUtils.f105780c : zipExtraFieldArr;
    }

    public int getAlignment() {
        return this.alignment;
    }

    public byte[] getCentralDirectoryExtra() {
        return ExtraFieldUtils.mergeCentralDirectoryData(m66432M());
    }

    public CommentSource getCommentSource() {
        return this.commentSource;
    }

    @Override // org.apache.commons.compress.archivers.EntryStreamOffsets
    public long getDataOffset() {
        return this.dataOffset;
    }

    public long getDiskNumberStart() {
        return this.diskNumberStart;
    }

    public long getExternalAttributes() {
        return this.externalAttributes;
    }

    public ZipExtraField getExtraField(ZipShort zipShort) {
        ZipExtraField[] zipExtraFieldArr = this.extraFields;
        if (zipExtraFieldArr == null) {
            return null;
        }
        for (ZipExtraField zipExtraField : zipExtraFieldArr) {
            if (zipShort.equals(zipExtraField.getHeaderId())) {
                return zipExtraField;
            }
        }
        return null;
    }

    public ZipExtraField[] getExtraFields() {
        return m66434f0();
    }

    public GeneralPurposeBit getGeneralPurposeBit() {
        return this.gpb;
    }

    public int getInternalAttributes() {
        return this.internalAttributes;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        return new Date(getTime());
    }

    public byte[] getLocalFileDataExtra() {
        byte[] extra = getExtra();
        return extra != null ? extra : ByteUtils.EMPTY_BYTE_ARRAY;
    }

    public long getLocalHeaderOffset() {
        return this.localHeaderOffset;
    }

    @Override // java.util.zip.ZipEntry
    public int getMethod() {
        return this.method;
    }

    @Override // java.util.zip.ZipEntry, org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        String str = this.name;
        return str == null ? super.getName() : str;
    }

    public NameSource getNameSource() {
        return this.nameSource;
    }

    public int getPlatform() {
        return this.platform;
    }

    public int getRawFlag() {
        return this.rawFlag;
    }

    public byte[] getRawName() {
        byte[] bArr = this.rawName;
        if (bArr != null) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        return null;
    }

    @Override // java.util.zip.ZipEntry, org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return this.size;
    }

    public int getUnixMode() {
        if (this.platform != 3) {
            return 0;
        }
        return (int) ((getExternalAttributes() >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX);
    }

    public UnparseableExtraFieldData getUnparseableExtraFieldData() {
        return this.unparseableExtra;
    }

    public int getVersionMadeBy() {
        return this.versionMadeBy;
    }

    public int getVersionRequired() {
        return this.versionRequired;
    }

    /* renamed from: h0 */
    public final ZipExtraField[] m66436h0() {
        UnparseableExtraFieldData unparseableExtraFieldData = this.unparseableExtra;
        return unparseableExtraFieldData == null ? ExtraFieldUtils.f105780c : new ZipExtraField[]{unparseableExtraFieldData};
    }

    @Override // java.util.zip.ZipEntry
    public int hashCode() {
        return getName().hashCode();
    }

    @Override // java.util.zip.ZipEntry, org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        return getName().endsWith("/");
    }

    @Override // org.apache.commons.compress.archivers.EntryStreamOffsets
    public boolean isStreamContiguous() {
        return this.isStreamContiguous;
    }

    public boolean isUnixSymlink() {
        return (getUnixMode() & 61440) == 40960;
    }

    /* renamed from: j */
    public final ZipExtraField[] m66437j(ZipExtraField[] zipExtraFieldArr, int i) {
        ZipExtraField[] zipExtraFieldArr2 = new ZipExtraField[i];
        System.arraycopy(zipExtraFieldArr, 0, zipExtraFieldArr2, 0, Math.min(zipExtraFieldArr.length, i));
        return zipExtraFieldArr2;
    }

    /* renamed from: j0 */
    public final void m66438j0(ZipExtraField[] zipExtraFieldArr, boolean z) {
        if (this.extraFields == null) {
            setExtraFields(zipExtraFieldArr);
            return;
        }
        for (ZipExtraField zipExtraField : zipExtraFieldArr) {
            ZipExtraField extraField = zipExtraField instanceof UnparseableExtraFieldData ? this.unparseableExtra : getExtraField(zipExtraField.getHeaderId());
            if (extraField == null) {
                addExtraField(zipExtraField);
            } else {
                byte[] localFileDataData = z ? zipExtraField.getLocalFileDataData() : zipExtraField.getCentralDirectoryData();
                if (z) {
                    try {
                        extraField.parseFromLocalFileData(localFileDataData, 0, localFileDataData.length);
                    } catch (ZipException unused) {
                        UnrecognizedExtraField unrecognizedExtraField = new UnrecognizedExtraField();
                        unrecognizedExtraField.setHeaderId(extraField.getHeaderId());
                        if (z) {
                            unrecognizedExtraField.setLocalFileDataData(localFileDataData);
                            unrecognizedExtraField.setCentralDirectoryData(extraField.getCentralDirectoryData());
                        } else {
                            unrecognizedExtraField.setLocalFileDataData(extraField.getLocalFileDataData());
                            unrecognizedExtraField.setCentralDirectoryData(localFileDataData);
                        }
                        removeExtraField(extraField.getHeaderId());
                        addExtraField(unrecognizedExtraField);
                    }
                } else {
                    extraField.parseFromCentralDirectoryData(localFileDataData, 0, localFileDataData.length);
                }
            }
        }
        setExtra();
    }

    public void removeExtraField(ZipShort zipShort) {
        if (this.extraFields == null) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        for (ZipExtraField zipExtraField : this.extraFields) {
            if (!zipShort.equals(zipExtraField.getHeaderId())) {
                arrayList.add(zipExtraField);
            }
        }
        if (this.extraFields.length == arrayList.size()) {
            throw new NoSuchElementException();
        }
        this.extraFields = (ZipExtraField[]) arrayList.toArray(ExtraFieldUtils.f105780c);
        setExtra();
    }

    public void removeUnparseableExtraFieldData() {
        if (this.unparseableExtra == null) {
            throw new NoSuchElementException();
        }
        this.unparseableExtra = null;
        setExtra();
    }

    public void setAlignment(int i) {
        if (((i - 1) & i) == 0 && i <= 65535) {
            this.alignment = i;
            return;
        }
        throw new IllegalArgumentException("Invalid value for alignment, must be power of two and no bigger than 65535 but is " + i);
    }

    public void setCentralDirectoryExtra(byte[] bArr) {
        try {
            m66438j0(ExtraFieldUtils.parse(bArr, false, (ExtraFieldParsingBehavior) ExtraFieldParsingMode.BEST_EFFORT), false);
        } catch (ZipException e) {
            throw new IllegalArgumentException(e.getMessage(), e);
        }
    }

    public void setCommentSource(CommentSource commentSource) {
        this.commentSource = commentSource;
    }

    public void setDataOffset(long j) {
        this.dataOffset = j;
    }

    public void setDiskNumberStart(long j) {
        this.diskNumberStart = j;
    }

    public void setExternalAttributes(long j) {
        this.externalAttributes = j;
    }

    @Override // java.util.zip.ZipEntry
    public void setExtra(byte[] bArr) throws RuntimeException {
        try {
            m66438j0(ExtraFieldUtils.parse(bArr, true, (ExtraFieldParsingBehavior) ExtraFieldParsingMode.BEST_EFFORT), true);
        } catch (ZipException e) {
            throw new IllegalArgumentException("Error parsing extra fields for entry: " + getName() + " - " + e.getMessage(), e);
        }
    }

    public void setExtraFields(ZipExtraField[] zipExtraFieldArr) {
        this.unparseableExtra = null;
        ArrayList arrayList = new ArrayList();
        if (zipExtraFieldArr != null) {
            for (ZipExtraField zipExtraField : zipExtraFieldArr) {
                if (zipExtraField instanceof UnparseableExtraFieldData) {
                    this.unparseableExtra = (UnparseableExtraFieldData) zipExtraField;
                } else {
                    arrayList.add(zipExtraField);
                }
            }
        }
        this.extraFields = (ZipExtraField[]) arrayList.toArray(ExtraFieldUtils.f105780c);
        setExtra();
    }

    public void setGeneralPurposeBit(GeneralPurposeBit generalPurposeBit) {
        this.gpb = generalPurposeBit;
    }

    public void setInternalAttributes(int i) {
        this.internalAttributes = i;
    }

    public void setLocalHeaderOffset(long j) {
        this.localHeaderOffset = j;
    }

    @Override // java.util.zip.ZipEntry
    public void setMethod(int i) {
        if (i >= 0) {
            this.method = i;
            return;
        }
        throw new IllegalArgumentException("ZIP compression method can not be negative: " + i);
    }

    public void setName(String str) {
        if (str != null && getPlatform() == 0 && !str.contains("/")) {
            str = str.replace('\\', '/');
        }
        this.name = str;
    }

    public void setNameSource(NameSource nameSource) {
        this.nameSource = nameSource;
    }

    public void setPlatform(int i) {
        this.platform = i;
    }

    public void setRawFlag(int i) {
        this.rawFlag = i;
    }

    @Override // java.util.zip.ZipEntry
    public void setSize(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Invalid entry size");
        }
        this.size = j;
    }

    public void setStreamContiguous(boolean z) {
        this.isStreamContiguous = z;
    }

    public void setTime(FileTime fileTime) {
        setTime(fileTime.toMillis());
    }

    public void setUnixMode(int i) {
        setExternalAttributes(((i & 128) == 0 ? 1 : 0) | (i << 16) | (isDirectory() ? 16 : 0));
        this.platform = 3;
    }

    public void setVersionMadeBy(int i) {
        this.versionMadeBy = i;
    }

    public void setVersionRequired(int i) {
        this.versionRequired = i;
    }

    /* renamed from: w */
    public final ZipExtraField m66439w(final ZipShort zipShort, List<ZipExtraField> list) {
        return list.stream().filter(new Predicate() { // from class: com.sunia.HTREnginev2.dxo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m66429i0;
                m66429i0 = ZipArchiveEntry.m66429i0(ZipShort.this, (ZipExtraField) obj);
                return m66429i0;
            }
        }).findFirst().orElse(null);
    }

    public ZipExtraField[] getExtraFields(boolean z) {
        if (z) {
            return m66431I();
        }
        return m66434f0();
    }

    public ZipExtraField[] getExtraFields(ExtraFieldParsingBehavior extraFieldParsingBehavior) throws ZipException {
        ZipExtraField m66439w;
        if (extraFieldParsingBehavior == ExtraFieldParsingMode.BEST_EFFORT) {
            return getExtraFields(true);
        }
        if (extraFieldParsingBehavior == ExtraFieldParsingMode.ONLY_PARSEABLE_LENIENT) {
            return getExtraFields(false);
        }
        ArrayList<ZipExtraField> arrayList = new ArrayList(Arrays.asList(ExtraFieldUtils.parse(getExtra(), true, extraFieldParsingBehavior)));
        ArrayList arrayList2 = new ArrayList(Arrays.asList(ExtraFieldUtils.parse(getCentralDirectoryExtra(), false, extraFieldParsingBehavior)));
        ArrayList arrayList3 = new ArrayList();
        for (ZipExtraField zipExtraField : arrayList) {
            if (zipExtraField instanceof UnparseableExtraFieldData) {
                m66439w = m66430H(arrayList2);
            } else {
                m66439w = m66439w(zipExtraField.getHeaderId(), arrayList2);
            }
            if (m66439w != null) {
                byte[] centralDirectoryData = m66439w.getCentralDirectoryData();
                if (centralDirectoryData != null && centralDirectoryData.length > 0) {
                    zipExtraField.parseFromCentralDirectoryData(centralDirectoryData, 0, centralDirectoryData.length);
                }
                arrayList2.remove(m66439w);
            }
            arrayList3.add(zipExtraField);
        }
        arrayList3.addAll(arrayList2);
        return (ZipExtraField[]) arrayList3.toArray(ExtraFieldUtils.f105780c);
    }

    public void setExtra() {
        super.setExtra(ExtraFieldUtils.mergeLocalFileDataData(m66432M()));
    }

    public void setName(String str, byte[] bArr) {
        setName(str);
        this.rawName = bArr;
    }

    public ZipArchiveEntry(ZipEntry zipEntry) throws ZipException {
        super(zipEntry);
        this.method = -1;
        this.size = -1L;
        this.platform = 0;
        this.gpb = new GeneralPurposeBit();
        this.localHeaderOffset = -1L;
        this.dataOffset = -1L;
        this.nameSource = NameSource.NAME;
        this.commentSource = CommentSource.COMMENT;
        setName(zipEntry.getName());
        byte[] extra = zipEntry.getExtra();
        if (extra != null) {
            setExtraFields(ExtraFieldUtils.parse(extra, true, (ExtraFieldParsingBehavior) ExtraFieldParsingMode.BEST_EFFORT));
        } else {
            setExtra();
        }
        setMethod(zipEntry.getMethod());
        this.size = zipEntry.getSize();
    }

    public ZipArchiveEntry(ZipArchiveEntry zipArchiveEntry) throws ZipException {
        this((ZipEntry) zipArchiveEntry);
        setInternalAttributes(zipArchiveEntry.getInternalAttributes());
        setExternalAttributes(zipArchiveEntry.getExternalAttributes());
        setExtraFields(m66432M());
        setPlatform(zipArchiveEntry.getPlatform());
        GeneralPurposeBit generalPurposeBit = zipArchiveEntry.getGeneralPurposeBit();
        setGeneralPurposeBit(generalPurposeBit == null ? null : (GeneralPurposeBit) generalPurposeBit.clone());
    }

    public ZipArchiveEntry() {
        this("");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ZipArchiveEntry(java.io.File r3, java.lang.String r4) {
        /*
            r2 = this;
            boolean r0 = r3.isDirectory()
            if (r0 == 0) goto L1d
            java.lang.String r0 = "/"
            boolean r1 = r4.endsWith(r0)
            if (r1 != 0) goto L1d
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r4)
            r1.append(r0)
            java.lang.String r4 = r1.toString()
        L1d:
            r2.<init>(r4)
            boolean r4 = r3.isFile()
            if (r4 == 0) goto L2d
            long r0 = r3.length()
            r2.setSize(r0)
        L2d:
            long r3 = r3.lastModified()
            r2.setTime(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.zip.ZipArchiveEntry.<init>(java.io.File, java.lang.String):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ZipArchiveEntry(java.nio.file.Path r3, java.lang.String r4, java.nio.file.LinkOption... r5) throws java.io.IOException {
        /*
            r2 = this;
            boolean r0 = java.nio.file.Files.isDirectory(r3, r5)
            if (r0 == 0) goto L1d
            java.lang.String r0 = "/"
            boolean r1 = r4.endsWith(r0)
            if (r1 != 0) goto L1d
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r4)
            r1.append(r0)
            java.lang.String r4 = r1.toString()
        L1d:
            r2.<init>(r4)
            boolean r4 = java.nio.file.Files.isRegularFile(r3, r5)
            if (r4 == 0) goto L2d
            long r0 = java.nio.file.Files.size(r3)
            r2.setSize(r0)
        L2d:
            java.nio.file.attribute.FileTime r3 = java.nio.file.Files.getLastModifiedTime(r3, r5)
            r2.setTime(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.compress.archivers.zip.ZipArchiveEntry.<init>(java.nio.file.Path, java.lang.String, java.nio.file.LinkOption[]):void");
    }
}
