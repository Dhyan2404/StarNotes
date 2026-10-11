package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTLevelGroup extends XmlObject {
    public static final DocumentFactory<CTLevelGroup> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLevelGroup> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlevelgroupbf24type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGroupMembers addNewGroupMembers();

    String getCaption();

    CTGroupMembers getGroupMembers();

    int getId();

    String getName();

    String getUniqueName();

    String getUniqueParent();

    boolean isSetId();

    boolean isSetUniqueParent();

    void setCaption(String str);

    void setGroupMembers(CTGroupMembers cTGroupMembers);

    void setId(int i);

    void setName(String str);

    void setUniqueName(String str);

    void setUniqueParent(String str);

    void unsetId();

    void unsetUniqueParent();

    STXstring xgetCaption();

    XmlInt xgetId();

    STXstring xgetName();

    STXstring xgetUniqueName();

    STXstring xgetUniqueParent();

    void xsetCaption(STXstring sTXstring);

    void xsetId(XmlInt xmlInt);

    void xsetName(STXstring sTXstring);

    void xsetUniqueName(STXstring sTXstring);

    void xsetUniqueParent(STXstring sTXstring);
}
