package org.apache.poi.hwpf.model;

import com.google.android.material.motion.MotionUtils;
import java.nio.charset.Charset;
import java.util.Objects;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.StringUtil;

@Internal
/* loaded from: classes12.dex */
public final class PieceDescriptor implements Duplicatable {
    private final Charset charset;
    private final short descriptor;

    /* renamed from: fc */
    int f111444fc;
    private final PropertyModifier prm;
    private final boolean unicode;

    public PieceDescriptor(PieceDescriptor pieceDescriptor) {
        this.descriptor = pieceDescriptor.descriptor;
        this.f111444fc = pieceDescriptor.f111444fc;
        PropertyModifier propertyModifier = pieceDescriptor.prm;
        this.prm = propertyModifier == null ? null : propertyModifier.copy();
        this.unicode = pieceDescriptor.unicode;
        this.charset = pieceDescriptor.charset;
    }

    public static int getSizeInBytes() {
        return 8;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PieceDescriptor.class != obj.getClass()) {
            return false;
        }
        PieceDescriptor pieceDescriptor = (PieceDescriptor) obj;
        if (this.descriptor != pieceDescriptor.descriptor) {
            return false;
        }
        PropertyModifier propertyModifier = this.prm;
        if (propertyModifier == null) {
            if (pieceDescriptor.prm != null) {
                return false;
            }
        } else if (!propertyModifier.equals(pieceDescriptor.prm)) {
            return false;
        }
        return this.unicode == pieceDescriptor.unicode;
    }

    public Charset getCharset() {
        return this.charset;
    }

    public int getFilePosition() {
        return this.f111444fc;
    }

    public PropertyModifier getPrm() {
        return this.prm;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.descriptor), this.prm, Boolean.valueOf(this.unicode));
    }

    public boolean isUnicode() {
        return this.unicode;
    }

    public void setFilePosition(int i) {
        this.f111444fc = i;
    }

    public byte[] toByteArray() {
        int i = this.f111444fc;
        if (!this.unicode) {
            i = (i * 2) | 1073741824;
        }
        byte[] bArr = new byte[8];
        LittleEndian.putShort(bArr, 0, this.descriptor);
        LittleEndian.putInt(bArr, 2, i);
        LittleEndian.putShort(bArr, 6, this.prm.getValue());
        return bArr;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("PieceDescriptor (pos: ");
        sb.append(getFilePosition());
        sb.append("; ");
        sb.append(isUnicode() ? "unicode" : "non-unicode");
        sb.append("; prm: ");
        sb.append(getPrm());
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    @Override // org.apache.poi.common.Duplicatable
    public PieceDescriptor copy() {
        return new PieceDescriptor(this);
    }

    public PieceDescriptor(byte[] bArr, int i) {
        this(bArr, i, null);
    }

    public PieceDescriptor(byte[] bArr, int i, Charset charset) {
        this.descriptor = LittleEndian.getShort(bArr, i);
        int i2 = i + 2;
        this.f111444fc = LittleEndian.getInt(bArr, i2);
        this.prm = new PropertyModifier(LittleEndian.getShort(bArr, i2 + 4));
        if (charset == null) {
            int i3 = this.f111444fc;
            if ((1073741824 & i3) == 0) {
                this.unicode = true;
                this.charset = null;
                return;
            }
            this.unicode = false;
            int i4 = (-1073741825) & i3;
            this.f111444fc = i4;
            this.f111444fc = i4 / 2;
            this.charset = StringUtil.WIN_1252;
            return;
        }
        if (charset == StringUtil.UTF16LE) {
            this.unicode = true;
        } else {
            this.unicode = false;
        }
        this.charset = charset;
    }
}
