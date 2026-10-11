package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import androidx.core.text.util.LocalePreferences;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAngle;
import org.openxmlformats.schemas.drawingml.x2006.main.CTComplementTransform;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFixedPercentage;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGammaTransform;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGrayscaleTransform;
import org.openxmlformats.schemas.drawingml.x2006.main.CTInverseGammaTransform;
import org.openxmlformats.schemas.drawingml.x2006.main.CTInverseTransform;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPercentage;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveFixedAngle;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveFixedPercentage;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositivePercentage;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor;
import org.openxmlformats.schemas.drawingml.x2006.main.STSchemeColorVal;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTSchemeColorImpl;

/* loaded from: classes14.dex */
public class CTSchemeColorImpl extends XmlComplexContentImpl implements CTSchemeColor {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "tint"), new QName(XSSFRelation.NS_DRAWINGML, "shade"), new QName(XSSFRelation.NS_DRAWINGML, "comp"), new QName(XSSFRelation.NS_DRAWINGML, "inv"), new QName(XSSFRelation.NS_DRAWINGML, "gray"), new QName(XSSFRelation.NS_DRAWINGML, "alpha"), new QName(XSSFRelation.NS_DRAWINGML, "alphaOff"), new QName(XSSFRelation.NS_DRAWINGML, "alphaMod"), new QName(XSSFRelation.NS_DRAWINGML, "hue"), new QName(XSSFRelation.NS_DRAWINGML, "hueOff"), new QName(XSSFRelation.NS_DRAWINGML, "hueMod"), new QName(XSSFRelation.NS_DRAWINGML, LocalePreferences.FirstDayOfWeek.SATURDAY), new QName(XSSFRelation.NS_DRAWINGML, "satOff"), new QName(XSSFRelation.NS_DRAWINGML, "satMod"), new QName(XSSFRelation.NS_DRAWINGML, "lum"), new QName(XSSFRelation.NS_DRAWINGML, "lumOff"), new QName(XSSFRelation.NS_DRAWINGML, "lumMod"), new QName(XSSFRelation.NS_DRAWINGML, "red"), new QName(XSSFRelation.NS_DRAWINGML, "redOff"), new QName(XSSFRelation.NS_DRAWINGML, "redMod"), new QName(XSSFRelation.NS_DRAWINGML, "green"), new QName(XSSFRelation.NS_DRAWINGML, "greenOff"), new QName(XSSFRelation.NS_DRAWINGML, "greenMod"), new QName(XSSFRelation.NS_DRAWINGML, "blue"), new QName(XSSFRelation.NS_DRAWINGML, "blueOff"), new QName(XSSFRelation.NS_DRAWINGML, "blueMod"), new QName(XSSFRelation.NS_DRAWINGML, "gamma"), new QName(XSSFRelation.NS_DRAWINGML, "invGamma"), new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTSchemeColorImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedPercentage addNewAlpha() {
        CTPositiveFixedPercentage cTPositiveFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveFixedPercentage = (CTPositiveFixedPercentage) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTPositiveFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositivePercentage addNewAlphaMod() {
        CTPositivePercentage cTPositivePercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositivePercentage = (CTPositivePercentage) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTPositivePercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTFixedPercentage addNewAlphaOff() {
        CTFixedPercentage cTFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTFixedPercentage = (CTFixedPercentage) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewBlue() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[23]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewBlueMod() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[25]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewBlueOff() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[24]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTComplementTransform addNewComp() {
        CTComplementTransform cTComplementTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTComplementTransform = (CTComplementTransform) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTComplementTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTGammaTransform addNewGamma() {
        CTGammaTransform cTGammaTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTGammaTransform = (CTGammaTransform) get_store().add_element_user(PROPERTY_QNAME[26]);
        }
        return cTGammaTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTGrayscaleTransform addNewGray() {
        CTGrayscaleTransform cTGrayscaleTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTGrayscaleTransform = (CTGrayscaleTransform) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTGrayscaleTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewGreen() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[20]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewGreenMod() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[22]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewGreenOff() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[21]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedAngle addNewHue() {
        CTPositiveFixedAngle cTPositiveFixedAngle;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveFixedAngle = (CTPositiveFixedAngle) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTPositiveFixedAngle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositivePercentage addNewHueMod() {
        CTPositivePercentage cTPositivePercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositivePercentage = (CTPositivePercentage) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTPositivePercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTAngle addNewHueOff() {
        CTAngle cTAngle;
        synchronized (monitor()) {
            check_orphaned();
            cTAngle = (CTAngle) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTAngle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTInverseTransform addNewInv() {
        CTInverseTransform cTInverseTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTInverseTransform = (CTInverseTransform) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTInverseTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTInverseGammaTransform addNewInvGamma() {
        CTInverseGammaTransform cTInverseGammaTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTInverseGammaTransform = (CTInverseGammaTransform) get_store().add_element_user(PROPERTY_QNAME[27]);
        }
        return cTInverseGammaTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewLum() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewLumMod() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewLumOff() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewRed() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewRedMod() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewRedOff() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewSat() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewSatMod() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage addNewSatOff() {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedPercentage addNewShade() {
        CTPositiveFixedPercentage cTPositiveFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveFixedPercentage = (CTPositiveFixedPercentage) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTPositiveFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedPercentage addNewTint() {
        CTPositiveFixedPercentage cTPositiveFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveFixedPercentage = (CTPositiveFixedPercentage) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPositiveFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedPercentage[] getAlphaArray() {
        return (CTPositiveFixedPercentage[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTPositiveFixedPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPositiveFixedPercentage> getAlphaList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y0a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getAlphaArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z0a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setAlphaArray(((Integer) obj).intValue(), (CTPositiveFixedPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a1a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewAlpha(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b1a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeAlpha(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c1a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfAlphaArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositivePercentage[] getAlphaModArray() {
        return (CTPositivePercentage[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTPositivePercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPositivePercentage> getAlphaModList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ty9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getAlphaModArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ez9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setAlphaModArray(((Integer) obj).intValue(), (CTPositivePercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pz9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewAlphaMod(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.a0a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeAlphaMod(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.b0a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfAlphaModArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTFixedPercentage[] getAlphaOffArray() {
        return (CTFixedPercentage[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTFixedPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTFixedPercentage> getAlphaOffList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zy9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getAlphaOffArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.az9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setAlphaOffArray(((Integer) obj).intValue(), (CTFixedPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bz9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewAlphaOff(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cz9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeAlphaOff(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dz9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfAlphaOffArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getBlueArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[23], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getBlueList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a2a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getBlueArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b2a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setBlueArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c2a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewBlue(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d2a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeBlue(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e2a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfBlueArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getBlueModArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[25], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getBlueModList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.n0a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getBlueModArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.o0a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setBlueModArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.p0a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewBlueMod(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.q0a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeBlueMod(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.r0a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfBlueModArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getBlueOffArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[24], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getBlueOffList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.m3a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getBlueOffArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.n3a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setBlueOffArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.o3a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewBlueOff(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.p3a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeBlueOff(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.q3a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfBlueOffArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTComplementTransform[] getCompArray() {
        return (CTComplementTransform[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTComplementTransform[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTComplementTransform> getCompList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.z1a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getCompArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k2a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setCompArray(((Integer) obj).intValue(), (CTComplementTransform) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v2a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewComp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.g3a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeComp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.r3a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfCompArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTGammaTransform[] getGammaArray() {
        return (CTGammaTransform[]) getXmlObjectArray(PROPERTY_QNAME[26], new CTGammaTransform[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTGammaTransform> getGammaList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.b3a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getGammaArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.c3a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setGammaArray(((Integer) obj).intValue(), (CTGammaTransform) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.d3a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewGamma(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.e3a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeGamma(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.f3a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfGammaArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTGrayscaleTransform[] getGrayArray() {
        return (CTGrayscaleTransform[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTGrayscaleTransform[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTGrayscaleTransform> getGrayList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uy9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getGrayArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vy9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setGrayArray(((Integer) obj).intValue(), (CTGrayscaleTransform) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wy9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewGray(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xy9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeGray(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yy9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfGrayArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getGreenArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[20], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getGreenList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.oy9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getGreenArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.py9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setGreenArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qy9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewGreen(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ry9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeGreen(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sy9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfGreenArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getGreenModArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[22], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getGreenModList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.i0a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getGreenModArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.j0a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setGreenModArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.k0a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewGreenMod(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l0a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeGreenMod(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m0a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfGreenModArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getGreenOffArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[21], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getGreenOffList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.f2a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getGreenOffArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.g2a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setGreenOffArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.h2a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewGreenOff(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.i2a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeGreenOff(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.j2a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfGreenOffArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedAngle[] getHueArray() {
        return (CTPositiveFixedAngle[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTPositiveFixedAngle[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPositiveFixedAngle> getHueList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.u1a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getHueArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.v1a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setHueArray(((Integer) obj).intValue(), (CTPositiveFixedAngle) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.w1a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewHue(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.x1a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeHue(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.y1a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfHueArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositivePercentage[] getHueModArray() {
        return (CTPositivePercentage[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTPositivePercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPositivePercentage> getHueModList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.l2a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getHueModArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.m2a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setHueModArray(((Integer) obj).intValue(), (CTPositivePercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.n2a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewHueMod(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o2a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeHueMod(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.p2a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfHueModArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTAngle[] getHueOffArray() {
        return (CTAngle[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTAngle[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTAngle> getHueOffList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.iy9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getHueOffArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.h0a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setHueOffArray(((Integer) obj).intValue(), (CTAngle) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.s0a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewHueOff(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d1a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeHueOff(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.o1a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfHueOffArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTInverseTransform[] getInvArray() {
        return (CTInverseTransform[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTInverseTransform[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTInverseGammaTransform[] getInvGammaArray() {
        return (CTInverseGammaTransform[]) getXmlObjectArray(PROPERTY_QNAME[27], new CTInverseGammaTransform[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTInverseGammaTransform> getInvGammaList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kz9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getInvGammaArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lz9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setInvGammaArray(((Integer) obj).intValue(), (CTInverseGammaTransform) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mz9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewInvGamma(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nz9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeInvGamma(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.oz9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfInvGammaArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTInverseTransform> getInvList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qz9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getInvArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rz9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setInvArray(((Integer) obj).intValue(), (CTInverseTransform) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sz9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewInv(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tz9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeInv(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uz9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfInvArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getLumArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getLumList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.c0a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getLumArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.d0a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setLumArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.e0a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewLum(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.f0a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeLum(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.g0a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfLumArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getLumModArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[16], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getLumModList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j1a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getLumModArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k1a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setLumModArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.l1a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewLumMod(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.m1a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeLumMod(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.n1a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfLumModArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getLumOffArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[15], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getLumOffList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jy9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getLumOffArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ky9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setLumOffArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ly9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewLumOff(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.my9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeLumOff(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ny9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfLumOffArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getRedArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[17], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getRedList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t0a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getRedArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u0a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setRedArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v0a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewRed(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w0a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeRed(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x0a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfRedArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getRedModArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[19], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getRedModList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.p1a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getRedModArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.q1a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setRedModArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.r1a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewRedMod(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.s1a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeRedMod(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.t1a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfRedModArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getRedOffArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[18], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getRedOffList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vz9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getRedOffArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wz9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setRedOffArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xz9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewRedOff(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yz9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeRedOff(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zz9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfRedOffArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getSatArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getSatList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.q2a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getSatArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.r2a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setSatArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.s2a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewSat(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.t2a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeSat(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.u2a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfSatArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getSatModArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getSatModList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.w2a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getSatModArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.x2a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setSatModArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.y2a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewSatMod(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.z2a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeSatMod(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.a3a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfSatModArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage[] getSatOffArray() {
        return (CTPercentage[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPercentage> getSatOffList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fz9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getSatOffArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gz9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setSatOffArray(((Integer) obj).intValue(), (CTPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hz9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewSatOff(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.iz9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeSatOff(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jz9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfSatOffArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedPercentage[] getShadeArray() {
        return (CTPositiveFixedPercentage[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTPositiveFixedPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPositiveFixedPercentage> getShadeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.e1a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getShadeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f1a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setShadeArray(((Integer) obj).intValue(), (CTPositiveFixedPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g1a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewShade(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h1a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeShade(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i1a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfShadeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedPercentage[] getTintArray() {
        return (CTPositiveFixedPercentage[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPositiveFixedPercentage[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public List<CTPositiveFixedPercentage> getTintList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.h3a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.getTintArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.i3a
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTSchemeColorImpl.this.setTintArray(((Integer) obj).intValue(), (CTPositiveFixedPercentage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.j3a
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTSchemeColorImpl.this.insertNewTint(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.k3a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTSchemeColorImpl.this.removeTint(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.l3a
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTSchemeColorImpl.this.sizeOfTintArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public STSchemeColorVal.Enum getVal() {
        STSchemeColorVal.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[28]);
            r3 = simpleValue == null ? null : (STSchemeColorVal.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedPercentage insertNewAlpha(int i) {
        CTPositiveFixedPercentage cTPositiveFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveFixedPercentage = (CTPositiveFixedPercentage) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTPositiveFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositivePercentage insertNewAlphaMod(int i) {
        CTPositivePercentage cTPositivePercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositivePercentage = (CTPositivePercentage) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTPositivePercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTFixedPercentage insertNewAlphaOff(int i) {
        CTFixedPercentage cTFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTFixedPercentage = (CTFixedPercentage) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewBlue(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[23], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewBlueMod(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[25], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewBlueOff(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[24], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTComplementTransform insertNewComp(int i) {
        CTComplementTransform cTComplementTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTComplementTransform = (CTComplementTransform) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTComplementTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTGammaTransform insertNewGamma(int i) {
        CTGammaTransform cTGammaTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTGammaTransform = (CTGammaTransform) get_store().insert_element_user(PROPERTY_QNAME[26], i);
        }
        return cTGammaTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTGrayscaleTransform insertNewGray(int i) {
        CTGrayscaleTransform cTGrayscaleTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTGrayscaleTransform = (CTGrayscaleTransform) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTGrayscaleTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewGreen(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[20], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewGreenMod(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[22], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewGreenOff(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[21], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedAngle insertNewHue(int i) {
        CTPositiveFixedAngle cTPositiveFixedAngle;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveFixedAngle = (CTPositiveFixedAngle) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTPositiveFixedAngle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositivePercentage insertNewHueMod(int i) {
        CTPositivePercentage cTPositivePercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositivePercentage = (CTPositivePercentage) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTPositivePercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTAngle insertNewHueOff(int i) {
        CTAngle cTAngle;
        synchronized (monitor()) {
            check_orphaned();
            cTAngle = (CTAngle) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTAngle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTInverseTransform insertNewInv(int i) {
        CTInverseTransform cTInverseTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTInverseTransform = (CTInverseTransform) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTInverseTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTInverseGammaTransform insertNewInvGamma(int i) {
        CTInverseGammaTransform cTInverseGammaTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTInverseGammaTransform = (CTInverseGammaTransform) get_store().insert_element_user(PROPERTY_QNAME[27], i);
        }
        return cTInverseGammaTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewLum(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewLumMod(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewLumOff(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewRed(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[17], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewRedMod(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[19], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewRedOff(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[18], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewSat(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewSatMod(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage insertNewSatOff(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedPercentage insertNewShade(int i) {
        CTPositiveFixedPercentage cTPositiveFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveFixedPercentage = (CTPositiveFixedPercentage) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTPositiveFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedPercentage insertNewTint(int i) {
        CTPositiveFixedPercentage cTPositiveFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveFixedPercentage = (CTPositiveFixedPercentage) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPositiveFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeAlpha(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeAlphaMod(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeAlphaOff(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeBlue(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[23], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeBlueMod(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[25], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeBlueOff(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[24], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeComp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeGamma(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[26], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeGray(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeGreen(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeGreenMod(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeGreenOff(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeHue(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeHueMod(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeHueOff(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeInv(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeInvGamma(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[27], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeLum(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeLumMod(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeLumOff(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeRed(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeRedMod(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeRedOff(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeSat(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeSatMod(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeSatOff(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeShade(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void removeTint(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setAlphaArray(CTPositiveFixedPercentage[] cTPositiveFixedPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPositiveFixedPercentageArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setAlphaModArray(CTPositivePercentage[] cTPositivePercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPositivePercentageArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setAlphaOffArray(CTFixedPercentage[] cTFixedPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTFixedPercentageArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setBlueArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[23]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setBlueModArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[25]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setBlueOffArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[24]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setCompArray(CTComplementTransform[] cTComplementTransformArr) {
        check_orphaned();
        arraySetterHelper(cTComplementTransformArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setGammaArray(CTGammaTransform[] cTGammaTransformArr) {
        check_orphaned();
        arraySetterHelper(cTGammaTransformArr, PROPERTY_QNAME[26]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setGrayArray(CTGrayscaleTransform[] cTGrayscaleTransformArr) {
        check_orphaned();
        arraySetterHelper(cTGrayscaleTransformArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setGreenArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[20]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setGreenModArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[22]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setGreenOffArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[21]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setHueArray(CTPositiveFixedAngle[] cTPositiveFixedAngleArr) {
        check_orphaned();
        arraySetterHelper(cTPositiveFixedAngleArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setHueModArray(CTPositivePercentage[] cTPositivePercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPositivePercentageArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setHueOffArray(CTAngle[] cTAngleArr) {
        check_orphaned();
        arraySetterHelper(cTAngleArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setInvArray(CTInverseTransform[] cTInverseTransformArr) {
        check_orphaned();
        arraySetterHelper(cTInverseTransformArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setInvGammaArray(CTInverseGammaTransform[] cTInverseGammaTransformArr) {
        check_orphaned();
        arraySetterHelper(cTInverseGammaTransformArr, PROPERTY_QNAME[27]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setLumArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setLumModArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[16]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setLumOffArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[15]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setRedArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[17]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setRedModArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[19]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setRedOffArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[18]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setSatArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setSatModArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setSatOffArray(CTPercentage[] cTPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPercentageArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setShadeArray(CTPositiveFixedPercentage[] cTPositiveFixedPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPositiveFixedPercentageArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setTintArray(CTPositiveFixedPercentage[] cTPositiveFixedPercentageArr) {
        check_orphaned();
        arraySetterHelper(cTPositiveFixedPercentageArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setVal(STSchemeColorVal.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[28]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[28]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfAlphaArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfAlphaModArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfAlphaOffArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfBlueArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[23]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfBlueModArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[25]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfBlueOffArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[24]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfCompArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfGammaArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[26]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfGrayArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfGreenArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[20]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfGreenModArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[22]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfGreenOffArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[21]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfHueArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfHueModArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfHueOffArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfInvArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfInvGammaArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[27]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfLumArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfLumModArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfLumOffArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfRedArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[17]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfRedModArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[19]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfRedOffArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[18]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfSatArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfSatModArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfSatOffArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfShadeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public int sizeOfTintArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public STSchemeColorVal xgetVal() {
        STSchemeColorVal sTSchemeColorVal;
        synchronized (monitor()) {
            check_orphaned();
            sTSchemeColorVal = (STSchemeColorVal) get_store().find_attribute_user(PROPERTY_QNAME[28]);
        }
        return sTSchemeColorVal;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void xsetVal(STSchemeColorVal sTSchemeColorVal) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STSchemeColorVal sTSchemeColorVal2 = (STSchemeColorVal) typeStore.find_attribute_user(qNameArr[28]);
            if (sTSchemeColorVal2 == null) {
                sTSchemeColorVal2 = (STSchemeColorVal) get_store().add_attribute_user(qNameArr[28]);
            }
            sTSchemeColorVal2.set(sTSchemeColorVal);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedPercentage getAlphaArray(int i) {
        CTPositiveFixedPercentage cTPositiveFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveFixedPercentage = (CTPositiveFixedPercentage) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTPositiveFixedPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPositiveFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositivePercentage getAlphaModArray(int i) {
        CTPositivePercentage cTPositivePercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositivePercentage = (CTPositivePercentage) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTPositivePercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPositivePercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTFixedPercentage getAlphaOffArray(int i) {
        CTFixedPercentage cTFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTFixedPercentage = (CTFixedPercentage) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTFixedPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getBlueArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[23], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getBlueModArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[25], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getBlueOffArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[24], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTComplementTransform getCompArray(int i) {
        CTComplementTransform cTComplementTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTComplementTransform = (CTComplementTransform) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTComplementTransform == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTComplementTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTGammaTransform getGammaArray(int i) {
        CTGammaTransform cTGammaTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTGammaTransform = (CTGammaTransform) get_store().find_element_user(PROPERTY_QNAME[26], i);
            if (cTGammaTransform == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGammaTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTGrayscaleTransform getGrayArray(int i) {
        CTGrayscaleTransform cTGrayscaleTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTGrayscaleTransform = (CTGrayscaleTransform) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTGrayscaleTransform == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGrayscaleTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getGreenArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[20], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getGreenModArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[22], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getGreenOffArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[21], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedAngle getHueArray(int i) {
        CTPositiveFixedAngle cTPositiveFixedAngle;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveFixedAngle = (CTPositiveFixedAngle) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTPositiveFixedAngle == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPositiveFixedAngle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositivePercentage getHueModArray(int i) {
        CTPositivePercentage cTPositivePercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositivePercentage = (CTPositivePercentage) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTPositivePercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPositivePercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTAngle getHueOffArray(int i) {
        CTAngle cTAngle;
        synchronized (monitor()) {
            check_orphaned();
            cTAngle = (CTAngle) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTAngle == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAngle;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTInverseTransform getInvArray(int i) {
        CTInverseTransform cTInverseTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTInverseTransform = (CTInverseTransform) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTInverseTransform == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTInverseTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTInverseGammaTransform getInvGammaArray(int i) {
        CTInverseGammaTransform cTInverseGammaTransform;
        synchronized (monitor()) {
            check_orphaned();
            cTInverseGammaTransform = (CTInverseGammaTransform) get_store().find_element_user(PROPERTY_QNAME[27], i);
            if (cTInverseGammaTransform == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTInverseGammaTransform;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getLumArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getLumModArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getLumOffArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getRedArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[17], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getRedModArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[19], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getRedOffArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[18], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getSatArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getSatModArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPercentage getSatOffArray(int i) {
        CTPercentage cTPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPercentage = (CTPercentage) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (cTPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedPercentage getShadeArray(int i) {
        CTPositiveFixedPercentage cTPositiveFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveFixedPercentage = (CTPositiveFixedPercentage) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTPositiveFixedPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPositiveFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public CTPositiveFixedPercentage getTintArray(int i) {
        CTPositiveFixedPercentage cTPositiveFixedPercentage;
        synchronized (monitor()) {
            check_orphaned();
            cTPositiveFixedPercentage = (CTPositiveFixedPercentage) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPositiveFixedPercentage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPositiveFixedPercentage;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setAlphaArray(int i, CTPositiveFixedPercentage cTPositiveFixedPercentage) {
        generatedSetterHelperImpl(cTPositiveFixedPercentage, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setAlphaModArray(int i, CTPositivePercentage cTPositivePercentage) {
        generatedSetterHelperImpl(cTPositivePercentage, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setAlphaOffArray(int i, CTFixedPercentage cTFixedPercentage) {
        generatedSetterHelperImpl(cTFixedPercentage, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setBlueArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[23], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setBlueModArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[25], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setBlueOffArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[24], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setCompArray(int i, CTComplementTransform cTComplementTransform) {
        generatedSetterHelperImpl(cTComplementTransform, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setGammaArray(int i, CTGammaTransform cTGammaTransform) {
        generatedSetterHelperImpl(cTGammaTransform, PROPERTY_QNAME[26], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setGrayArray(int i, CTGrayscaleTransform cTGrayscaleTransform) {
        generatedSetterHelperImpl(cTGrayscaleTransform, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setGreenArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[20], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setGreenModArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[22], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setGreenOffArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[21], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setHueArray(int i, CTPositiveFixedAngle cTPositiveFixedAngle) {
        generatedSetterHelperImpl(cTPositiveFixedAngle, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setHueModArray(int i, CTPositivePercentage cTPositivePercentage) {
        generatedSetterHelperImpl(cTPositivePercentage, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setHueOffArray(int i, CTAngle cTAngle) {
        generatedSetterHelperImpl(cTAngle, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setInvArray(int i, CTInverseTransform cTInverseTransform) {
        generatedSetterHelperImpl(cTInverseTransform, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setInvGammaArray(int i, CTInverseGammaTransform cTInverseGammaTransform) {
        generatedSetterHelperImpl(cTInverseGammaTransform, PROPERTY_QNAME[27], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setLumArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setLumModArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[16], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setLumOffArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[15], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setRedArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[17], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setRedModArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[19], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setRedOffArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[18], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setSatArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setSatModArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[13], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setSatOffArray(int i, CTPercentage cTPercentage) {
        generatedSetterHelperImpl(cTPercentage, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setShadeArray(int i, CTPositiveFixedPercentage cTPositiveFixedPercentage) {
        generatedSetterHelperImpl(cTPositiveFixedPercentage, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor
    public void setTintArray(int i, CTPositiveFixedPercentage cTPositiveFixedPercentage) {
        generatedSetterHelperImpl(cTPositiveFixedPercentage, PROPERTY_QNAME[0], i, (short) 2);
    }
}
