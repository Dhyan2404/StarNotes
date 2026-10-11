package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTGroup;
import com.microsoft.schemas.vml.GroupDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class GroupDocumentImpl extends XmlComplexContentImpl implements GroupDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "group")};
    private static final long serialVersionUID = 1;

    public GroupDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.GroupDocument
    public CTGroup addNewGroup() {
        CTGroup cTGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTGroup = (CTGroup) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGroup;
    }

    @Override // com.microsoft.schemas.vml.GroupDocument
    public CTGroup getGroup() {
        CTGroup cTGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTGroup = (CTGroup) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGroup == null) {
                cTGroup = null;
            }
        }
        return cTGroup;
    }

    @Override // com.microsoft.schemas.vml.GroupDocument
    public void setGroup(CTGroup cTGroup) {
        generatedSetterHelperImpl(cTGroup, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
