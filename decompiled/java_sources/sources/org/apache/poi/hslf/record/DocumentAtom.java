package org.apache.poi.hslf.record;

import com.sun.org.apache.xml.internal.utils.res.XResourceBundle;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.DocumentAtom;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndianByteArrayInputStream;
import org.apache.poi.util.Removal;

/* loaded from: classes12.dex */
public final class DocumentAtom extends RecordAtom {
    private static final long _type = RecordTypes.DocumentAtom.typeID;
    private final byte[] _header;
    private final int firstSlideNum;
    private final long handoutMasterPersist;
    private final long notesMasterPersist;
    private long notesSizeX;
    private long notesSizeY;
    private final byte omitTitlePlace;
    private final byte[] reserved;
    private final byte rightToLeft;
    private byte saveWithFonts;
    private long serverZoomFrom;
    private long serverZoomTo;
    private final byte showComments;
    private int slideSizeType;
    private long slideSizeX;
    private long slideSizeY;

    /* loaded from: classes12.dex */
    public enum SlideSize {
        ON_SCREEN,
        LETTER_SIZED_PAPER,
        A4_SIZED_PAPER,
        ON_35MM,
        OVERHEAD,
        BANNER,
        CUSTOM
    }

    public DocumentAtom(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[8];
        this._header = bArr2;
        int max = Math.max(i2, 48);
        LittleEndianByteArrayInputStream littleEndianByteArrayInputStream = new LittleEndianByteArrayInputStream(bArr, i, max);
        littleEndianByteArrayInputStream.readFully(bArr2);
        this.slideSizeX = littleEndianByteArrayInputStream.readInt();
        this.slideSizeY = littleEndianByteArrayInputStream.readInt();
        this.notesSizeX = littleEndianByteArrayInputStream.readInt();
        this.notesSizeY = littleEndianByteArrayInputStream.readInt();
        this.serverZoomFrom = littleEndianByteArrayInputStream.readInt();
        this.serverZoomTo = littleEndianByteArrayInputStream.readInt();
        this.notesMasterPersist = littleEndianByteArrayInputStream.readInt();
        this.handoutMasterPersist = littleEndianByteArrayInputStream.readInt();
        this.firstSlideNum = littleEndianByteArrayInputStream.readShort();
        this.slideSizeType = littleEndianByteArrayInputStream.readShort();
        this.saveWithFonts = littleEndianByteArrayInputStream.readByte();
        this.omitTitlePlace = littleEndianByteArrayInputStream.readByte();
        this.rightToLeft = littleEndianByteArrayInputStream.readByte();
        this.showComments = littleEndianByteArrayInputStream.readByte();
        byte[] safelyAllocate = IOUtils.safelyAllocate(max - 48, RecordAtom.getMaxRecordLength());
        this.reserved = safelyAllocate;
        littleEndianByteArrayInputStream.readFully(safelyAllocate);
    }

