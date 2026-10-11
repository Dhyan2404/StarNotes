package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STFormatAction;

/* loaded from: classes15.dex */
public interface CTFormat extends XmlObject {
    public static final DocumentFactory<CTFormat> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFormat> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctformat1940type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTPivotArea addNewPivotArea();

    STFormatAction.Enum getAction();

    long getDxfId();

    CTExtensionList getExtLst();

    CTPivotArea getPivotArea();

    boolean isSetAction();

    boolean isSetDxfId();

    boolean isSetExtLst();

    void setAction(STFormatAction.Enum r1);

    void setDxfId(long j);

    void setExtLst(CTExtensionList cTExtensionList);

    void setPivotArea(CTPivotArea cTPivotArea);

    void unsetAction();

    void unsetDxfId();

    void unsetExtLst();

    STFormatAction xgetAction();

    STDxfId xgetDxfId();

    void xsetAction(STFormatAction sTFormatAction);

    void xsetDxfId(STDxfId sTDxfId);
}
