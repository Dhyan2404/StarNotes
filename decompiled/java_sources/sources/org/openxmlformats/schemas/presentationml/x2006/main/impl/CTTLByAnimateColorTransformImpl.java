package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.google.android.exoplayer2.util.ColorParser;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLByAnimateColorTransform;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLByHslColorTransform;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLByRgbColorTransform;

/* loaded from: classes14.dex */
public class CTTLByAnimateColorTransformImpl extends XmlComplexContentImpl implements CTTLByAnimateColorTransform {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, ColorParser.f28273a), new QName(XSSFRelation.NS_PRESENTATIONML, "hsl")};
    private static final long serialVersionUID = 1;

    public CTTLByAnimateColorTransformImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByAnimateColorTransform
    public CTTLByHslColorTransform addNewHsl() {
        CTTLByHslColorTransform cTTLByHslColorTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTTLByHslColorTransform = (CTTLByHslColorTransform) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLByHslColorTransform;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByAnimateColorTransform
    public CTTLByRgbColorTransform addNewRgb() {
        CTTLByRgbColorTransform cTTLByRgbColorTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTTLByRgbColorTransform = (CTTLByRgbColorTransform) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTLByRgbColorTransform;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByAnimateColorTransform
    public CTTLByHslColorTransform getHsl() {
        CTTLByHslColorTransform cTTLByHslColorTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTTLByHslColorTransform = (CTTLByHslColorTransform) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTLByHslColorTransform == null) {
                cTTLByHslColorTransform = null;
            }
        }
        return cTTLByHslColorTransform;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByAnimateColorTransform
    public CTTLByRgbColorTransform getRgb() {
        CTTLByRgbColorTransform cTTLByRgbColorTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTTLByRgbColorTransform = (CTTLByRgbColorTransform) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTLByRgbColorTransform == null) {
                cTTLByRgbColorTransform = null;
            }
        }
        return cTTLByRgbColorTransform;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByAnimateColorTransform
    public boolean isSetHsl() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByAnimateColorTransform
    public boolean isSetRgb() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByAnimateColorTransform
    public void setHsl(CTTLByHslColorTransform cTTLByHslColorTransform) {
        generatedSetterHelperImpl(cTTLByHslColorTransform, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByAnimateColorTransform
    public void setRgb(CTTLByRgbColorTransform cTTLByRgbColorTransform) {
        generatedSetterHelperImpl(cTTLByRgbColorTransform, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByAnimateColorTransform
    public void unsetHsl() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLByAnimateColorTransform
    public void unsetRgb() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
