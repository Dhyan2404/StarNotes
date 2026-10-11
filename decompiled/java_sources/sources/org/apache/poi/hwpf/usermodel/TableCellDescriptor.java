package org.apache.poi.hwpf.usermodel;

import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.model.types.TCAbstractType;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class TableCellDescriptor extends TCAbstractType implements Duplicatable {
    public static final int SIZE = 20;

    public TableCellDescriptor() {
    }

    public static TableCellDescriptor convertBytesToTC(byte[] bArr, int i) {
        TableCellDescriptor tableCellDescriptor = new TableCellDescriptor();
        tableCellDescriptor.fillFields(bArr, i);
        return tableCellDescriptor;
    }

    public void fillFields(byte[] bArr, int i) {
        this.field_1_rgf = LittleEndian.getShort(bArr, i + 0);
        this.field_2_wWidth = LittleEndian.getShort(bArr, i + 2);
        setBrcTop(new BorderCode(bArr, i + 4));
        setBrcLeft(new BorderCode(bArr, i + 8));
        setBrcBottom(new BorderCode(bArr, i + 12));
        setBrcRight(new BorderCode(bArr, i + 16));
    }

    public void serialize(byte[] bArr, int i) {
        LittleEndian.putShort(bArr, i + 0, this.field_1_rgf);
        LittleEndian.putShort(bArr, i + 2, this.field_2_wWidth);
        getBrcTop().serialize(bArr, i + 4);
        getBrcLeft().serialize(bArr, i + 8);
        getBrcBottom().serialize(bArr, i + 12);
        getBrcRight().serialize(bArr, i + 16);
    }

    public TableCellDescriptor(TableCellDescriptor tableCellDescriptor) {
        super(tableCellDescriptor);
    }

    @Override // org.apache.poi.common.Duplicatable
    public TableCellDescriptor copy() {
        return new TableCellDescriptor(this);
    }
}
