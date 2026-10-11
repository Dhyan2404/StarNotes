package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTVideoFile;
import org.openxmlformats.schemas.drawingml.x2006.main.VideoFileDocument;

/* loaded from: classes14.dex */
public class VideoFileDocumentImpl extends XmlComplexContentImpl implements VideoFileDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "videoFile")};
    private static final long serialVersionUID = 1;

    public VideoFileDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.VideoFileDocument
    public CTVideoFile addNewVideoFile() {
        CTVideoFile cTVideoFile;
        synchronized (monitor()) {
            check_orphaned();
            cTVideoFile = (CTVideoFile) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTVideoFile;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.VideoFileDocument
    public CTVideoFile getVideoFile() {
        CTVideoFile cTVideoFile;
        synchronized (monitor()) {
            check_orphaned();
            cTVideoFile = (CTVideoFile) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTVideoFile == null) {
                cTVideoFile = null;
            }
        }
        return cTVideoFile;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.VideoFileDocument
    public void setVideoFile(CTVideoFile cTVideoFile) {
        generatedSetterHelperImpl(cTVideoFile, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
