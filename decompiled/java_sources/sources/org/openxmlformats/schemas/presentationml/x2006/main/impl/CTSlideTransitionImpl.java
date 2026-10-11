package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.onegravity.colorpicker.ColorPicker;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCornerDirectionTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.CTEightDirectionTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.CTEmpty;
import org.openxmlformats.schemas.presentationml.x2006.main.CTExtensionListModify;
import org.openxmlformats.schemas.presentationml.x2006.main.CTInOutTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.CTOptionalBlackTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.CTOrientationTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSideDirectionTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSplitTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionSoundAction;
import org.openxmlformats.schemas.presentationml.x2006.main.CTWheelTransition;
import org.openxmlformats.schemas.presentationml.x2006.main.STTransitionSpeed;

/* loaded from: classes14.dex */
public class CTSlideTransitionImpl extends XmlComplexContentImpl implements CTSlideTransition {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "blinds"), new QName(XSSFRelation.NS_PRESENTATIONML, "checker"), new QName(XSSFRelation.NS_PRESENTATIONML, "circle"), new QName(XSSFRelation.NS_PRESENTATIONML, "dissolve"), new QName(XSSFRelation.NS_PRESENTATIONML, "comb"), new QName(XSSFRelation.NS_PRESENTATIONML, "cover"), new QName(XSSFRelation.NS_PRESENTATIONML, "cut"), new QName(XSSFRelation.NS_PRESENTATIONML, "diamond"), new QName(XSSFRelation.NS_PRESENTATIONML, "fade"), new QName(XSSFRelation.NS_PRESENTATIONML, "newsflash"), new QName(XSSFRelation.NS_PRESENTATIONML, "plus"), new QName(XSSFRelation.NS_PRESENTATIONML, "pull"), new QName(XSSFRelation.NS_PRESENTATIONML, "push"), new QName(XSSFRelation.NS_PRESENTATIONML, "random"), new QName(XSSFRelation.NS_PRESENTATIONML, "randomBar"), new QName(XSSFRelation.NS_PRESENTATIONML, "split"), new QName(XSSFRelation.NS_PRESENTATIONML, "strips"), new QName(XSSFRelation.NS_PRESENTATIONML, "wedge"), new QName(XSSFRelation.NS_PRESENTATIONML, ColorPicker.f39839o), new QName(XSSFRelation.NS_PRESENTATIONML, "wipe"), new QName(XSSFRelation.NS_PRESENTATIONML, "zoom"), new QName(XSSFRelation.NS_PRESENTATIONML, "sndAc"), new QName(XSSFRelation.NS_PRESENTATIONML, "extLst"), new QName("", "spd"), new QName("", "advClick"), new QName("", "advTm")};
    private static final long serialVersionUID = 1;

    public CTSlideTransitionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTOrientationTransition addNewBlinds() {
        CTOrientationTransition cTOrientationTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTOrientationTransition = (CTOrientationTransition) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOrientationTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTOrientationTransition addNewChecker() {
        CTOrientationTransition cTOrientationTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTOrientationTransition = (CTOrientationTransition) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTOrientationTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty addNewCircle() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTOrientationTransition addNewComb() {
        CTOrientationTransition cTOrientationTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTOrientationTransition = (CTOrientationTransition) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTOrientationTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEightDirectionTransition addNewCover() {
        CTEightDirectionTransition cTEightDirectionTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTEightDirectionTransition = (CTEightDirectionTransition) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTEightDirectionTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTOptionalBlackTransition addNewCut() {
        CTOptionalBlackTransition cTOptionalBlackTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTOptionalBlackTransition = (CTOptionalBlackTransition) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTOptionalBlackTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty addNewDiamond() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty addNewDissolve() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTExtensionListModify addNewExtLst() {
        CTExtensionListModify cTExtensionListModify;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionListModify = (CTExtensionListModify) get_store().add_element_user(PROPERTY_QNAME[22]);
        }
        return cTExtensionListModify;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTOptionalBlackTransition addNewFade() {
        CTOptionalBlackTransition cTOptionalBlackTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTOptionalBlackTransition = (CTOptionalBlackTransition) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTOptionalBlackTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty addNewNewsflash() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty addNewPlus() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEightDirectionTransition addNewPull() {
        CTEightDirectionTransition cTEightDirectionTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTEightDirectionTransition = (CTEightDirectionTransition) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTEightDirectionTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTSideDirectionTransition addNewPush() {
        CTSideDirectionTransition cTSideDirectionTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTSideDirectionTransition = (CTSideDirectionTransition) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTSideDirectionTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty addNewRandom() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTOrientationTransition addNewRandomBar() {
        CTOrientationTransition cTOrientationTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTOrientationTransition = (CTOrientationTransition) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTOrientationTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTTransitionSoundAction addNewSndAc() {
        CTTransitionSoundAction cTTransitionSoundAction;
        synchronized (monitor()) {
            check_orphaned();
            cTTransitionSoundAction = (CTTransitionSoundAction) get_store().add_element_user(PROPERTY_QNAME[21]);
        }
        return cTTransitionSoundAction;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTSplitTransition addNewSplit() {
        CTSplitTransition cTSplitTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTSplitTransition = (CTSplitTransition) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTSplitTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTCornerDirectionTransition addNewStrips() {
        CTCornerDirectionTransition cTCornerDirectionTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTCornerDirectionTransition = (CTCornerDirectionTransition) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTCornerDirectionTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty addNewWedge() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTWheelTransition addNewWheel() {
        CTWheelTransition cTWheelTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTWheelTransition = (CTWheelTransition) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTWheelTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTSideDirectionTransition addNewWipe() {
        CTSideDirectionTransition cTSideDirectionTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTSideDirectionTransition = (CTSideDirectionTransition) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return cTSideDirectionTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTInOutTransition addNewZoom() {
        CTInOutTransition cTInOutTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTInOutTransition = (CTInOutTransition) get_store().add_element_user(PROPERTY_QNAME[20]);
        }
        return cTInOutTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean getAdvClick() {
        boolean booleanValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[24]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[24]);
            }
            booleanValue = simpleValue == null ? false : simpleValue.getBooleanValue();
        }
        return booleanValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public long getAdvTm() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[25]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTOrientationTransition getBlinds() {
        CTOrientationTransition cTOrientationTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTOrientationTransition = (CTOrientationTransition) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOrientationTransition == null) {
                cTOrientationTransition = null;
            }
        }
        return cTOrientationTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTOrientationTransition getChecker() {
        CTOrientationTransition cTOrientationTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTOrientationTransition = (CTOrientationTransition) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTOrientationTransition == null) {
                cTOrientationTransition = null;
            }
        }
        return cTOrientationTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty getCircle() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTOrientationTransition getComb() {
        CTOrientationTransition cTOrientationTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTOrientationTransition = (CTOrientationTransition) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTOrientationTransition == null) {
                cTOrientationTransition = null;
            }
        }
        return cTOrientationTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEightDirectionTransition getCover() {
        CTEightDirectionTransition cTEightDirectionTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTEightDirectionTransition = (CTEightDirectionTransition) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTEightDirectionTransition == null) {
                cTEightDirectionTransition = null;
            }
        }
        return cTEightDirectionTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTOptionalBlackTransition getCut() {
        CTOptionalBlackTransition cTOptionalBlackTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTOptionalBlackTransition = (CTOptionalBlackTransition) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (cTOptionalBlackTransition == null) {
                cTOptionalBlackTransition = null;
            }
        }
        return cTOptionalBlackTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty getDiamond() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty getDissolve() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTExtensionListModify getExtLst() {
        CTExtensionListModify cTExtensionListModify;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionListModify = (CTExtensionListModify) get_store().find_element_user(PROPERTY_QNAME[22], 0);
            if (cTExtensionListModify == null) {
                cTExtensionListModify = null;
            }
        }
        return cTExtensionListModify;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTOptionalBlackTransition getFade() {
        CTOptionalBlackTransition cTOptionalBlackTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTOptionalBlackTransition = (CTOptionalBlackTransition) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTOptionalBlackTransition == null) {
                cTOptionalBlackTransition = null;
            }
        }
        return cTOptionalBlackTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty getNewsflash() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[9], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty getPlus() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[10], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEightDirectionTransition getPull() {
        CTEightDirectionTransition cTEightDirectionTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTEightDirectionTransition = (CTEightDirectionTransition) get_store().find_element_user(PROPERTY_QNAME[11], 0);
            if (cTEightDirectionTransition == null) {
                cTEightDirectionTransition = null;
            }
        }
        return cTEightDirectionTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTSideDirectionTransition getPush() {
        CTSideDirectionTransition cTSideDirectionTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTSideDirectionTransition = (CTSideDirectionTransition) get_store().find_element_user(PROPERTY_QNAME[12], 0);
            if (cTSideDirectionTransition == null) {
                cTSideDirectionTransition = null;
            }
        }
        return cTSideDirectionTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty getRandom() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[13], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTOrientationTransition getRandomBar() {
        CTOrientationTransition cTOrientationTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTOrientationTransition = (CTOrientationTransition) get_store().find_element_user(PROPERTY_QNAME[14], 0);
            if (cTOrientationTransition == null) {
                cTOrientationTransition = null;
            }
        }
        return cTOrientationTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTTransitionSoundAction getSndAc() {
        CTTransitionSoundAction cTTransitionSoundAction;
        synchronized (monitor()) {
            check_orphaned();
            cTTransitionSoundAction = (CTTransitionSoundAction) get_store().find_element_user(PROPERTY_QNAME[21], 0);
            if (cTTransitionSoundAction == null) {
                cTTransitionSoundAction = null;
            }
        }
        return cTTransitionSoundAction;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public STTransitionSpeed.Enum getSpd() {
        STTransitionSpeed.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[23]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[23]);
            }
            r5 = simpleValue == null ? null : (STTransitionSpeed.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTSplitTransition getSplit() {
        CTSplitTransition cTSplitTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTSplitTransition = (CTSplitTransition) get_store().find_element_user(PROPERTY_QNAME[15], 0);
            if (cTSplitTransition == null) {
                cTSplitTransition = null;
            }
        }
        return cTSplitTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTCornerDirectionTransition getStrips() {
        CTCornerDirectionTransition cTCornerDirectionTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTCornerDirectionTransition = (CTCornerDirectionTransition) get_store().find_element_user(PROPERTY_QNAME[16], 0);
            if (cTCornerDirectionTransition == null) {
                cTCornerDirectionTransition = null;
            }
        }
        return cTCornerDirectionTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTEmpty getWedge() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[17], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTWheelTransition getWheel() {
        CTWheelTransition cTWheelTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTWheelTransition = (CTWheelTransition) get_store().find_element_user(PROPERTY_QNAME[18], 0);
            if (cTWheelTransition == null) {
                cTWheelTransition = null;
            }
        }
        return cTWheelTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTSideDirectionTransition getWipe() {
        CTSideDirectionTransition cTSideDirectionTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTSideDirectionTransition = (CTSideDirectionTransition) get_store().find_element_user(PROPERTY_QNAME[19], 0);
            if (cTSideDirectionTransition == null) {
                cTSideDirectionTransition = null;
            }
        }
        return cTSideDirectionTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public CTInOutTransition getZoom() {
        CTInOutTransition cTInOutTransition;
        synchronized (monitor()) {
            check_orphaned();
            cTInOutTransition = (CTInOutTransition) get_store().find_element_user(PROPERTY_QNAME[20], 0);
            if (cTInOutTransition == null) {
                cTInOutTransition = null;
            }
        }
        return cTInOutTransition;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetAdvClick() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[24]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetAdvTm() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[25]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetBlinds() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetChecker() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetCircle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetComb() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetCover() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetCut() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetDiamond() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetDissolve() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[22]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetFade() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetNewsflash() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[9]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetPlus() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[10]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetPull() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[11]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetPush() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[12]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetRandom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[13]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetRandomBar() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[14]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetSndAc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[21]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetSpd() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[23]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetSplit() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[15]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetStrips() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[16]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetWedge() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[17]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetWheel() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[18]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetWipe() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[19]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public boolean isSetZoom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[20]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setAdvClick(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[24]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[24]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setAdvTm(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[25]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[25]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setBlinds(CTOrientationTransition cTOrientationTransition) {
        generatedSetterHelperImpl(cTOrientationTransition, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setChecker(CTOrientationTransition cTOrientationTransition) {
        generatedSetterHelperImpl(cTOrientationTransition, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setCircle(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setComb(CTOrientationTransition cTOrientationTransition) {
        generatedSetterHelperImpl(cTOrientationTransition, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setCover(CTEightDirectionTransition cTEightDirectionTransition) {
        generatedSetterHelperImpl(cTEightDirectionTransition, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setCut(CTOptionalBlackTransition cTOptionalBlackTransition) {
        generatedSetterHelperImpl(cTOptionalBlackTransition, PROPERTY_QNAME[6], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setDiamond(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setDissolve(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setExtLst(CTExtensionListModify cTExtensionListModify) {
        generatedSetterHelperImpl(cTExtensionListModify, PROPERTY_QNAME[22], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setFade(CTOptionalBlackTransition cTOptionalBlackTransition) {
        generatedSetterHelperImpl(cTOptionalBlackTransition, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setNewsflash(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[9], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setPlus(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[10], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setPull(CTEightDirectionTransition cTEightDirectionTransition) {
        generatedSetterHelperImpl(cTEightDirectionTransition, PROPERTY_QNAME[11], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setPush(CTSideDirectionTransition cTSideDirectionTransition) {
        generatedSetterHelperImpl(cTSideDirectionTransition, PROPERTY_QNAME[12], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setRandom(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[13], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setRandomBar(CTOrientationTransition cTOrientationTransition) {
        generatedSetterHelperImpl(cTOrientationTransition, PROPERTY_QNAME[14], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setSndAc(CTTransitionSoundAction cTTransitionSoundAction) {
        generatedSetterHelperImpl(cTTransitionSoundAction, PROPERTY_QNAME[21], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setSpd(STTransitionSpeed.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[23]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[23]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setSplit(CTSplitTransition cTSplitTransition) {
        generatedSetterHelperImpl(cTSplitTransition, PROPERTY_QNAME[15], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setStrips(CTCornerDirectionTransition cTCornerDirectionTransition) {
        generatedSetterHelperImpl(cTCornerDirectionTransition, PROPERTY_QNAME[16], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setWedge(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[17], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setWheel(CTWheelTransition cTWheelTransition) {
        generatedSetterHelperImpl(cTWheelTransition, PROPERTY_QNAME[18], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setWipe(CTSideDirectionTransition cTSideDirectionTransition) {
        generatedSetterHelperImpl(cTSideDirectionTransition, PROPERTY_QNAME[19], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void setZoom(CTInOutTransition cTInOutTransition) {
        generatedSetterHelperImpl(cTInOutTransition, PROPERTY_QNAME[20], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetAdvClick() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[24]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetAdvTm() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[25]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetBlinds() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetChecker() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetCircle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetComb() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetCover() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetCut() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetDiamond() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetDissolve() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetFade() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetNewsflash() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetPlus() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetPull() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetPush() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetRandom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetRandomBar() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetSndAc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetSpd() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[23]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetSplit() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetStrips() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetWedge() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetWheel() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetWipe() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void unsetZoom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public XmlBoolean xgetAdvClick() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlBoolean = (XmlBoolean) typeStore.find_attribute_user(qNameArr[24]);
            if (xmlBoolean == null) {
                xmlBoolean = (XmlBoolean) get_default_attribute_value(qNameArr[24]);
            }
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public XmlUnsignedInt xgetAdvTm() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[25]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public STTransitionSpeed xgetSpd() {
        STTransitionSpeed sTTransitionSpeed;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTTransitionSpeed = (STTransitionSpeed) typeStore.find_attribute_user(qNameArr[23]);
            if (sTTransitionSpeed == null) {
                sTTransitionSpeed = (STTransitionSpeed) get_default_attribute_value(qNameArr[23]);
            }
        }
        return sTTransitionSpeed;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void xsetAdvClick(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_attribute_user(qNameArr[24]);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_attribute_user(qNameArr[24]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void xsetAdvTm(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[25]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[25]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTSlideTransition
    public void xsetSpd(STTransitionSpeed sTTransitionSpeed) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTransitionSpeed sTTransitionSpeed2 = (STTransitionSpeed) typeStore.find_attribute_user(qNameArr[23]);
            if (sTTransitionSpeed2 == null) {
                sTTransitionSpeed2 = (STTransitionSpeed) get_store().add_attribute_user(qNameArr[23]);
            }
            sTTransitionSpeed2.set(sTTransitionSpeed);
        }
    }
}