    public int getFirstSlideNum() {
        return this.firstSlideNum;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("slideSizeX", new Supplier() { // from class: com.sunia.HTREnginev2.v9f
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(DocumentAtom.this.getSlideSizeX());
            }
        });
        linkedHashMap.put("slideSizeY", new Supplier() { // from class: com.sunia.HTREnginev2.eaf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(DocumentAtom.this.getSlideSizeY());
            }
        });
        linkedHashMap.put("notesSizeX", new Supplier() { // from class: com.sunia.HTREnginev2.faf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(DocumentAtom.this.getNotesSizeX());
            }
        });
        linkedHashMap.put("notesSizeY", new Supplier() { // from class: com.sunia.HTREnginev2.gaf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(DocumentAtom.this.getNotesSizeY());
            }
        });
        linkedHashMap.put("serverZoomFrom", new Supplier() { // from class: com.sunia.HTREnginev2.haf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(DocumentAtom.this.getServerZoomFrom());
            }
        });
        linkedHashMap.put("serverZoomTo", new Supplier() { // from class: com.sunia.HTREnginev2.iaf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(DocumentAtom.this.getServerZoomTo());
            }
        });
        linkedHashMap.put("notesMasterPersist", new Supplier() { // from class: com.sunia.HTREnginev2.w9f
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(DocumentAtom.this.getNotesMasterPersist());
            }
        });
        linkedHashMap.put("handoutMasterPersist", new Supplier() { // from class: com.sunia.HTREnginev2.x9f
            @Override // java.util.function.Supplier
            public final Object get() {
                return Long.valueOf(DocumentAtom.this.getHandoutMasterPersist());
            }
        });
        linkedHashMap.put("firstSlideNum", new Supplier() { // from class: com.sunia.HTREnginev2.y9f
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(DocumentAtom.this.getFirstSlideNum());
            }
        });
        linkedHashMap.put("slideSize", new Supplier() { // from class: com.sunia.HTREnginev2.z9f
            @Override // java.util.function.Supplier
            public final Object get() {
                return DocumentAtom.this.getSlideSizeTypeEnum();
            }
        });
        linkedHashMap.put("saveWithFonts", new Supplier() { // from class: com.sunia.HTREnginev2.aaf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(DocumentAtom.this.getSaveWithFonts());
            }
        });
        linkedHashMap.put("omitTitlePlace", new Supplier() { // from class: com.sunia.HTREnginev2.baf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(DocumentAtom.this.getOmitTitlePlace());
            }
        });
        linkedHashMap.put(XResourceBundle.LANG_RIGHTTOLEFT, new Supplier() { // from class: com.sunia.HTREnginev2.caf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(DocumentAtom.this.getRightToLeft());
            }
        });
        linkedHashMap.put("showComments", new Supplier() { // from class: com.sunia.HTREnginev2.daf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(DocumentAtom.this.getShowComments());
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public long getHandoutMasterPersist() {
        return this.handoutMasterPersist;
    }

    public long getNotesMasterPersist() {
        return this.notesMasterPersist;
    }

    public long getNotesSizeX() {
        return this.notesSizeX;
    }

    public long getNotesSizeY() {
        return this.notesSizeY;
    }

    public boolean getOmitTitlePlace() {
        return this.omitTitlePlace != 0;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public boolean getRightToLeft() {
        return this.rightToLeft != 0;
    }

    public boolean getSaveWithFonts() {
        return this.saveWithFonts != 0;
    }

    public long getServerZoomFrom() {
        return this.serverZoomFrom;
    }

    public long getServerZoomTo() {
        return this.serverZoomTo;
    }

    public boolean getShowComments() {
        return this.showComments != 0;
    }

    public SlideSize getSlideSizeType() {
        return SlideSize.values()[this.slideSizeType];
    }

    @Removal(version = "6.0.0")
    @Deprecated
    public SlideSize getSlideSizeTypeEnum() {
        return SlideSize.values()[this.slideSizeType];
    }

    public long getSlideSizeX() {
        return this.slideSizeX;
    }

    public long getSlideSizeY() {
        return this.slideSizeY;
    }

    public void setNotesSizeX(long j) {
        this.notesSizeX = j;
    }

    public void setNotesSizeY(long j) {
        this.notesSizeY = j;
    }

    public void setSaveWithFonts(boolean z) {
        this.saveWithFonts = z ? (byte) 1 : (byte) 0;
    }

    public void setServerZoomFrom(long j) {
        this.serverZoomFrom = j;
    }

    public void setServerZoomTo(long j) {
        this.serverZoomTo = j;
    }

    public void setSlideSize(SlideSize slideSize) {
        this.slideSizeType = slideSize.ordinal();
    }

    public void setSlideSizeX(long j) {
        this.slideSizeX = j;
    }

    public void setSlideSizeY(long j) {
        this.slideSizeY = j;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        Record.writeLittleEndian((int) this.slideSizeX, outputStream);
        Record.writeLittleEndian((int) this.slideSizeY, outputStream);
        Record.writeLittleEndian((int) this.notesSizeX, outputStream);
        Record.writeLittleEndian((int) this.notesSizeY, outputStream);
        Record.writeLittleEndian((int) this.serverZoomFrom, outputStream);
        Record.writeLittleEndian((int) this.serverZoomTo, outputStream);
        Record.writeLittleEndian((int) this.notesMasterPersist, outputStream);
        Record.writeLittleEndian((int) this.handoutMasterPersist, outputStream);
        Record.writeLittleEndian((short) this.firstSlideNum, outputStream);
        Record.writeLittleEndian((short) this.slideSizeType, outputStream);
        outputStream.write(this.saveWithFonts);
        outputStream.write(this.omitTitlePlace);
        outputStream.write(this.rightToLeft);
        outputStream.write(this.showComments);
        outputStream.write(this.reserved);
    }
}
