package org.apache.poi.hslf.record;

import com.sunia.HTREnginev2.gon;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.fonts.FontFamily;
import org.apache.poi.common.usermodel.fonts.FontPitch;
import org.apache.poi.hslf.exceptions.HSLFException;
import org.apache.poi.hslf.record.FontEntityAtom;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class FontEntityAtom extends RecordAtom {
    private static final int[] FLAGS_MASKS = {1, 256, 512, 1024, 2048};
    private static final String[] FLAGS_NAMES = {"EMBED_SUBSETTED", "RASTER_FONT", "DEVICE_FONT", "TRUETYPE_FONT", "NO_FONT_SUBSTITUTION"};
    private final byte[] _header;
    private byte[] _recdata;

    public FontEntityAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        this._recdata = IOUtils.safelyClone(bArr, i3, i2 - 8, RecordAtom.getMaxRecordLength());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return FontPitch.valueOfPitchFamily((byte) getPitchAndFamily());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return FontFamily.valueOfPitchFamily((byte) getPitchAndFamily());
    }

    public int getCharSet() {
        return this._recdata[64];
    }

    public int getFontFlags() {
        return this._recdata[65];
    }

    public int getFontIndex() {
        return LittleEndian.getShort(this._header, 0) >> 4;
    }

    public String getFontName() {
        return StringUtil.getFromUnicodeLE0Terminated(this._recdata, 0, Math.min(this._recdata.length, 64) / 2);
    }

    public int getFontType() {
        return this._recdata[66];
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("fontName", new Supplier() { // from class: com.sunia.HTREnginev2.ipg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontEntityAtom.this.getFontName();
            }
        }, "fontIndex", new Supplier() { // from class: com.sunia.HTREnginev2.jpg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(FontEntityAtom.this.getFontIndex());
            }
        }, "charset", new Supplier() { // from class: com.sunia.HTREnginev2.kpg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(FontEntityAtom.this.getCharSet());
            }
        }, "fontFlags", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.lpg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(FontEntityAtom.this.getFontFlags());
            }
        }, FLAGS_MASKS, FLAGS_NAMES), "fontPitch", new Supplier() { // from class: com.sunia.HTREnginev2.mpg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = FontEntityAtom.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        }, gon.f71258K, new Supplier() { // from class: com.sunia.HTREnginev2.npg
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = FontEntityAtom.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
    }

    public int getPitchAndFamily() {
        return this._recdata[67];
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.FontEntityAtom.typeID;
    }

    public void setCharSet(int i) {
        this._recdata[64] = (byte) i;
    }

    public void setFontFlags(int i) {
        this._recdata[65] = (byte) i;
    }

    public void setFontIndex(int i) {
        LittleEndian.putShort(this._header, 0, (short) i);
    }

    public void setFontName(String str) {
        if (str.length() + (!str.endsWith("\u0000")) > 32) {
            throw new HSLFException("The length of the font name, including null termination, must not exceed 32 characters");
        }
        byte[] toUnicodeLE = StringUtil.getToUnicodeLE(str);
        System.arraycopy(toUnicodeLE, 0, this._recdata, 0, toUnicodeLE.length);
        Arrays.fill(this._recdata, toUnicodeLE.length, 64, (byte) 0);
    }

    public void setFontType(int i) {
        this._recdata[66] = (byte) i;
    }

    public void setPitchAndFamily(int i) {
        this._recdata[67] = (byte) i;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._recdata);
    }

    public FontEntityAtom() {
        this._recdata = new byte[68];
        byte[] bArr = new byte[8];
        this._header = bArr;
        LittleEndian.putShort(bArr, 2, (short) getRecordType());
        LittleEndian.putInt(bArr, 4, this._recdata.length);
    }
}
