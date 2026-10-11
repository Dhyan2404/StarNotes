package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType;

/* loaded from: classes15.dex */
public interface CTExternalCell extends XmlObject {
    public static final DocumentFactory<CTExternalCell> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTExternalCell> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctexternalcell5dd6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getR();

    STCellType.Enum getT();

    String getV();

    long getVm();

    boolean isSetR();

    boolean isSetT();

    boolean isSetV();

    boolean isSetVm();

    void setR(String str);

    void setT(STCellType.Enum r1);

    void setV(String str);

    void setVm(long j);

    void unsetR();

    void unsetT();

    void unsetV();

    void unsetVm();

    STCellRef xgetR();

    STCellType xgetT();

    STXstring xgetV();

    XmlUnsignedInt xgetVm();

    void xsetR(STCellRef sTCellRef);

    void xsetT(STCellType sTCellType);

    void xsetV(STXstring sTXstring);

    void xsetVm(XmlUnsignedInt xmlUnsignedInt);
}
