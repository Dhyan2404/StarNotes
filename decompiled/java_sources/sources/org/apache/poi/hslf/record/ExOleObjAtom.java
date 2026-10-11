package org.apache.poi.hslf.record;

import com.onyx.android.sdk.genericshape.GeoConstant;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hslf.record.ExOleObjAtom;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public class ExOleObjAtom extends RecordAtom {
    private static final int[] DRAWASPECT_MASKS = {1, 2, 4, 8};
    private static final String[] DRAWASPECT_NAMES = {"CONTENT", "THUMBNAIL", "ICON", "DOCPRINT"};
    public static final int DRAW_ASPECT_DOCPRINT = 8;
    public static final int DRAW_ASPECT_ICON = 4;
    public static final int DRAW_ASPECT_THUMBNAIL = 2;
    public static final int DRAW_ASPECT_VISIBLE = 1;
    private static final int MAX_RECORD_LENGTH = 10485760;
    public static final int SUBTYPE_CLIPART_GALLERY = 1;
    public static final int SUBTYPE_DEFAULT = 0;
    public static final int SUBTYPE_EQUATION = 6;
    public static final int SUBTYPE_EXCEL = 3;
    public static final int SUBTYPE_EXCEL_CHART = 14;
    public static final int SUBTYPE_GRAPH = 4;
    public static final int SUBTYPE_IMAGE = 9;
    public static final int SUBTYPE_MEDIA_PLAYER = 15;
    public static final int SUBTYPE_NOTEIT = 13;
    public static final int SUBTYPE_ORGANIZATION_CHART = 5;
    public static final int SUBTYPE_POWERPOINT_PRESENTATION = 10;
    public static final int SUBTYPE_POWERPOINT_SLIDE = 11;
    public static final int SUBTYPE_PROJECT = 12;
    public static final int SUBTYPE_SOUND = 8;
    public static final int SUBTYPE_WORDART = 7;
    public static final int SUBTYPE_WORD_TABLE = 2;
    public static final int TYPE_CONTROL = 2;
    public static final int TYPE_EMBEDDED = 0;
    public static final int TYPE_LINKED = 1;
    private byte[] _data;
    private byte[] _header;

    /* loaded from: classes12.dex */
    public enum OleType {
        EMBEDDED,
        LINKED,
        CONTROL
    }

    /* loaded from: classes12.dex */
    public enum Subtype {
        DEFAULT,
        CLIPART_GALLERY,
        WORD_TABLE,
        EXCEL,
        GRAPH,
        ORGANIZATION_CHART,
        EQUATION,
        WORDART,
        SOUND,
        IMAGE,
        POWERPOINT_PRESENTATION,
        POWERPOINT_SLIDE,
        PROJECT,
        NOTEIT,
        EXCEL_CHART,
        MEDIA_PLAYER
    }

    public ExOleObjAtom() {
        byte[] bArr = new byte[8];
        this._header = bArr;
        this._data = new byte[24];
        LittleEndian.putShort(bArr, 0, (short) 1);
        LittleEndian.putShort(this._header, 2, (short) getRecordType());
        LittleEndian.putInt(this._header, 4, this._data.length);
    }

    public int getDrawAspect() {
        return LittleEndian.getInt(this._data, 0);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("drawAspect", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.uxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExOleObjAtom.this.getDrawAspect());
            }
        }, DRAWASPECT_MASKS, DRAWASPECT_NAMES), "type", GenericRecordUtil.safeEnum(OleType.values(), new Supplier() { // from class: com.sunia.HTREnginev2.vxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExOleObjAtom.this.getType());
            }
        }), "objID", new Supplier() { // from class: com.sunia.HTREnginev2.wxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExOleObjAtom.this.getObjID());
            }
        }, GeoConstant.KEY_SUB_TYPE, GenericRecordUtil.safeEnum(Subtype.values(), new Supplier() { // from class: com.sunia.HTREnginev2.xxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExOleObjAtom.this.getSubType());
            }
        }), "objStgDataRef", new Supplier() { // from class: com.sunia.HTREnginev2.yxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExOleObjAtom.this.getObjStgDataRef());
            }
        }, "options", new Supplier() { // from class: com.sunia.HTREnginev2.zxf
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExOleObjAtom.this.getOptions());
            }
        });
    }

    public boolean getIsBlank() {
        return LittleEndian.getInt(this._data, 20) != 0;
    }

    public int getObjID() {
        return LittleEndian.getInt(this._data, 8);
    }

    public int getObjStgDataRef() {
        return LittleEndian.getInt(this._data, 16);
    }

    public int getOptions() {
        return LittleEndian.getInt(this._data, 20);
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.ExOleObjAtom.typeID;
    }

    public int getSubType() {
        return LittleEndian.getInt(this._data, 12);
    }

    public int getType() {
        return LittleEndian.getInt(this._data, 4);
    }

    public void setDrawAspect(int i) {
        LittleEndian.putInt(this._data, 0, i);
    }

    public void setObjID(int i) {
        LittleEndian.putInt(this._data, 8, i);
    }

    public void setObjStgDataRef(int i) {
        LittleEndian.putInt(this._data, 16, i);
    }

    public void setOptions(int i) {
        LittleEndian.putInt(this._data, 20, i);
    }

    public void setSubType(int i) {
        LittleEndian.putInt(this._data, 12, i);
    }

    public void setType(int i) {
        LittleEndian.putInt(this._data, 4, i);
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        outputStream.write(this._header);
        outputStream.write(this._data);
    }

    public ExOleObjAtom(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        byte[] safelyClone = IOUtils.safelyClone(bArr, i3, i2 - 8, 10485760);
        this._data = safelyClone;
        if (safelyClone.length >= 24) {
            return;
        }
        throw new IllegalArgumentException("The length of the data for a ExOleObjAtom must be at least 24 bytes, but was only " + this._data.length);
    }
}
