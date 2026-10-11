package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.DataBindingDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDataBinding;

/* loaded from: classes7.dex */
public class DataBindingDocumentImpl extends XmlComplexContentImpl implements DataBindingDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "dataBinding")};
    private static final long serialVersionUID = 1;

    public DataBindingDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.DataBindingDocument
    public CTDataBinding addNewDataBinding() {
        CTDataBinding cTDataBinding;
        synchronized (monitor()) {
            check_orphaned();
            cTDataBinding = (CTDataBinding) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTDataBinding;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.DataBindingDocument
    public CTDataBinding getDataBinding() {
        CTDataBinding cTDataBinding;
        synchronized (monitor()) {
            check_orphaned();
            cTDataBinding = (CTDataBinding) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTDataBinding == null) {
                cTDataBinding = null;
            }
        }
        return cTDataBinding;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.DataBindingDocument
    public void setDataBinding(CTDataBinding cTDataBinding) {
        generatedSetterHelperImpl(cTDataBinding, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
