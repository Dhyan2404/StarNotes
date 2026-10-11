package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEmbeddedWAVAudioFile;
import org.openxmlformats.schemas.presentationml.x2006.main.CTEmpty;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLSubShapeId;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement;

/* loaded from: classes14.dex */
public class CTTLTimeTargetElementImpl extends XmlComplexContentImpl implements CTTLTimeTargetElement {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "sldTgt"), new QName(XSSFRelation.NS_PRESENTATIONML, "sndTgt"), new QName(XSSFRelation.NS_PRESENTATIONML, "spTgt"), new QName(XSSFRelation.NS_PRESENTATIONML, "inkTgt")};
    private static final long serialVersionUID = 1;

    public CTTLTimeTargetElementImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public CTTLSubShapeId addNewInkTgt() {
        CTTLSubShapeId cTTLSubShapeId;
        synchronized (monitor()) {
            check_orphaned();
            cTTLSubShapeId = (CTTLSubShapeId) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTTLSubShapeId;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public CTEmpty addNewSldTgt() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public CTEmbeddedWAVAudioFile addNewSndTgt() {
        CTEmbeddedWAVAudioFile cTEmbeddedWAVAudioFile;
        synchronized (monitor()) {
            check_orphaned();
            cTEmbeddedWAVAudioFile = (CTEmbeddedWAVAudioFile) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTEmbeddedWAVAudioFile;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public CTTLShapeTargetElement addNewSpTgt() {
        CTTLShapeTargetElement cTTLShapeTargetElement;
        synchronized (monitor()) {
            check_orphaned();
            cTTLShapeTargetElement = (CTTLShapeTargetElement) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTLShapeTargetElement;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public CTTLSubShapeId getInkTgt() {
        CTTLSubShapeId cTTLSubShapeId;
        synchronized (monitor()) {
            check_orphaned();
            cTTLSubShapeId = (CTTLSubShapeId) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTTLSubShapeId == null) {
                cTTLSubShapeId = null;
            }
        }
        return cTTLSubShapeId;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public CTEmpty getSldTgt() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public CTEmbeddedWAVAudioFile getSndTgt() {
        CTEmbeddedWAVAudioFile cTEmbeddedWAVAudioFile;
        synchronized (monitor()) {
            check_orphaned();
            cTEmbeddedWAVAudioFile = (CTEmbeddedWAVAudioFile) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTEmbeddedWAVAudioFile == null) {
                cTEmbeddedWAVAudioFile = null;
            }
        }
        return cTEmbeddedWAVAudioFile;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public CTTLShapeTargetElement getSpTgt() {
        CTTLShapeTargetElement cTTLShapeTargetElement;
        synchronized (monitor()) {
            check_orphaned();
            cTTLShapeTargetElement = (CTTLShapeTargetElement) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTTLShapeTargetElement == null) {
                cTTLShapeTargetElement = null;
            }
        }
        return cTTLShapeTargetElement;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public boolean isSetInkTgt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public boolean isSetSldTgt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public boolean isSetSndTgt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public boolean isSetSpTgt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public void setInkTgt(CTTLSubShapeId cTTLSubShapeId) {
        generatedSetterHelperImpl(cTTLSubShapeId, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public void setSldTgt(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public void setSndTgt(CTEmbeddedWAVAudioFile cTEmbeddedWAVAudioFile) {
        generatedSetterHelperImpl(cTEmbeddedWAVAudioFile, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public void setSpTgt(CTTLShapeTargetElement cTTLShapeTargetElement) {
        generatedSetterHelperImpl(cTTLShapeTargetElement, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public void unsetInkTgt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public void unsetSldTgt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public void unsetSndTgt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLTimeTargetElement
    public void unsetSpTgt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }
}
