package org.apache.poi.hwpf.model;

import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;
import org.apache.poi.util.Internal;
import org.apache.poi.util.NotImplemented;

@Internal
/* loaded from: classes12.dex */
public class OldTextPiece extends TextPiece {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final byte[] rawBytes;

    public OldTextPiece(OldTextPiece oldTextPiece) {
        super(oldTextPiece);
        byte[] bArr = oldTextPiece.rawBytes;
        this.rawBytes = bArr == null ? null : (byte[]) bArr.clone();
    }

    @Override // org.apache.poi.hwpf.model.TextPiece, org.apache.poi.hwpf.model.PropertyNode
    @NotImplemented
    @Deprecated
    public void adjustForDelete(int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.poi.hwpf.model.TextPiece
    public int bytesLength() {
        return this.rawBytes.length;
    }

    @Override // org.apache.poi.hwpf.model.TextPiece, org.apache.poi.hwpf.model.PropertyNode
    public boolean equals(Object obj) {
        return (obj instanceof OldTextPiece) && Arrays.equals(this.rawBytes, ((OldTextPiece) obj).rawBytes);
    }

    @Override // org.apache.poi.hwpf.model.TextPiece
    public byte[] getRawBytes() {
        return (byte[]) this.rawBytes.clone();
    }

    @Override // org.apache.poi.hwpf.model.TextPiece
    public StringBuilder getStringBuilder() {
        return (StringBuilder) this._buf;
    }

    @Override // org.apache.poi.hwpf.model.TextPiece, org.apache.poi.hwpf.model.PropertyNode
    public int hashCode() {
        return 42;
    }

    @Override // org.apache.poi.hwpf.model.TextPiece
    @NotImplemented
    public boolean isUnicode() {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.poi.hwpf.model.TextPiece
    @NotImplemented
    @Deprecated
    public String substring(int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.poi.hwpf.model.TextPiece
    public String toString() {
        return "OldTextPiece from " + getStart() + " to " + getEnd() + " (" + getPieceDescriptor() + MotionUtils.f31762d;
    }

    public OldTextPiece(int i, int i2, byte[] bArr, PieceDescriptor pieceDescriptor) {
        super(i, i2, bArr, pieceDescriptor);
        this.rawBytes = bArr;
    }

    @Override // org.apache.poi.hwpf.model.TextPiece, org.apache.poi.hwpf.model.PropertyNode, org.apache.poi.common.Duplicatable
    public OldTextPiece copy() {
        return new OldTextPiece(this);
    }
}
