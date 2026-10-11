package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTControl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRel;

/* loaded from: classes16.dex */
public class CTPictureImpl extends XmlComplexContentImpl implements CTPicture {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "movie"), new QName(XSSFRelation.NS_WORDPROCESSINGML, SessionDescription.f26438n)};
    private static final long serialVersionUID = 1;

    public CTPictureImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture
    public CTControl addNewControl() {
        CTControl cTControl;
        synchronized (monitor()) {
            check_orphaned();
            cTControl = (CTControl) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTControl;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture
    public CTRel addNewMovie() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture
    public CTControl getControl() {
        CTControl cTControl;
        synchronized (monitor()) {
            check_orphaned();
            cTControl = (CTControl) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTControl == null) {
                cTControl = null;
            }
        }
        return cTControl;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture
    public CTRel getMovie() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRel == null) {
                cTRel = null;
            }
        }
        return cTRel;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture
    public boolean isSetControl() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture
    public boolean isSetMovie() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture
    public void setControl(CTControl cTControl) {
        generatedSetterHelperImpl(cTControl, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture
    public void setMovie(CTRel cTRel) {
        generatedSetterHelperImpl(cTRel, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture
    public void unsetControl() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture
    public void unsetMovie() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
