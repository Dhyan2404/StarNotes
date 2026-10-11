package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.record.TextSpecInfoAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianByteArrayInputStream;

/* loaded from: classes12.dex */
public final class TextSpecInfoAtom extends RecordAtom {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final long _type = RecordTypes.TextSpecInfoAtom.typeID;
    private byte[] _data;
    private final byte[] _header;

    public TextSpecInfoAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putUInt(bArr, 4, _type);
        reset(1);
    }

    public int getCharactersCovered() {
        int i = 0;
        for (TextSpecInfoRun textSpecInfoRun : getTextSpecInfoRuns()) {
            i += textSpecInfoRun.getLength();
        }
        return i;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("charactersCovered", new Supplier() { // from class: com.sunia.HTREnginev2.gfn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TextSpecInfoAtom.this.getCharactersCovered());
            }
        }, "textSpecInfoRuns", new Supplier() { // from class: com.sunia.HTREnginev2.hfn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextSpecInfoAtom.this.getTextSpecInfoRuns();
            }
        });
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return _type;
    }

    public TextSpecInfoRun[] getTextSpecInfoRuns() {
        LittleEndianByteArrayInputStream littleEndianByteArrayInputStream = new LittleEndianByteArrayInputStream(this._data);
        ArrayList arrayList = new ArrayList();
        while (littleEndianByteArrayInputStream.getReadIndex() < this._data.length) {
            arrayList.add(new TextSpecInfoRun(littleEndianByteArrayInputStream));
        }
        return (TextSpecInfoRun[]) arrayList.toArray(new TextSpecInfoRun[0]);
    }

    public void reset(int i) {
        TextSpecInfoRun textSpecInfoRun = new TextSpecInfoRun(i);
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            textSpecInfoRun.writeOut(unsynchronizedByteArrayOutputStream);
            byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
            this._data = byteArray;
            LittleEndian.putInt(this._header, 4, byteArray.length);
        } catch (IOException e) {
            throw new HSLFException(e);
        }
    }

    public void setParentSize(int i) {
        try {
            UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
            try {
                int i2 = 0;
                for (TextSpecInfoRun textSpecInfoRun : getTextSpecInfoRuns()) {
                    int length = textSpecInfoRun.getLength();
                    if (length > i || i2 == r1.length - 1) {
                        textSpecInfoRun.setLength(i);
                        length = i;
                    }
                    i -= length;
                    textSpecInfoRun.writeOut(unsynchronizedByteArrayOutputStream);
                    i2++;
                }
                byte[] byteArray = unsynchronizedByteArrayOutputStream.toByteArray();
                this._data = byteArray;
                LittleEndian.putInt(this._header, 4, byteArray.length);
                unsynchronizedByteArrayOutputStream.close();
            } finally {
            }
        } catch (IOException e) {
            throw new HSLFException(e);
        }
    }

    public void setTextSize(int i) {
        LittleEndian.putInt(this._data, 0, i);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._data);
    }

    public TextSpecInfoAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._data = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
    }
}
