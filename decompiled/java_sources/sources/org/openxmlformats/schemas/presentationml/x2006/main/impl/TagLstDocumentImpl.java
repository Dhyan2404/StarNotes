package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTagList;
import org.openxmlformats.schemas.presentationml.x2006.main.TagLstDocument;

/* loaded from: classes14.dex */
public class TagLstDocumentImpl extends XmlComplexContentImpl implements TagLstDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "tagLst")};
    private static final long serialVersionUID = 1;

    public TagLstDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.TagLstDocument
    public CTTagList addNewTagLst() {
        CTTagList cTTagList;
        synchronized (monitor()) {
            check_orphaned();
            cTTagList = (CTTagList) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTagList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.TagLstDocument
    public CTTagList getTagLst() {
        CTTagList cTTagList;
        synchronized (monitor()) {
            check_orphaned();
            cTTagList = (CTTagList) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTagList == null) {
                cTTagList = null;
            }
        }
        return cTTagList;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.TagLstDocument
    public void setTagLst(CTTagList cTTagList) {
        generatedSetterHelperImpl(cTTagList, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
