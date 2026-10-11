package org.apache.poi.hslf.record;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.record.TextHeaderAtom;
import org.apache.poi.sl.usermodel.TextShape;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class TextHeaderAtom extends RecordAtom implements ParentAwareRecord {
    public static final long _type = RecordTypes.TextHeaderAtom.typeID;
    private byte[] _header;
    private int index = -1;
    private RecordContainer parentRecord;
    private int textType;

    public TextHeaderAtom(byte[] bArr, int i, int i2) {
        if (i2 < 12 && bArr.length - i < 12) {
            throw new HSLFException("Not enough data to form a TextHeaderAtom (always 12 bytes long) - found " + (bArr.length - i));
        }
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this.textType = LittleEndian.getInt(bArr, i3);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties(FirebaseAnalytics.Param.INDEX, new Supplier() { // from class: com.sunia.HTREnginev2.vcn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TextHeaderAtom.this.getIndex());
            }
        }, "textType", new Supplier() { // from class: com.sunia.HTREnginev2.wcn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextHeaderAtom.this.getTextTypeEnum();
            }
        });
    }

    public int getIndex() {
        return this.index;
    }

    @Override // org.apache.poi.hslf.record.ParentAwareRecord
    public RecordContainer getParentRecord() {
        return this.parentRecord;
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public int getTextType() {
        return this.textType;
    }

    public TextShape.TextPlaceholder getTextTypeEnum() {
        return TextShape.TextPlaceholder.fromNativeId(this.textType);
    }

    public void setIndex(int i) {
        this.index = i;
    }

    @Override // org.apache.poi.hslf.record.ParentAwareRecord
    public void setParentRecord(RecordContainer recordContainer) {
        this.parentRecord = recordContainer;
    }

    public void setTextType(int i) {
        this.textType = i;
    }

    public void setTextTypeEnum(TextShape.TextPlaceholder textPlaceholder) {
        this.textType = textPlaceholder.nativeId;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        Record.writeLittleEndian(this.textType, outputStream);
    }

    public TextHeaderAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putUShort(bArr, 0, 0);
        LittleEndian.putUShort(this._header, 2, (int) _type);
        LittleEndian.putInt(this._header, 4, 4);
        this.textType = TextShape.TextPlaceholder.OTHER.nativeId;
    }
}
