package org.apache.poi.hwpf.usermodel;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class DropCapSpecifier implements Duplicatable {
    private static final BitField _lines = BitFieldFactory.getInstance(248);
    private static final BitField _type = BitFieldFactory.getInstance(7);
    private short _fdct;

    public DropCapSpecifier() {
        this._fdct = (short) 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && DropCapSpecifier.class == obj.getClass() && this._fdct == ((DropCapSpecifier) obj)._fdct;
    }

    public byte getCountOfLinesToDrop() {
        return (byte) _lines.getValue(this._fdct);
    }

    public byte getDropCapType() {
        return (byte) _type.getValue(this._fdct);
    }

    public int hashCode() {
        return this._fdct;
    }

    public boolean isEmpty() {
        return this._fdct == 0;
    }

    public void setCountOfLinesToDrop(byte b) {
        this._fdct = (short) _lines.setValue(this._fdct, b);
    }

    public void setDropCapType(byte b) {
        this._fdct = (short) _type.setValue(this._fdct, b);
    }

    public short toShort() {
        return this._fdct;
    }

    public String toString() {
        if (isEmpty()) {
            return "[DCS] EMPTY";
        }
        return "[DCS] (type: " + ((int) getDropCapType()) + "; count: " + ((int) getCountOfLinesToDrop()) + MotionUtils.f31762d;
    }

    @Override // org.apache.poi.common.Duplicatable
    public DropCapSpecifier copy() {
        return new DropCapSpecifier(this);
    }

    public DropCapSpecifier(DropCapSpecifier dropCapSpecifier) {
        this._fdct = dropCapSpecifier._fdct;
    }

    public DropCapSpecifier(byte[] bArr, int i) {
        this(LittleEndian.getShort(bArr, i));
    }

    public DropCapSpecifier(short s) {
        this._fdct = s;
    }
}
