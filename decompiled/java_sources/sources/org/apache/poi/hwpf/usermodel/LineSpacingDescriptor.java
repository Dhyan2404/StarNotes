package org.apache.poi.hwpf.usermodel;

import com.google.android.material.motion.MotionUtils;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class LineSpacingDescriptor implements Duplicatable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    short _dyaLine;
    short _fMultiLinespace;

    public LineSpacingDescriptor() {
        this._dyaLine = (short) 240;
        this._fMultiLinespace = (short) 1;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LineSpacingDescriptor)) {
            return false;
        }
        LineSpacingDescriptor lineSpacingDescriptor = (LineSpacingDescriptor) obj;
        return this._dyaLine == lineSpacingDescriptor._dyaLine && this._fMultiLinespace == lineSpacingDescriptor._fMultiLinespace;
    }

    public int hashCode() {
        return 42;
    }

    public boolean isEmpty() {
        return this._dyaLine == 0 && this._fMultiLinespace == 0;
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i, this._dyaLine);
        LittleEndian.putShort(bArr, i + 2, this._fMultiLinespace);
    }

    public void setDyaLine(short s) {
        this._dyaLine = s;
    }

    public void setMultiLinespace(short s) {
        this._fMultiLinespace = s;
    }

    public int toInt() {
        byte[] bArr = new byte[4];
        serialize(bArr, 0);
        return LittleEndian.getInt(bArr);
    }

    public String toString() {
        if (isEmpty()) {
            return "[LSPD] EMPTY";
        }
        return "[LSPD] (dyaLine: " + ((int) this._dyaLine) + "; fMultLinespace: " + ((int) this._fMultiLinespace) + MotionUtils.f31762d;
    }

    @Override // org.apache.poi.common.Duplicatable
    public LineSpacingDescriptor copy() {
        return new LineSpacingDescriptor(this);
    }

    public LineSpacingDescriptor(LineSpacingDescriptor lineSpacingDescriptor) {
        this._dyaLine = lineSpacingDescriptor._dyaLine;
        this._fMultiLinespace = lineSpacingDescriptor._fMultiLinespace;
    }

    public LineSpacingDescriptor(byte[] bArr, int i) {
        this._dyaLine = LittleEndian.getShort(bArr, i);
        this._fMultiLinespace = LittleEndian.getShort(bArr, i + 2);
    }
}
