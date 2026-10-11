package org.apache.poi.hwpf.model;

import com.google.android.material.motion.MotionUtils;
import java.util.ArrayList;
import java.util.List;
import org.apache.poi.util.IOUtils;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class PlexOfCps {
    private static final int MAX_NUMBER_OF_PROPERTIES = 100000;
    private static final int MAX_RECORD_LENGTH = 10485760;
    private final int _cbStruct;
    private int _iMac;
    private final List<GenericPropertyNode> _props;

    public PlexOfCps(int i) {
        this._props = new ArrayList();
        this._cbStruct = i;
    }

    private int getIntOffset(int i) {
        return i * 4;
    }

    private int getStructOffset(int i) {
        return ((this._iMac + 1) * 4) + (this._cbStruct * i);
    }

    public void addProperty(GenericPropertyNode genericPropertyNode) {
        this._props.add(genericPropertyNode);
        this._iMac++;
    }

    @Internal
    public void adjust(int i, int i2) {
        for (GenericPropertyNode genericPropertyNode : this._props) {
            if (genericPropertyNode.getStart() > i) {
                genericPropertyNode.setStart(Math.max(genericPropertyNode.getStart() + i2, i));
            }
            if (genericPropertyNode.getEnd() >= i) {
                genericPropertyNode.setEnd(Math.max(genericPropertyNode.getEnd() + i2, i));
            }
        }
    }

    public GenericPropertyNode getProperty(int i) {
        return this._props.get(i);
    }

    public int length() {
        return this._iMac;
    }

    public void remove(int i) {
        this._props.remove(i);
        this._iMac--;
    }

    public byte[] toByteArray() {
        int size = this._props.size();
        int i = (size + 1) * 4;
        byte[] safelyAllocate = IOUtils.safelyAllocate((this._cbStruct * size) + i, 10485760);
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            GenericPropertyNode genericPropertyNode = this._props.get(i2);
            int end = genericPropertyNode.getEnd();
            LittleEndian.putInt(safelyAllocate, i2 * 4, genericPropertyNode.getStart());
            byte[] bytes = genericPropertyNode.getBytes();
            int i4 = this._cbStruct;
            System.arraycopy(bytes, 0, safelyAllocate, (i2 * i4) + i, i4);
            i2++;
            i3 = end;
        }
        LittleEndian.putInt(safelyAllocate, size * 4, i3);
        return safelyAllocate;
    }

    public GenericPropertyNode[] toPropertiesArray() {
        List<GenericPropertyNode> list = this._props;
        return (list == null || list.isEmpty()) ? new GenericPropertyNode[0] : (GenericPropertyNode[]) this._props.toArray(new GenericPropertyNode[0]);
    }

    public String toString() {
        return "PLCF (cbStruct: " + this._cbStruct + "; iMac: " + this._iMac + MotionUtils.f31762d;
    }

    private GenericPropertyNode getProperty(int i, byte[] bArr, int i2) {
        return new GenericPropertyNode(LittleEndian.getInt(bArr, getIntOffset(i) + i2), LittleEndian.getInt(bArr, getIntOffset(i + 1) + i2), IOUtils.safelyClone(bArr, i2 + getStructOffset(i), this._cbStruct, 10485760));
    }

    public PlexOfCps(byte[] bArr, int i, int i2, int i3) {
        int i4 = (i2 - 4) / (i3 + 4);
        this._iMac = i4;
        IOUtils.safelyAllocateCheck(i4, 100000);
        this._cbStruct = i3;
        this._props = new ArrayList(this._iMac);
        for (int i5 = 0; i5 < this._iMac; i5++) {
            this._props.add(getProperty(i5, bArr, i));
        }
    }
}
