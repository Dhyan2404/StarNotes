package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.HeadersFootersAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class HeadersFootersAtom extends RecordAtom {
    private static final int[] PLACEHOLDER_MASKS = {1, 2, 4, 8, 16, 32};
    private static final String[] PLACEHOLDER_NAMES = {"DATE", "TODAY_DATE", "USER_DATE", "SLIDE_NUMBER", "HEADER", "FOOTER"};
    public static final int fHasDate = 1;
    public static final int fHasFooter = 32;
    public static final int fHasHeader = 16;
    public static final int fHasSlideNumber = 8;
    public static final int fHasTodayDate = 2;
    public static final int fHasUserDate = 4;
    private final byte[] _header;
    private final byte[] _recdata;

    public HeadersFootersAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._recdata = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
    }

    public boolean getFlag(int i) {
        return (getMask() & i) != 0;
    }

    public int getFormatId() {
        return LittleEndian.getShort(this._recdata, 0);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("formatIndex", new Supplier() { // from class: com.sunia.HTREnginev2.ufh
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(HeadersFootersAtom.this.getFormatId());
            }
        }, "flags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.vfh
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(HeadersFootersAtom.this.getMask());
            }
        }, PLACEHOLDER_MASKS, PLACEHOLDER_NAMES));
    }

    public int getMask() {
        return LittleEndian.getShort(this._recdata, 2);
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.HeadersFootersAtom.typeID;
    }

    public void setFlag(int i, boolean z) {
        int mask = getMask();
        setMask(z ? i | mask : (~i) & mask);
    }

    public void setFormatId(int i) {
        LittleEndian.putUShort(this._recdata, 0, i);
    }

    public void setMask(int i) {
        LittleEndian.putUShort(this._recdata, 2, i);
    }

    public String toString() {
        return "HeadersFootersAtom\n\tFormatId: " + getFormatId() + "\n\tMask    : " + getMask() + "\n\t  fHasDate        : " + getFlag(1) + "\n\t  fHasTodayDate   : " + getFlag(2) + "\n\t  fHasUserDate    : " + getFlag(4) + "\n\t  fHasSlideNumber : " + getFlag(8) + "\n\t  fHasHeader      : " + getFlag(16) + "\n\t  fHasFooter      : " + getFlag(32) + "\n";
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._recdata);
    }

    public HeadersFootersAtom() {
        byte[] bArr = new byte[4];
        this._recdata = bArr;
        byte[] bArr2 = new byte[8];
        this._header = bArr2;
        LittleEndian.putShort(bArr2, 2, (short) getRecordType());
        LittleEndian.putInt(bArr2, 4, bArr.length);
    }
}
