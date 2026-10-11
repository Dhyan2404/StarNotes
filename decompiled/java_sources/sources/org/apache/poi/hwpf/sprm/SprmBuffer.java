package org.apache.poi.hwpf.sprm;

import java.util.Arrays;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

@Internal
/* loaded from: classes12.dex */
public final class SprmBuffer implements Duplicatable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    byte[] _buf;
    boolean _istd;
    int _offset;
    private final int _sprmsStartOffset;

    public SprmBuffer(SprmBuffer sprmBuffer) {
        byte[] bArr = sprmBuffer._buf;
        this._buf = bArr == null ? null : (byte[]) bArr.clone();
        this._istd = sprmBuffer._istd;
        this._offset = sprmBuffer._offset;
        this._sprmsStartOffset = sprmBuffer._sprmsStartOffset;
    }

    private void ensureCapacity(int i) {
        int i2 = this._offset;
        if (i2 + i >= this._buf.length) {
            IOUtils.safelyAllocateCheck(i2 + i, SprmUtils.MAX_RECORD_LENGTH);
            this._buf = Arrays.copyOf(this._buf, this._offset + i);
        }
    }

    private int findSprmOffset(short s) {
        SprmOperation findSprm = findSprm(s);
        if (findSprm == null) {
            return -1;
        }
        return findSprm.getGrpprlOffset();
    }

    public void addSprm(short s, byte b) {
        ensureCapacity(3);
        LittleEndian.putShort(this._buf, this._offset, s);
        int i = this._offset + 2;
        byte[] bArr = this._buf;
        this._offset = i + 1;
        bArr[i] = b;
    }

    public void append(byte[] bArr) {
        append(bArr, 0);
    }

    public boolean equals(Object obj) {
        if (obj instanceof SprmBuffer) {
            return Arrays.equals(this._buf, ((SprmBuffer) obj)._buf);
        }
        return false;
    }

    public SprmOperation findSprm(short s) {
        int operationFromOpcode = SprmOperation.getOperationFromOpcode(s);
        int typeFromOpcode = SprmOperation.getTypeFromOpcode(s);
        SprmIterator sprmIterator = new SprmIterator(this._buf, 2);
        while (sprmIterator.hasNext()) {
            SprmOperation next = sprmIterator.next();
            if (next.getOperation() == operationFromOpcode && next.getType() == typeFromOpcode) {
                return next;
            }
        }
        return null;
    }

    public int hashCode() {
        return 42;
    }

    public SprmIterator iterator() {
        return new SprmIterator(this._buf, this._sprmsStartOffset);
    }

    public byte[] toByteArray() {
        return this._buf;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Sprms (");
        sb.append(this._buf.length);
        sb.append(" byte(s)): ");
        SprmIterator it2 = iterator();
        while (it2.hasNext()) {
            try {
                sb.append(it2.next());
            } catch (Exception unused) {
                sb.append("error");
            }
            sb.append("; ");
        }
        return sb.toString();
    }

    public void updateSprm(short s, byte b) {
        int findSprmOffset = findSprmOffset(s);
        if (findSprmOffset != -1) {
            this._buf[findSprmOffset] = b;
        } else {
            addSprm(s, b);
        }
    }

    public void append(byte[] bArr, int i) {
        ensureCapacity(bArr.length - i);
        System.arraycopy(bArr, i, this._buf, this._offset, bArr.length - i);
        this._offset += bArr.length - i;
    }

    @Override // org.apache.poi.common.Duplicatable
    public SprmBuffer copy() {
        return new SprmBuffer(this);
    }

    public void updateSprm(short s, boolean z) {
        int findSprmOffset = findSprmOffset(s);
        if (findSprmOffset != -1) {
            this._buf[findSprmOffset] = z ? (byte) 1 : (byte) 0;
        } else {
            addSprm(s, z ? 1 : 0);
        }
    }

    public void addSprm(short s, byte[] bArr) {
        ensureCapacity(bArr.length + 3);
        LittleEndian.putShort(this._buf, this._offset, s);
        int i = this._offset + 2;
        byte[] bArr2 = this._buf;
        int i2 = i + 1;
        this._offset = i2;
        bArr2[i] = (byte) bArr.length;
        System.arraycopy(bArr, 0, bArr2, i2, bArr.length);
    }

    public SprmBuffer(byte[] bArr, boolean z, int i) {
        this._offset = bArr.length;
        this._buf = bArr;
        this._istd = z;
        this._sprmsStartOffset = i;
    }

    public void updateSprm(short s, int i) {
        int findSprmOffset = findSprmOffset(s);
        if (findSprmOffset != -1) {
            LittleEndian.putInt(this._buf, findSprmOffset, i);
        } else {
            addSprm(s, i);
        }
    }

    public void updateSprm(short s, short s2) {
        int findSprmOffset = findSprmOffset(s);
        if (findSprmOffset != -1) {
            LittleEndian.putShort(this._buf, findSprmOffset, s2);
        } else {
            addSprm(s, s2);
        }
    }

    public SprmBuffer(byte[] bArr, int i) {
        this(bArr, false, i);
    }

    public void addSprm(short s, int i) {
        ensureCapacity(6);
        LittleEndian.putShort(this._buf, this._offset, s);
        int i2 = this._offset + 2;
        this._offset = i2;
        LittleEndian.putInt(this._buf, i2, i);
        this._offset += 4;
    }

    public SprmBuffer(int i) {
        this._buf = IOUtils.safelyAllocate(i + 4, SprmUtils.MAX_RECORD_LENGTH);
        this._offset = i;
        this._sprmsStartOffset = i;
    }

    public void addSprm(short s, short s2) {
        ensureCapacity(4);
        LittleEndian.putShort(this._buf, this._offset, s);
        int i = this._offset + 2;
        this._offset = i;
        LittleEndian.putShort(this._buf, i, s2);
        this._offset += 2;
    }
}
