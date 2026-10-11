package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLCommonTimeNodeData;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeExclusive;

/* loaded from: classes14.dex */
public class CTTLTimeNodeExclusiveImpl extends XmlComplexContentImpl implements CTTLTimeNodeExclusive {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "cTn")};
    private static final long serialVersionUID = 1;

    public CTTLTimeNodeExclusiveImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeExclusive
    public CTTLCommonTimeNodeData addNewCTn() {
        CTTLCommonTimeNodeData cTTLCommonTimeNodeData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonTimeNodeData = (CTTLCommonTimeNodeData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLCommonTimeNodeData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeExclusive
    public CTTLCommonTimeNodeData getCTn() {
        CTTLCommonTimeNodeData cTTLCommonTimeNodeData;
        synchronized (monitor()) {
            check_orphaned();
            cTTLCommonTimeNodeData = (CTTLCommonTimeNodeData) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTLCommonTimeNodeData == null) {
                cTTLCommonTimeNodeData = null;
            }
        }
        return cTTLCommonTimeNodeData;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeNodeExclusive
    public void setCTn(CTTLCommonTimeNodeData cTTLCommonTimeNodeData) {
        generatedSetterHelperImpl(cTTLCommonTimeNodeData, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
