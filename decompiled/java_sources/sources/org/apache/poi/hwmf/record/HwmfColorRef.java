package org.apache.poi.hwmf.record;

import java.awt.Color;
import java.io.IOException;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hwmf.record.HwmfColorRef;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public class HwmfColorRef implements Duplicatable, GenericRecord {
    private Color colorRef;

    public HwmfColorRef() {
        this.colorRef = Color.BLACK;
    }

    public Color getColor() {
        return this.colorRef;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("color", new Supplier() { // from class: com.sunia.HTREnginev2.z1i
            @Override // java.util.function.Supplier
            public final Object get() {
                return HwmfColorRef.this.getColor();
            }
        });
    }

    public int init(LittleEndianInputStream littleEndianInputStream) throws IOException {
        int readUByte = littleEndianInputStream.readUByte();
        int readUByte2 = littleEndianInputStream.readUByte();
        int readUByte3 = littleEndianInputStream.readUByte();
        littleEndianInputStream.readUByte();
        this.colorRef = new Color(readUByte, readUByte2, readUByte3);
        return 4;
    }

    public void setColor(Color color) {
        this.colorRef = color;
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    @Override // org.apache.poi.common.Duplicatable
    public HwmfColorRef copy() {
        return new HwmfColorRef(this);
    }

    public HwmfColorRef(HwmfColorRef hwmfColorRef) {
        this.colorRef = Color.BLACK;
        this.colorRef = hwmfColorRef.colorRef;
    }

    public HwmfColorRef(Color color) {
        Color color2 = Color.BLACK;
        this.colorRef = color;
    }
}
