package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTCalculatedItem extends XmlObject {
    public static final DocumentFactory<CTCalculatedItem> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCalculatedItem> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcalculateditem29batype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTPivotArea addNewPivotArea();

    CTExtensionList getExtLst();

    long getField();

    String getFormula();

    CTPivotArea getPivotArea();

    boolean isSetExtLst();

    boolean isSetField();

    boolean isSetFormula();

    void setExtLst(CTExtensionList cTExtensionList);

    void setField(long j);

    void setFormula(String str);

    void setPivotArea(CTPivotArea cTPivotArea);

    void unsetExtLst();

    void unsetField();

    void unsetFormula();

    XmlUnsignedInt xgetField();

    STXstring xgetFormula();

    void xsetField(XmlUnsignedInt xmlUnsignedInt);

    void xsetFormula(STXstring sTXstring);
}
