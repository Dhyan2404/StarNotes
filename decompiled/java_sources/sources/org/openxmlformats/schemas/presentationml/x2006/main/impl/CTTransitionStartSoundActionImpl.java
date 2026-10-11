package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEmbeddedWAVAudioFile;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionStartSoundAction;

/* loaded from: classes14.dex */
public class CTTransitionStartSoundActionImpl extends XmlComplexContentImpl implements CTTransitionStartSoundAction {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "snd"), new QName("", "loop")};
    private static final long serialVersionUID = 1;

    public CTTransitionStartSoundActionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionStartSoundAction
    public CTEmbeddedWAVAudioFile addNewSnd() {
        CTEmbeddedWAVAudioFile cTEmbeddedWAVAudioFile;
        synchronized (monitor()) {
            check_orphaned();
            cTEmbeddedWAVAudioFile = (CTEmbeddedWAVAudioFile) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEmbeddedWAVAudioFile;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionStartSoundAction
    public boolean getLoop() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[1]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionStartSoundAction
    public CTEmbeddedWAVAudioFile getSnd() {
        CTEmbeddedWAVAudioFile cTEmbeddedWAVAudioFile;
        synchronized (monitor()) {
            check_orphaned();
            cTEmbeddedWAVAudioFile = (CTEmbeddedWAVAudioFile) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTEmbeddedWAVAudioFile == null) {
                cTEmbeddedWAVAudioFile = null;
            }
        }
        return cTEmbeddedWAVAudioFile;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionStartSoundAction
    public boolean isSetLoop() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionStartSoundAction
    public void setLoop(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionStartSoundAction
    public void setSnd(CTEmbeddedWAVAudioFile cTEmbeddedWAVAudioFile) {
        generatedSetterHelperImpl(cTEmbeddedWAVAudioFile, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionStartSoundAction
    public void unsetLoop() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionStartSoundAction
    public XmlBoolean xgetLoop() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[1]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionStartSoundAction
    public void xsetLoop(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }
}
