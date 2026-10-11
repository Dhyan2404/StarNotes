package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STRevisionAction;

/* loaded from: classes15.dex */
public interface CTRevisionCustomView extends XmlObject {
    public static final DocumentFactory<CTRevisionCustomView> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionCustomView> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisioncustomview9d3atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STRevisionAction.Enum getAction();

    String getGuid();

    void setAction(STRevisionAction.Enum r1);

    void setGuid(String str);

    STRevisionAction xgetAction();

    STGuid xgetGuid();

    void xsetAction(STRevisionAction sTRevisionAction);

    void xsetGuid(STGuid sTGuid);
}
