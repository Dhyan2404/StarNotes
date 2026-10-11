package org.apache.poi.hwpf.usermodel;

import org.apache.poi.common.Duplicatable;
import org.apache.poi.hwpf.model.types.TAPAbstractType;

/* loaded from: classes12.dex */
public final class TableProperties extends TAPAbstractType implements Duplicatable {
    public TableProperties() {
        setTlp(new TableAutoformatLookSpecifier());
        setShdTable(new ShadingDescriptor());
        setBrcBottom(new BorderCode());
        setBrcHorizontal(new BorderCode());
        setBrcLeft(new BorderCode());
        setBrcRight(new BorderCode());
        setBrcTop(new BorderCode());
        setBrcVertical(new BorderCode());
        setRgbrcInsideDefault_0(new BorderCode());
        setRgbrcInsideDefault_1(new BorderCode());
        setRgdxaCenter(new short[0]);
        setRgdxaCenterPrint(new short[0]);
        setRgshd(new ShadingDescriptor[0]);
        setRgtc(new TableCellDescriptor[0]);
    }

    @Override // org.apache.poi.common.Duplicatable
    public TableProperties copy() {
        return new TableProperties(this);
    }

    public TableProperties(TableProperties tableProperties) {
        super(tableProperties);
    }

    public TableProperties(short s) {
        setItcMac(s);
        setRgshd(new ShadingDescriptor[s]);
        for (int i = 0; i < s; i++) {
            getRgshd()[i] = new ShadingDescriptor();
        }
        TableCellDescriptor[] tableCellDescriptorArr = new TableCellDescriptor[s];
        for (int i2 = 0; i2 < s; i2++) {
            tableCellDescriptorArr[i2] = new TableCellDescriptor();
        }
        setRgtc(tableCellDescriptorArr);
        setRgdxaCenter(new short[s]);
        setRgdxaCenterPrint(new short[s]);
    }
}
