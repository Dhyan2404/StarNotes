package org.apache.poi.ss.util;

import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.util.LittleEndianByteArrayOutputStream;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes13.dex */
public class CellRangeAddressList implements GenericRecord {
    protected final List<CellRangeAddress> _list = new ArrayList();

    public CellRangeAddressList() {
    }

    public static int getEncodedSize(int i) {
        return CellRangeAddress.getEncodedSize(i) + 2;
    }

    public void addCellRangeAddress(int i, int i2, int i3, int i4) {
        addCellRangeAddress(new CellRangeAddress(i, i3, i2, i4));
    }

    public CellRangeAddressList copy() {
        CellRangeAddressList cellRangeAddressList = new CellRangeAddressList();
        Iterator<CellRangeAddress> it2 = this._list.iterator();
        while (it2.hasNext()) {
            cellRangeAddressList.addCellRangeAddress(it2.next().copy());
        }
        return cellRangeAddressList;
    }

    public int countRanges() {
        return this._list.size();
    }

    public CellRangeAddress getCellRangeAddress(int i) {
        return this._list.get(i);
    }

    public CellRangeAddress[] getCellRangeAddresses() {
        CellRangeAddress[] cellRangeAddressArr = new CellRangeAddress[this._list.size()];
        this._list.toArray(cellRangeAddressArr);
        return cellRangeAddressArr;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public List<CellRangeAddress> getGenericChildren() {
        return this._list;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return null;
    }

    public int getSize() {
        return getEncodedSize(this._list.size());
    }

    public CellRangeAddress remove(int i) {
        if (this._list.isEmpty()) {
            throw new IllegalStateException("List is empty");
        }
        if (i >= 0 && i < this._list.size()) {
            return this._list.remove(i);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Range index (");
        sb.append(i);
        sb.append(") is outside allowable range (0..");
        sb.append(this._list.size() - 1);
        sb.append(MotionUtils.f31762d);
        throw new IllegalStateException(sb.toString());
    }

    public int serialize(int i, byte[] bArr) {
        int size = getSize();
        try {
            LittleEndianByteArrayOutputStream littleEndianByteArrayOutputStream = new LittleEndianByteArrayOutputStream(bArr, i, size);
            try {
                serialize(littleEndianByteArrayOutputStream);
                littleEndianByteArrayOutputStream.close();
                return size;
            } finally {
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public CellRangeAddressList(int i, int i2, int i3, int i4) {
        addCellRangeAddress(i, i3, i2, i4);
    }

    public void addCellRangeAddress(CellRangeAddress cellRangeAddress) {
        this._list.add(cellRangeAddress);
    }

    public CellRangeAddressList(RecordInputStream recordInputStream) {
        int readUShort = recordInputStream.readUShort();
        for (int i = 0; i < readUShort; i++) {
            this._list.add(new CellRangeAddress(recordInputStream));
        }
    }

    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(this._list.size());
        Iterator<CellRangeAddress> it2 = this._list.iterator();
        while (it2.hasNext()) {
            it2.next().serialize(littleEndianOutput);
        }
    }
}
