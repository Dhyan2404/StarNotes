package org.apache.poi.hwpf.model;

import com.google.android.material.motion.MotionUtils;
import java.nio.charset.Charset;
import org.apache.commons.text.AlphabetConverter;
import org.apache.poi.hwpf.util.DoubleByteUtil;
import org.apache.poi.util.Internal;
import org.apache.poi.util.StringUtil;

@Internal
/* loaded from: classes12.dex */
public class TextPiece extends PropertyNode<TextPiece> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final PieceDescriptor _pd;
    private final boolean _usesUnicode;

    public TextPiece(TextPiece textPiece) {
        super(textPiece);
        this._usesUnicode = textPiece._usesUnicode;
        PieceDescriptor pieceDescriptor = textPiece._pd;
        this._pd = pieceDescriptor == null ? null : pieceDescriptor.copy();
    }

    private static StringBuilder buildInitSB(byte[] bArr, PieceDescriptor pieceDescriptor) {
        if (DoubleByteUtil.BIG5.equals(pieceDescriptor.getCharset())) {
            return new StringBuilder(DoubleByteUtil.cp950ToString(bArr, 0, bArr.length));
        }
        return new StringBuilder(new String(bArr, 0, bArr.length, pieceDescriptor.isUnicode() ? StringUtil.UTF16LE : pieceDescriptor.getCharset()));
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode
    @Deprecated
    public void adjustForDelete(int i, int i2) {
        int start = getStart();
        int end = getEnd();
        int i3 = i + i2;
        if (i <= end && i3 >= start) {
            ((StringBuilder) this._buf).delete(Math.max(start, i) - start, Math.min(end, i3) - start);
        }
        super.adjustForDelete(i, i2);
    }

    public int bytesLength() {
        return (getEnd() - getStart()) * (this._usesUnicode ? 2 : 1);
    }

    @Deprecated
    public int characterLength() {
        return getEnd() - getStart();
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode
    public boolean equals(Object obj) {
        if (!(obj instanceof TextPiece)) {
            return false;
        }
        TextPiece textPiece = (TextPiece) obj;
        return limitsAreEqual(obj) && textPiece._usesUnicode == this._usesUnicode && textPiece._buf.toString().equals(this._buf.toString()) && textPiece._pd.equals(this._pd);
    }

    public int getCP() {
        return getStart();
    }

    public PieceDescriptor getPieceDescriptor() {
        return this._pd;
    }

    public byte[] getRawBytes() {
        return this._buf.toString().getBytes(Charset.forName(this._usesUnicode ? "UTF-16LE" : "Cp1252"));
    }

    @Deprecated
    public StringBuffer getStringBuffer() {
        return new StringBuffer(getStringBuilder());
    }

    public StringBuilder getStringBuilder() {
        return (StringBuilder) this._buf;
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode
    public int hashCode() {
        return 42;
    }

    public boolean isUnicode() {
        return this._usesUnicode;
    }

    @Deprecated
    public String substring(int i, int i2) {
        StringBuilder sb = (StringBuilder) this._buf;
        if (i < 0) {
            throw new StringIndexOutOfBoundsException("Can't request a substring before 0 - asked for " + i);
        }
        if (i2 > sb.length()) {
            throw new StringIndexOutOfBoundsException("Index " + i2 + " out of range 0 -> " + sb.length());
        }
        if (i2 >= i) {
            return sb.substring(i, i2);
        }
        throw new StringIndexOutOfBoundsException("Asked for text from " + i + " to " + i2 + ", which has an end before the start!");
    }

    public String toString() {
        return "TextPiece from " + getStart() + " to " + getEnd() + " (" + getPieceDescriptor() + MotionUtils.f31762d;
    }

    @Override // org.apache.poi.hwpf.model.PropertyNode, org.apache.poi.common.Duplicatable
    public TextPiece copy() {
        return new TextPiece(this);
    }

    public TextPiece(int i, int i2, byte[] bArr, PieceDescriptor pieceDescriptor, int i3) {
        this(i, i2, bArr, pieceDescriptor);
    }

    public TextPiece(int i, int i2, byte[] bArr, PieceDescriptor pieceDescriptor) {
        super(i, i2, buildInitSB(bArr, pieceDescriptor));
        this._usesUnicode = pieceDescriptor.isUnicode();
        this._pd = pieceDescriptor;
        int length = ((CharSequence) this._buf).length();
        if (i2 - i == length) {
            if (i2 >= i) {
                return;
            }
            throw new IllegalStateException("Told we're of negative size! start=" + i + " end=" + i2);
        }
        throw new IllegalStateException("Told we're for characters " + i + AlphabetConverter.f109940d + i2 + ", but actually covers " + length + " characters!");
    }
}
