package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlurEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFillOverlayEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGlowEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTInnerShadowEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOuterShadowEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetShadowEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTReflectionEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSoftEdgesEffect;

/* loaded from: classes14.dex */
public class CTEffectListImpl extends XmlComplexContentImpl implements CTEffectList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "blur"), new QName(XSSFRelation.NS_DRAWINGML, "fillOverlay"), new QName(XSSFRelation.NS_DRAWINGML, "glow"), new QName(XSSFRelation.NS_DRAWINGML, "innerShdw"), new QName(XSSFRelation.NS_DRAWINGML, "outerShdw"), new QName(XSSFRelation.NS_DRAWINGML, "prstShdw"), new QName(XSSFRelation.NS_DRAWINGML, "reflection"), new QName(XSSFRelation.NS_DRAWINGML, "softEdge")};
    private static final long serialVersionUID = 1;

    public CTEffectListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTBlurEffect addNewBlur() {
        CTBlurEffect cTBlurEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBlurEffect = (CTBlurEffect) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBlurEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTFillOverlayEffect addNewFillOverlay() {
        CTFillOverlayEffect cTFillOverlayEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTFillOverlayEffect = (CTFillOverlayEffect) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTFillOverlayEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTGlowEffect addNewGlow() {
        CTGlowEffect cTGlowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTGlowEffect = (CTGlowEffect) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTGlowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTInnerShadowEffect addNewInnerShdw() {
        CTInnerShadowEffect cTInnerShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTInnerShadowEffect = (CTInnerShadowEffect) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTInnerShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTOuterShadowEffect addNewOuterShdw() {
        CTOuterShadowEffect cTOuterShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTOuterShadowEffect = (CTOuterShadowEffect) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTOuterShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTPresetShadowEffect addNewPrstShdw() {
        CTPresetShadowEffect cTPresetShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTPresetShadowEffect = (CTPresetShadowEffect) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTPresetShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTReflectionEffect addNewReflection() {
        CTReflectionEffect cTReflectionEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTReflectionEffect = (CTReflectionEffect) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTReflectionEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTSoftEdgesEffect addNewSoftEdge() {
        CTSoftEdgesEffect cTSoftEdgesEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTSoftEdgesEffect = (CTSoftEdgesEffect) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTSoftEdgesEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTBlurEffect getBlur() {
        CTBlurEffect cTBlurEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBlurEffect = (CTBlurEffect) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTBlurEffect == null) {
                cTBlurEffect = null;
            }
        }
        return cTBlurEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTFillOverlayEffect getFillOverlay() {
        CTFillOverlayEffect cTFillOverlayEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTFillOverlayEffect = (CTFillOverlayEffect) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTFillOverlayEffect == null) {
                cTFillOverlayEffect = null;
            }
        }
        return cTFillOverlayEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTGlowEffect getGlow() {
        CTGlowEffect cTGlowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTGlowEffect = (CTGlowEffect) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTGlowEffect == null) {
                cTGlowEffect = null;
            }
        }
        return cTGlowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTInnerShadowEffect getInnerShdw() {
        CTInnerShadowEffect cTInnerShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTInnerShadowEffect = (CTInnerShadowEffect) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTInnerShadowEffect == null) {
                cTInnerShadowEffect = null;
            }
        }
        return cTInnerShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTOuterShadowEffect getOuterShdw() {
        CTOuterShadowEffect cTOuterShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTOuterShadowEffect = (CTOuterShadowEffect) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTOuterShadowEffect == null) {
                cTOuterShadowEffect = null;
            }
        }
        return cTOuterShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTPresetShadowEffect getPrstShdw() {
        CTPresetShadowEffect cTPresetShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTPresetShadowEffect = (CTPresetShadowEffect) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTPresetShadowEffect == null) {
                cTPresetShadowEffect = null;
            }
        }
        return cTPresetShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTReflectionEffect getReflection() {
        CTReflectionEffect cTReflectionEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTReflectionEffect = (CTReflectionEffect) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTReflectionEffect == null) {
                cTReflectionEffect = null;
            }
        }
        return cTReflectionEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public CTSoftEdgesEffect getSoftEdge() {
        CTSoftEdgesEffect cTSoftEdgesEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTSoftEdgesEffect = (CTSoftEdgesEffect) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTSoftEdgesEffect == null) {
                cTSoftEdgesEffect = null;
            }
        }
        return cTSoftEdgesEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public boolean isSetBlur() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public boolean isSetFillOverlay() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public boolean isSetGlow() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public boolean isSetInnerShdw() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public boolean isSetOuterShdw() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public boolean isSetPrstShdw() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public boolean isSetReflection() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public boolean isSetSoftEdge() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void setBlur(CTBlurEffect cTBlurEffect) {
        generatedSetterHelperImpl(cTBlurEffect, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void setFillOverlay(CTFillOverlayEffect cTFillOverlayEffect) {
        generatedSetterHelperImpl(cTFillOverlayEffect, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void setGlow(CTGlowEffect cTGlowEffect) {
        generatedSetterHelperImpl(cTGlowEffect, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void setInnerShdw(CTInnerShadowEffect cTInnerShadowEffect) {
        generatedSetterHelperImpl(cTInnerShadowEffect, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void setOuterShdw(CTOuterShadowEffect cTOuterShadowEffect) {
        generatedSetterHelperImpl(cTOuterShadowEffect, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void setPrstShdw(CTPresetShadowEffect cTPresetShadowEffect) {
        generatedSetterHelperImpl(cTPresetShadowEffect, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void setReflection(CTReflectionEffect cTReflectionEffect) {
        generatedSetterHelperImpl(cTReflectionEffect, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void setSoftEdge(CTSoftEdgesEffect cTSoftEdgesEffect) {
        generatedSetterHelperImpl(cTSoftEdgesEffect, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void unsetBlur() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void unsetFillOverlay() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void unsetGlow() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void unsetInnerShdw() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void unsetOuterShdw() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void unsetPrstShdw() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void unsetReflection() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectList
    public void unsetSoftEdge() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }
}
