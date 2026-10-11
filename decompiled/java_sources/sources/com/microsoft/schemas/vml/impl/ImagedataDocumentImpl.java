package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTImageData;
import com.microsoft.schemas.vml.ImagedataDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ImagedataDocumentImpl extends XmlComplexContentImpl implements ImagedataDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "imagedata")};
    private static final long serialVersionUID = 1;

    public ImagedataDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.ImagedataDocument
    public CTImageData addNewImagedata() {
        CTImageData cTImageData;
        synchronized (monitor()) {
            check_orphaned();
            cTImageData = (CTImageData) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTImageData;
    }

    @Override // com.microsoft.schemas.vml.ImagedataDocument
    public CTImageData getImagedata() {
        CTImageData cTImageData;
        synchronized (monitor()) {
            check_orphaned();
            cTImageData = (CTImageData) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTImageData == null) {
                cTImageData = null;
            }
        }
        return cTImageData;
    }

    @Override // com.microsoft.schemas.vml.ImagedataDocument
    public void setImagedata(CTImageData cTImageData) {
        generatedSetterHelperImpl(cTImageData, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
