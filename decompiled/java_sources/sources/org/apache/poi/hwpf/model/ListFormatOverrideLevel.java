package org.apache.poi.hwpf.model;

import java.util.Objects;
import org.apache.poi.hwpf.model.types.LFOLVLBaseAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public final class ListFormatOverrideLevel {
    private LFOLVLBase _base;
    private ListLevel _lvl;

    public ListFormatOverrideLevel(byte[] bArr, int i) {
        this._base = new LFOLVLBase(bArr, i);
        int size = i + LFOLVLBaseAbstractType.getSize();
        if (this._base.isFFormatting()) {
            this._lvl = new ListLevel(bArr, size);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ListFormatOverrideLevel)) {
            return false;
        }
        ListFormatOverrideLevel listFormatOverrideLevel = (ListFormatOverrideLevel) obj;
        ListLevel listLevel = this._lvl;
        return (listLevel != null ? listLevel.equals(listFormatOverrideLevel._lvl) : listFormatOverrideLevel._lvl == null) && listFormatOverrideLevel._base.equals(this._base);
    }

    public int getIStartAt() {
        return this._base.getIStartAt();
    }

    public ListLevel getLevel() {
        return this._lvl;
    }

    public int getLevelNum() {
        return this._base.getILvl();
    }

    public int getSizeInBytes() {
        if (this._lvl == null) {
            return LFOLVLBaseAbstractType.getSize();
        }
        return this._lvl.getSizeInBytes() + LFOLVLBaseAbstractType.getSize();
    }

    public int hashCode() {
        return Objects.hash(this._base, this._lvl);
    }

    public boolean isFormatting() {
        return this._base.isFFormatting();
    }

    public boolean isStartAt() {
        return this._base.isFStartAt();
    }

    public byte[] toByteArray() {
        byte[] bArr = new byte[getSizeInBytes()];
        this._base.serialize(bArr, 0);
        int size = LFOLVLBaseAbstractType.getSize() + 0;
        ListLevel listLevel = this._lvl;
        if (listLevel != null) {
            byte[] byteArray = listLevel.toByteArray();
            System.arraycopy(byteArray, 0, bArr, size, byteArray.length);
        }
        return bArr;
    }
}
