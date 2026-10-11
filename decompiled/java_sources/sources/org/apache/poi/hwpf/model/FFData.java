package org.apache.poi.hwpf.model;

import org.apache.poi.hwpf.model.types.FFDataBaseAbstractType;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public class FFData {
    private FFDataBase _base;
    private Sttb _hsttbDropList;
    private Integer _wDef;
    private Xstz _xstzEntryMcr;
    private Xstz _xstzExitMcr;
    private Xstz _xstzHelpText;
    private Xstz _xstzName;
    private Xstz _xstzStatText;
    private Xstz _xstzTextDef;
    private Xstz _xstzTextFormat;

    public FFData(byte[] bArr, int i) {
        fillFields(bArr, i);
    }

    public void fillFields(byte[] bArr, int i) {
        this._base = new FFDataBase(bArr, i);
        int size = i + FFDataBaseAbstractType.getSize();
        Xstz xstz = new Xstz(bArr, size);
        this._xstzName = xstz;
        int size2 = size + xstz.getSize();
        if (this._base.getIType() == 0) {
            Xstz xstz2 = new Xstz(bArr, size2);
            this._xstzTextDef = xstz2;
            size2 += xstz2.getSize();
        } else {
            this._xstzTextDef = null;
        }
        if (this._base.getIType() == 1 || this._base.getIType() == 2) {
            this._wDef = Integer.valueOf(LittleEndian.getUShort(bArr, size2));
            size2 += 2;
        } else {
            this._wDef = null;
        }
        Xstz xstz3 = new Xstz(bArr, size2);
        this._xstzTextFormat = xstz3;
        int size3 = size2 + xstz3.getSize();
        Xstz xstz4 = new Xstz(bArr, size3);
        this._xstzHelpText = xstz4;
        int size4 = size3 + xstz4.getSize();
        Xstz xstz5 = new Xstz(bArr, size4);
        this._xstzStatText = xstz5;
        int size5 = size4 + xstz5.getSize();
        Xstz xstz6 = new Xstz(bArr, size5);
        this._xstzEntryMcr = xstz6;
        int size6 = size5 + xstz6.getSize();
        Xstz xstz7 = new Xstz(bArr, size6);
        this._xstzExitMcr = xstz7;
        int size7 = size6 + xstz7.getSize();
        if (this._base.getIType() == 2) {
            this._hsttbDropList = new Sttb(bArr, size7);
        }
    }

    public int getDefaultDropDownItemIndex() {
        return this._wDef.intValue();
    }

    public String[] getDropList() {
        return this._hsttbDropList.getData();
    }

    public int getSize() {
        int size = FFDataBaseAbstractType.getSize() + this._xstzName.getSize();
        if (this._base.getIType() == 0) {
            size += this._xstzTextDef.getSize();
        }
        if (this._base.getIType() == 1 || this._base.getIType() == 2) {
            size += 2;
        }
        int size2 = size + this._xstzTextFormat.getSize() + this._xstzHelpText.getSize() + this._xstzStatText.getSize() + this._xstzEntryMcr.getSize() + this._xstzExitMcr.getSize();
        return this._base.getIType() == 2 ? size2 + this._hsttbDropList.getSize() : size2;
    }

    public String getTextDef() {
        return this._xstzTextDef.getAsJavaString();
    }

    public byte[] serialize() {
        byte[] bArr = new byte[getSize()];
        this._base.serialize(bArr, 0);
        int size = FFDataBaseAbstractType.getSize() + 0;
        int serialize = size + this._xstzName.serialize(bArr, size);
        if (this._base.getIType() == 0) {
            serialize += this._xstzTextDef.serialize(bArr, serialize);
        }
        if (this._base.getIType() == 1 || this._base.getIType() == 2) {
            LittleEndian.putUShort(bArr, serialize, this._wDef.intValue());
            serialize += 2;
        }
        int serialize2 = serialize + this._xstzTextFormat.serialize(bArr, serialize);
        int serialize3 = serialize2 + this._xstzHelpText.serialize(bArr, serialize2);
        int serialize4 = serialize3 + this._xstzStatText.serialize(bArr, serialize3);
        int serialize5 = serialize4 + this._xstzEntryMcr.serialize(bArr, serialize4);
        int serialize6 = serialize5 + this._xstzExitMcr.serialize(bArr, serialize5);
        if (this._base.getIType() == 2) {
            this._hsttbDropList.serialize(bArr, serialize6);
        }
        return bArr;
    }
}
