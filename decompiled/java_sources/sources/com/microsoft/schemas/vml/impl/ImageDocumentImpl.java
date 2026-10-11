package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTImage;
import com.microsoft.schemas.vml.ImageDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ImageDocumentImpl extends XmlComplexContentImpl implements ImageDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "image")};
    private static final long serialVersionUID = 1;

    public ImageDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.ImageDocument
    public CTImage addNewImage() {
        CTImage cTImage;
        synchronized (monitor()) {
            check_orphaned();
            cTImage = (CTImage) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTImage;
    }

    @Override // com.microsoft.schemas.vml.ImageDocument
    public CTImage getImage() {
        CTImage cTImage;
        synchronized (monitor()) {
            check_orphaned();
            cTImage = (CTImage) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTImage == null) {
                cTImage = null;
            }
        }
        return cTImage;
    }

    @Override // com.microsoft.schemas.vml.ImageDocument
    public void setImage(CTImage cTImage) {
        generatedSetterHelperImpl(cTImage, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
