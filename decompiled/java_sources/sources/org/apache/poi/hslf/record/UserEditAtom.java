package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.record.UserEditAtom;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class UserEditAtom extends PositionDependentRecordAtom {
    public static final int LAST_VIEW_NONE = 0;
    public static final int LAST_VIEW_NOTES = 3;
    public static final int LAST_VIEW_OUTLINE_VIEW = 2;
    public static final int LAST_VIEW_SLIDE_VIEW = 1;
    private static final long _type = RecordTypes.UserEditAtom.typeID;
    private byte[] _header;
    private int docPersistRef;
    private int encryptSessionPersistIdRef;
    private int lastUserEditAtomOffset;
    private short lastViewType;
    private int lastViewedSlideID;
    private int maxPersistWritten;
    private int persistPointersOffset;
    private int pptVersion;
    private short unused;

    public UserEditAtom(byte[] bArr, int i, int i2) {
        this.encryptSessionPersistIdRef = -1;
        i2 = i2 < 34 ? 34 : i2;
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this.lastViewedSlideID = LittleEndian.getInt(bArr, i3);
        int i4 = i3 + 4;
        this.pptVersion = LittleEndian.getInt(bArr, i4);
        int i5 = i4 + 4;
        this.lastUserEditAtomOffset = LittleEndian.getInt(bArr, i5);
        int i6 = i5 + 4;
        this.persistPointersOffset = LittleEndian.getInt(bArr, i6);
        int i7 = i6 + 4;
        this.docPersistRef = LittleEndian.getInt(bArr, i7);
        int i8 = i7 + 4;
        this.maxPersistWritten = LittleEndian.getInt(bArr, i8);
        int i9 = i8 + 4;
        this.lastViewType = LittleEndian.getShort(bArr, i9);
        int i10 = i9 + 2;
        this.unused = LittleEndian.getShort(bArr, i10);
        int i11 = i10 + 2;
        if (i11 - i < i2) {
            this.encryptSessionPersistIdRef = LittleEndian.getInt(bArr, i11);
            i11 += 4;
        }
        if (i11 - i == i2) {
            return;
        }
        throw new HSLFException("Having invalid data in UserEditAtom: len: " + i2 + ", offset: " + i11 + ", start: " + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.pptVersion);
    }

    public int getDocPersistRef() {
        return this.docPersistRef;
    }

    public int getEncryptSessionPersistIdRef() {
        return this.encryptSessionPersistIdRef;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("lastViewedSlideID", new Supplier() { // from class: com.sunia.HTREnginev2.nyn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(UserEditAtom.this.getLastViewedSlideID());
            }
        });
        linkedHashMap.put("pptVersion", new Supplier() { // from class: com.sunia.HTREnginev2.oyn
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = UserEditAtom.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
        linkedHashMap.put("lastUserEditAtomOffset", new Supplier() { // from class: com.sunia.HTREnginev2.pyn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(UserEditAtom.this.getLastUserEditAtomOffset());
            }
        });
        linkedHashMap.put("persistPointersOffset", new Supplier() { // from class: com.sunia.HTREnginev2.qyn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(UserEditAtom.this.getPersistPointersOffset());
            }
        });
        linkedHashMap.put("docPersistRef", new Supplier() { // from class: com.sunia.HTREnginev2.ryn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(UserEditAtom.this.getDocPersistRef());
            }
        });
        linkedHashMap.put("maxPersistWritten", new Supplier() { // from class: com.sunia.HTREnginev2.syn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(UserEditAtom.this.getMaxPersistWritten());
            }
        });
        linkedHashMap.put("lastViewType", new Supplier() { // from class: com.sunia.HTREnginev2.tyn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(UserEditAtom.this.getLastViewType());
            }
        });
        linkedHashMap.put("encryptSessionPersistIdRef", new Supplier() { // from class: com.sunia.HTREnginev2.uyn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(UserEditAtom.this.getEncryptSessionPersistIdRef());
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public int getLastUserEditAtomOffset() {
        return this.lastUserEditAtomOffset;
    }

    public short getLastViewType() {
        return this.lastViewType;
    }

    public int getLastViewedSlideID() {
        return this.lastViewedSlideID;
    }

    public int getMaxPersistWritten() {
        return this.maxPersistWritten;
    }

    public int getPersistPointersOffset() {
        return this.persistPointersOffset;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public void setEncryptSessionPersistIdRef(int i) {
        this.encryptSessionPersistIdRef = i;
        LittleEndian.putInt(this._header, 4, i == -1 ? 28 : 32);
    }

    public void setLastUserEditAtomOffset(int i) {
        this.lastUserEditAtomOffset = i;
    }

    public void setLastViewType(short s) {
        this.lastViewType = s;
    }

    public void setMaxPersistWritten(int i) {
        this.maxPersistWritten = i;
    }

    public void setPersistPointersOffset(int i) {
        this.persistPointersOffset = i;
    }

    @Override // org.apache.poi.hslf.record.PositionDependentRecordAtom, org.apache.poi.hslf.record.PositionDependentRecord
    public void updateOtherRecordReferences(Map<Integer, Integer> map) {
        int i = this.lastUserEditAtomOffset;
        if (i != 0) {
            Integer num = map.get(Integer.valueOf(i));
            if (num == null) {
                throw new HSLFException("Couldn't find the new location of the UserEditAtom that used to be at " + this.lastUserEditAtomOffset);
            }
            this.lastUserEditAtomOffset = num.intValue();
        }
        Integer num2 = map.get(Integer.valueOf(this.persistPointersOffset));
        if (num2 != null) {
            this.persistPointersOffset = num2.intValue();
            return;
        }
        throw new HSLFException("Couldn't find the new location of the PersistPtr that used to be at " + this.persistPointersOffset);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        Record.writeLittleEndian(this.lastViewedSlideID, outputStream);
        Record.writeLittleEndian(this.pptVersion, outputStream);
        Record.writeLittleEndian(this.lastUserEditAtomOffset, outputStream);
        Record.writeLittleEndian(this.persistPointersOffset, outputStream);
        Record.writeLittleEndian(this.docPersistRef, outputStream);
        Record.writeLittleEndian(this.maxPersistWritten, outputStream);
        Record.writeLittleEndian(this.lastViewType, outputStream);
        Record.writeLittleEndian(this.unused, outputStream);
        int i = this.encryptSessionPersistIdRef;
        if (i != -1) {
            Record.writeLittleEndian(i, outputStream);
        }
    }
}
