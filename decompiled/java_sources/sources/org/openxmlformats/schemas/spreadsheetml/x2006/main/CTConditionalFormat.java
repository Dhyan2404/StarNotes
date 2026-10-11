package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STScope;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STType;

/* loaded from: classes15.dex */
public interface CTConditionalFormat extends XmlObject {
    public static final DocumentFactory<CTConditionalFormat> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTConditionalFormat> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctconditionalformat6c7ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTPivotAreas addNewPivotAreas();

    CTExtensionList getExtLst();

    CTPivotAreas getPivotAreas();

    long getPriority();

    STScope.Enum getScope();

    STType.Enum getType();

    boolean isSetExtLst();

    boolean isSetScope();

    boolean isSetType();

    void setExtLst(CTExtensionList cTExtensionList);

    void setPivotAreas(CTPivotAreas cTPivotAreas);

    void setPriority(long j);

    void setScope(STScope.Enum r1);

    void setType(STType.Enum r1);

    void unsetExtLst();

    void unsetScope();

    void unsetType();

    XmlUnsignedInt xgetPriority();

    STScope xgetScope();

    STType xgetType();

    void xsetPriority(XmlUnsignedInt xmlUnsignedInt);

    void xsetScope(STScope sTScope);

    void xsetType(STType sTType);
}
