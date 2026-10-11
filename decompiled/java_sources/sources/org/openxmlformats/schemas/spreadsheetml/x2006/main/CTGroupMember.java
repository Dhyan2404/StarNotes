package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTGroupMember extends XmlObject {
    public static final DocumentFactory<CTGroupMember> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGroupMember> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgroupmember1598type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getGroup();

    String getUniqueName();

    boolean isSetGroup();

    void setGroup(boolean z);

    void setUniqueName(String str);

    void unsetGroup();

    XmlBoolean xgetGroup();

    STXstring xgetUniqueName();

    void xsetGroup(XmlBoolean xmlBoolean);

    void xsetUniqueName(STXstring sTXstring);
}
