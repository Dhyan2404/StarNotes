package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTxbxContent;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.TxbxContentDocument;

/* loaded from: classes16.dex */
public class TxbxContentDocumentImpl extends XmlComplexContentImpl implements TxbxContentDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "txbxContent")};
    private static final long serialVersionUID = 1;

    public TxbxContentDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.TxbxContentDocument
    public CTTxbxContent addNewTxbxContent() {
        CTTxbxContent cTTxbxContent;
        synchronized (monitor()) {
            check_orphaned();
            cTTxbxContent = (CTTxbxContent) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTxbxContent;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.TxbxContentDocument
    public CTTxbxContent getTxbxContent() {
        CTTxbxContent cTTxbxContent;
        synchronized (monitor()) {
            check_orphaned();
            cTTxbxContent = (CTTxbxContent) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTxbxContent == null) {
                cTTxbxContent = null;
            }
        }
        return cTTxbxContent;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.TxbxContentDocument
    public void setTxbxContent(CTTxbxContent cTTxbxContent) {
        generatedSetterHelperImpl(cTTxbxContent, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
