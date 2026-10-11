package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaBiLevelEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaCeilingEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaFloorEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaInverseEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaModulateEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaModulateFixedEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaReplaceEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBiLevelEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlip;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlurEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorChangeEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorReplaceEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFillOverlayEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGrayscaleEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTintEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.STBlipCompression;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTBlipImpl;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;

/* loaded from: classes14.dex */
public class CTBlipImpl extends XmlComplexContentImpl implements CTBlip {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "alphaBiLevel"), new QName(XSSFRelation.NS_DRAWINGML, "alphaCeiling"), new QName(XSSFRelation.NS_DRAWINGML, "alphaFloor"), new QName(XSSFRelation.NS_DRAWINGML, "alphaInv"), new QName(XSSFRelation.NS_DRAWINGML, "alphaMod"), new QName(XSSFRelation.NS_DRAWINGML, "alphaModFix"), new QName(XSSFRelation.NS_DRAWINGML, "alphaRepl"), new QName(XSSFRelation.NS_DRAWINGML, "biLevel"), new QName(XSSFRelation.NS_DRAWINGML, "blur"), new QName(XSSFRelation.NS_DRAWINGML, "clrChange"), new QName(XSSFRelation.NS_DRAWINGML, "clrRepl"), new QName(XSSFRelation.NS_DRAWINGML, "duotone"), new QName(XSSFRelation.NS_DRAWINGML, "fillOverlay"), new QName(XSSFRelation.NS_DRAWINGML, "grayscl"), new QName(XSSFRelation.NS_DRAWINGML, "hsl"), new QName(XSSFRelation.NS_DRAWINGML, "lum"), new QName(XSSFRelation.NS_DRAWINGML, "tint"), new QName(XSSFRelation.NS_DRAWINGML, "extLst"), new QName(PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, "embed"), new QName(PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, "link"), new QName("", "cstate")};
    private static final long serialVersionUID = 1;

    public CTBlipImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaBiLevelEffect addNewAlphaBiLevel() {
        CTAlphaBiLevelEffect cTAlphaBiLevelEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaBiLevelEffect = (CTAlphaBiLevelEffect) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAlphaBiLevelEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaCeilingEffect addNewAlphaCeiling() {
        CTAlphaCeilingEffect cTAlphaCeilingEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaCeilingEffect = (CTAlphaCeilingEffect) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTAlphaCeilingEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaFloorEffect addNewAlphaFloor() {
        CTAlphaFloorEffect cTAlphaFloorEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaFloorEffect = (CTAlphaFloorEffect) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTAlphaFloorEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaInverseEffect addNewAlphaInv() {
        CTAlphaInverseEffect cTAlphaInverseEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaInverseEffect = (CTAlphaInverseEffect) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTAlphaInverseEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaModulateEffect addNewAlphaMod() {
        CTAlphaModulateEffect cTAlphaModulateEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaModulateEffect = (CTAlphaModulateEffect) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTAlphaModulateEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaModulateFixedEffect addNewAlphaModFix() {
        CTAlphaModulateFixedEffect cTAlphaModulateFixedEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaModulateFixedEffect = (CTAlphaModulateFixedEffect) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTAlphaModulateFixedEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaReplaceEffect addNewAlphaRepl() {
        CTAlphaReplaceEffect cTAlphaReplaceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaReplaceEffect = (CTAlphaReplaceEffect) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTAlphaReplaceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTBiLevelEffect addNewBiLevel() {
        CTBiLevelEffect cTBiLevelEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBiLevelEffect = (CTBiLevelEffect) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTBiLevelEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTBlurEffect addNewBlur() {
        CTBlurEffect cTBlurEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBlurEffect = (CTBlurEffect) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTBlurEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTColorChangeEffect addNewClrChange() {
        CTColorChangeEffect cTColorChangeEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTColorChangeEffect = (CTColorChangeEffect) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTColorChangeEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTColorReplaceEffect addNewClrRepl() {
        CTColorReplaceEffect cTColorReplaceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTColorReplaceEffect = (CTColorReplaceEffect) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTColorReplaceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTDuotoneEffect addNewDuotone() {
        CTDuotoneEffect cTDuotoneEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTDuotoneEffect = (CTDuotoneEffect) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTDuotoneEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTFillOverlayEffect addNewFillOverlay() {
        CTFillOverlayEffect cTFillOverlayEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTFillOverlayEffect = (CTFillOverlayEffect) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTFillOverlayEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTGrayscaleEffect addNewGrayscl() {
        CTGrayscaleEffect cTGrayscaleEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTGrayscaleEffect = (CTGrayscaleEffect) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTGrayscaleEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTHSLEffect addNewHsl() {
        CTHSLEffect cTHSLEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTHSLEffect = (CTHSLEffect) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTHSLEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTLuminanceEffect addNewLum() {
        CTLuminanceEffect cTLuminanceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTLuminanceEffect = (CTLuminanceEffect) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTLuminanceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTTintEffect addNewTint() {
        CTTintEffect cTTintEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTTintEffect = (CTTintEffect) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTTintEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaBiLevelEffect[] getAlphaBiLevelArray() {
        return (CTAlphaBiLevelEffect[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTAlphaBiLevelEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTAlphaBiLevelEffect> getAlphaBiLevelList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qu0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getAlphaBiLevelArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ru0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setAlphaBiLevelArray(((Integer) obj).intValue(), (CTAlphaBiLevelEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.su0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewAlphaBiLevel(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tu0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeAlphaBiLevel(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uu0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfAlphaBiLevelArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaCeilingEffect[] getAlphaCeilingArray() {
        return (CTAlphaCeilingEffect[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTAlphaCeilingEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTAlphaCeilingEffect> getAlphaCeilingList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mv0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getAlphaCeilingArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nv0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setAlphaCeilingArray(((Integer) obj).intValue(), (CTAlphaCeilingEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ov0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewAlphaCeiling(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pv0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeAlphaCeiling(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qv0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfAlphaCeilingArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaFloorEffect[] getAlphaFloorArray() {
        return (CTAlphaFloorEffect[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTAlphaFloorEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTAlphaFloorEffect> getAlphaFloorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hv0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getAlphaFloorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.iv0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setAlphaFloorArray(((Integer) obj).intValue(), (CTAlphaFloorEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jv0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewAlphaFloor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kv0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeAlphaFloor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lv0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfAlphaFloorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaInverseEffect[] getAlphaInvArray() {
        return (CTAlphaInverseEffect[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTAlphaInverseEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTAlphaInverseEffect> getAlphaInvList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.au0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getAlphaInvArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bu0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setAlphaInvArray(((Integer) obj).intValue(), (CTAlphaInverseEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cu0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewAlphaInv(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.du0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeAlphaInv(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.eu0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfAlphaInvArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaModulateEffect[] getAlphaModArray() {
        return (CTAlphaModulateEffect[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTAlphaModulateEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaModulateFixedEffect[] getAlphaModFixArray() {
        return (CTAlphaModulateFixedEffect[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTAlphaModulateFixedEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTAlphaModulateFixedEffect> getAlphaModFixList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xv0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getAlphaModFixArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yv0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setAlphaModFixArray(((Integer) obj).intValue(), (CTAlphaModulateFixedEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zv0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewAlphaModFix(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.aw0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeAlphaModFix(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bw0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfAlphaModFixArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTAlphaModulateEffect> getAlphaModList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lu0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getAlphaModArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mu0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setAlphaModArray(((Integer) obj).intValue(), (CTAlphaModulateEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nu0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewAlphaMod(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ou0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeAlphaMod(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pu0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfAlphaModArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaReplaceEffect[] getAlphaReplArray() {
        return (CTAlphaReplaceEffect[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTAlphaReplaceEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTAlphaReplaceEffect> getAlphaReplList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ut0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getAlphaReplArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vt0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setAlphaReplArray(((Integer) obj).intValue(), (CTAlphaReplaceEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wt0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewAlphaRepl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xt0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeAlphaRepl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yt0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfAlphaReplArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTBiLevelEffect[] getBiLevelArray() {
        return (CTBiLevelEffect[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTBiLevelEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTBiLevelEffect> getBiLevelList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gv0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getBiLevelArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rv0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setBiLevelArray(((Integer) obj).intValue(), (CTBiLevelEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cw0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewBiLevel(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.iw0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeBiLevel(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jw0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfBiLevelArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTBlurEffect[] getBlurArray() {
        return (CTBlurEffect[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTBlurEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTBlurEffect> getBlurList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bv0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getBlurArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cv0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setBlurArray(((Integer) obj).intValue(), (CTBlurEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dv0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewBlur(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ev0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeBlur(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fv0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfBlurArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTColorChangeEffect[] getClrChangeArray() {
        return (CTColorChangeEffect[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTColorChangeEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTColorChangeEffect> getClrChangeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fu0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getClrChangeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gu0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setClrChangeArray(((Integer) obj).intValue(), (CTColorChangeEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hu0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewClrChange(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.iu0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeClrChange(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ju0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfClrChangeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTColorReplaceEffect[] getClrReplArray() {
        return (CTColorReplaceEffect[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTColorReplaceEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTColorReplaceEffect> getClrReplList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sv0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getClrReplArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tv0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setClrReplArray(((Integer) obj).intValue(), (CTColorReplaceEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uv0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewClrRepl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vv0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeClrRepl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wv0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfClrReplArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public STBlipCompression.Enum getCstate() {
        STBlipCompression.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[20]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[20]);
            }
            r5 = simpleValue == null ? null : (STBlipCompression.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTDuotoneEffect[] getDuotoneArray() {
        return (CTDuotoneEffect[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTDuotoneEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTDuotoneEffect> getDuotoneList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dw0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getDuotoneArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ew0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setDuotoneArray(((Integer) obj).intValue(), (CTDuotoneEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fw0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewDuotone(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gw0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeDuotone(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hw0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfDuotoneArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public String getEmbed() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[18]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[18]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[17], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTFillOverlayEffect[] getFillOverlayArray() {
        return (CTFillOverlayEffect[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTFillOverlayEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTFillOverlayEffect> getFillOverlayList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dt0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getFillOverlayArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ot0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setFillOverlayArray(((Integer) obj).intValue(), (CTFillOverlayEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zt0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewFillOverlay(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ku0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeFillOverlay(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vu0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfFillOverlayArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTGrayscaleEffect[] getGraysclArray() {
        return (CTGrayscaleEffect[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTGrayscaleEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTGrayscaleEffect> getGraysclList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pt0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getGraysclArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qt0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setGraysclArray(((Integer) obj).intValue(), (CTGrayscaleEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rt0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewGrayscl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.st0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeGrayscl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tt0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfGraysclArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTHSLEffect[] getHslArray() {
        return (CTHSLEffect[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTHSLEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTHSLEffect> getHslList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.et0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getHslArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ft0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setHslArray(((Integer) obj).intValue(), (CTHSLEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gt0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewHsl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ht0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeHsl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.it0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfHslArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public String getLink() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[19]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[19]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTLuminanceEffect[] getLumArray() {
        return (CTLuminanceEffect[]) getXmlObjectArray(PROPERTY_QNAME[15], new CTLuminanceEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTLuminanceEffect> getLumList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wu0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getLumArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xu0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setLumArray(((Integer) obj).intValue(), (CTLuminanceEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yu0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewLum(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zu0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeLum(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.av0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfLumArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTTintEffect[] getTintArray() {
        return (CTTintEffect[]) getXmlObjectArray(PROPERTY_QNAME[16], new CTTintEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public List<CTTintEffect> getTintList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jt0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.getTintArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kt0
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTBlipImpl.this.setTintArray(((Integer) obj).intValue(), (CTTintEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lt0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTBlipImpl.this.insertNewTint(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mt0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTBlipImpl.this.removeTint(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nt0
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTBlipImpl.this.sizeOfTintArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaBiLevelEffect insertNewAlphaBiLevel(int i) {
        CTAlphaBiLevelEffect cTAlphaBiLevelEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaBiLevelEffect = (CTAlphaBiLevelEffect) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTAlphaBiLevelEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaCeilingEffect insertNewAlphaCeiling(int i) {
        CTAlphaCeilingEffect cTAlphaCeilingEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaCeilingEffect = (CTAlphaCeilingEffect) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTAlphaCeilingEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaFloorEffect insertNewAlphaFloor(int i) {
        CTAlphaFloorEffect cTAlphaFloorEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaFloorEffect = (CTAlphaFloorEffect) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTAlphaFloorEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaInverseEffect insertNewAlphaInv(int i) {
        CTAlphaInverseEffect cTAlphaInverseEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaInverseEffect = (CTAlphaInverseEffect) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTAlphaInverseEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaModulateEffect insertNewAlphaMod(int i) {
        CTAlphaModulateEffect cTAlphaModulateEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaModulateEffect = (CTAlphaModulateEffect) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTAlphaModulateEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaModulateFixedEffect insertNewAlphaModFix(int i) {
        CTAlphaModulateFixedEffect cTAlphaModulateFixedEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaModulateFixedEffect = (CTAlphaModulateFixedEffect) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTAlphaModulateFixedEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaReplaceEffect insertNewAlphaRepl(int i) {
        CTAlphaReplaceEffect cTAlphaReplaceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaReplaceEffect = (CTAlphaReplaceEffect) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTAlphaReplaceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTBiLevelEffect insertNewBiLevel(int i) {
        CTBiLevelEffect cTBiLevelEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBiLevelEffect = (CTBiLevelEffect) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTBiLevelEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTBlurEffect insertNewBlur(int i) {
        CTBlurEffect cTBlurEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBlurEffect = (CTBlurEffect) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTBlurEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTColorChangeEffect insertNewClrChange(int i) {
        CTColorChangeEffect cTColorChangeEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTColorChangeEffect = (CTColorChangeEffect) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTColorChangeEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTColorReplaceEffect insertNewClrRepl(int i) {
        CTColorReplaceEffect cTColorReplaceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTColorReplaceEffect = (CTColorReplaceEffect) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTColorReplaceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTDuotoneEffect insertNewDuotone(int i) {
        CTDuotoneEffect cTDuotoneEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTDuotoneEffect = (CTDuotoneEffect) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTDuotoneEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTFillOverlayEffect insertNewFillOverlay(int i) {
        CTFillOverlayEffect cTFillOverlayEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTFillOverlayEffect = (CTFillOverlayEffect) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTFillOverlayEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTGrayscaleEffect insertNewGrayscl(int i) {
        CTGrayscaleEffect cTGrayscaleEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTGrayscaleEffect = (CTGrayscaleEffect) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTGrayscaleEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTHSLEffect insertNewHsl(int i) {
        CTHSLEffect cTHSLEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTHSLEffect = (CTHSLEffect) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTHSLEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTLuminanceEffect insertNewLum(int i) {
        CTLuminanceEffect cTLuminanceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTLuminanceEffect = (CTLuminanceEffect) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return cTLuminanceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTTintEffect insertNewTint(int i) {
        CTTintEffect cTTintEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTTintEffect = (CTTintEffect) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return cTTintEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public boolean isSetCstate() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[20]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public boolean isSetEmbed() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[18]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[17]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public boolean isSetLink() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[19]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeAlphaBiLevel(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeAlphaCeiling(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeAlphaFloor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeAlphaInv(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeAlphaMod(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeAlphaModFix(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeAlphaRepl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeBiLevel(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeBlur(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeClrChange(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeClrRepl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeDuotone(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeFillOverlay(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeGrayscl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeHsl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeLum(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void removeTint(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaBiLevelArray(CTAlphaBiLevelEffect[] cTAlphaBiLevelEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaBiLevelEffectArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaCeilingArray(CTAlphaCeilingEffect[] cTAlphaCeilingEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaCeilingEffectArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaFloorArray(CTAlphaFloorEffect[] cTAlphaFloorEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaFloorEffectArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaInvArray(CTAlphaInverseEffect[] cTAlphaInverseEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaInverseEffectArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaModArray(CTAlphaModulateEffect[] cTAlphaModulateEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaModulateEffectArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaModFixArray(CTAlphaModulateFixedEffect[] cTAlphaModulateFixedEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaModulateFixedEffectArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaReplArray(CTAlphaReplaceEffect[] cTAlphaReplaceEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaReplaceEffectArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setBiLevelArray(CTBiLevelEffect[] cTBiLevelEffectArr) {
        check_orphaned();
        arraySetterHelper(cTBiLevelEffectArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setBlurArray(CTBlurEffect[] cTBlurEffectArr) {
        check_orphaned();
        arraySetterHelper(cTBlurEffectArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setClrChangeArray(CTColorChangeEffect[] cTColorChangeEffectArr) {
        check_orphaned();
        arraySetterHelper(cTColorChangeEffectArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setClrReplArray(CTColorReplaceEffect[] cTColorReplaceEffectArr) {
        check_orphaned();
        arraySetterHelper(cTColorReplaceEffectArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setCstate(STBlipCompression.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[20]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[20]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setDuotoneArray(CTDuotoneEffect[] cTDuotoneEffectArr) {
        check_orphaned();
        arraySetterHelper(cTDuotoneEffectArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setEmbed(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[18]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[18]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[17], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setFillOverlayArray(CTFillOverlayEffect[] cTFillOverlayEffectArr) {
        check_orphaned();
        arraySetterHelper(cTFillOverlayEffectArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setGraysclArray(CTGrayscaleEffect[] cTGrayscaleEffectArr) {
        check_orphaned();
        arraySetterHelper(cTGrayscaleEffectArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setHslArray(CTHSLEffect[] cTHSLEffectArr) {
        check_orphaned();
        arraySetterHelper(cTHSLEffectArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setLink(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[19]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[19]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setLumArray(CTLuminanceEffect[] cTLuminanceEffectArr) {
        check_orphaned();
        arraySetterHelper(cTLuminanceEffectArr, PROPERTY_QNAME[15]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setTintArray(CTTintEffect[] cTTintEffectArr) {
        check_orphaned();
        arraySetterHelper(cTTintEffectArr, PROPERTY_QNAME[16]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfAlphaBiLevelArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfAlphaCeilingArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfAlphaFloorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfAlphaInvArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfAlphaModArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfAlphaModFixArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfAlphaReplArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfBiLevelArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfBlurArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfClrChangeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfClrReplArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfDuotoneArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfFillOverlayArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfGraysclArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfHslArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfLumArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public int sizeOfTintArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void unsetCstate() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[20]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void unsetEmbed() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[18]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void unsetLink() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[19]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public STBlipCompression xgetCstate() {
        STBlipCompression sTBlipCompression;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTBlipCompression = (STBlipCompression) typeStore.find_attribute_user(qNameArr[20]);
            if (sTBlipCompression == null) {
                sTBlipCompression = (STBlipCompression) get_default_attribute_value(qNameArr[20]);
            }
        }
        return sTBlipCompression;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public STRelationshipId xgetEmbed() {
        STRelationshipId sTRelationshipId;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTRelationshipId = (STRelationshipId) typeStore.find_attribute_user(qNameArr[18]);
            if (sTRelationshipId == null) {
                sTRelationshipId = (STRelationshipId) get_default_attribute_value(qNameArr[18]);
            }
        }
        return sTRelationshipId;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public STRelationshipId xgetLink() {
        STRelationshipId sTRelationshipId;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTRelationshipId = (STRelationshipId) typeStore.find_attribute_user(qNameArr[19]);
            if (sTRelationshipId == null) {
                sTRelationshipId = (STRelationshipId) get_default_attribute_value(qNameArr[19]);
            }
        }
        return sTRelationshipId;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void xsetCstate(STBlipCompression sTBlipCompression) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBlipCompression sTBlipCompression2 = (STBlipCompression) typeStore.find_attribute_user(qNameArr[20]);
            if (sTBlipCompression2 == null) {
                sTBlipCompression2 = (STBlipCompression) get_store().add_attribute_user(qNameArr[20]);
            }
            sTBlipCompression2.set(sTBlipCompression);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void xsetEmbed(STRelationshipId sTRelationshipId) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRelationshipId sTRelationshipId2 = (STRelationshipId) typeStore.find_attribute_user(qNameArr[18]);
            if (sTRelationshipId2 == null) {
                sTRelationshipId2 = (STRelationshipId) get_store().add_attribute_user(qNameArr[18]);
            }
            sTRelationshipId2.set(sTRelationshipId);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void xsetLink(STRelationshipId sTRelationshipId) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRelationshipId sTRelationshipId2 = (STRelationshipId) typeStore.find_attribute_user(qNameArr[19]);
            if (sTRelationshipId2 == null) {
                sTRelationshipId2 = (STRelationshipId) get_store().add_attribute_user(qNameArr[19]);
            }
            sTRelationshipId2.set(sTRelationshipId);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaBiLevelEffect getAlphaBiLevelArray(int i) {
        CTAlphaBiLevelEffect cTAlphaBiLevelEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaBiLevelEffect = (CTAlphaBiLevelEffect) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTAlphaBiLevelEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaBiLevelEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaCeilingEffect getAlphaCeilingArray(int i) {
        CTAlphaCeilingEffect cTAlphaCeilingEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaCeilingEffect = (CTAlphaCeilingEffect) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTAlphaCeilingEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaCeilingEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaFloorEffect getAlphaFloorArray(int i) {
        CTAlphaFloorEffect cTAlphaFloorEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaFloorEffect = (CTAlphaFloorEffect) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTAlphaFloorEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaFloorEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaInverseEffect getAlphaInvArray(int i) {
        CTAlphaInverseEffect cTAlphaInverseEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaInverseEffect = (CTAlphaInverseEffect) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTAlphaInverseEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaInverseEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaModulateEffect getAlphaModArray(int i) {
        CTAlphaModulateEffect cTAlphaModulateEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaModulateEffect = (CTAlphaModulateEffect) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTAlphaModulateEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaModulateEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaModulateFixedEffect getAlphaModFixArray(int i) {
        CTAlphaModulateFixedEffect cTAlphaModulateFixedEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaModulateFixedEffect = (CTAlphaModulateFixedEffect) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTAlphaModulateFixedEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaModulateFixedEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTAlphaReplaceEffect getAlphaReplArray(int i) {
        CTAlphaReplaceEffect cTAlphaReplaceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaReplaceEffect = (CTAlphaReplaceEffect) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTAlphaReplaceEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaReplaceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTBiLevelEffect getBiLevelArray(int i) {
        CTBiLevelEffect cTBiLevelEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBiLevelEffect = (CTBiLevelEffect) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTBiLevelEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBiLevelEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTBlurEffect getBlurArray(int i) {
        CTBlurEffect cTBlurEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBlurEffect = (CTBlurEffect) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTBlurEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBlurEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTColorChangeEffect getClrChangeArray(int i) {
        CTColorChangeEffect cTColorChangeEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTColorChangeEffect = (CTColorChangeEffect) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTColorChangeEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTColorChangeEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTColorReplaceEffect getClrReplArray(int i) {
        CTColorReplaceEffect cTColorReplaceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTColorReplaceEffect = (CTColorReplaceEffect) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTColorReplaceEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTColorReplaceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTDuotoneEffect getDuotoneArray(int i) {
        CTDuotoneEffect cTDuotoneEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTDuotoneEffect = (CTDuotoneEffect) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (cTDuotoneEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDuotoneEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTFillOverlayEffect getFillOverlayArray(int i) {
        CTFillOverlayEffect cTFillOverlayEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTFillOverlayEffect = (CTFillOverlayEffect) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (cTFillOverlayEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFillOverlayEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTGrayscaleEffect getGraysclArray(int i) {
        CTGrayscaleEffect cTGrayscaleEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTGrayscaleEffect = (CTGrayscaleEffect) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (cTGrayscaleEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGrayscaleEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTHSLEffect getHslArray(int i) {
        CTHSLEffect cTHSLEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTHSLEffect = (CTHSLEffect) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (cTHSLEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTHSLEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTLuminanceEffect getLumArray(int i) {
        CTLuminanceEffect cTLuminanceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTLuminanceEffect = (CTLuminanceEffect) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (cTLuminanceEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLuminanceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public CTTintEffect getTintArray(int i) {
        CTTintEffect cTTintEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTTintEffect = (CTTintEffect) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (cTTintEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTintEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaBiLevelArray(int i, CTAlphaBiLevelEffect cTAlphaBiLevelEffect) {
        generatedSetterHelperImpl(cTAlphaBiLevelEffect, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaCeilingArray(int i, CTAlphaCeilingEffect cTAlphaCeilingEffect) {
        generatedSetterHelperImpl(cTAlphaCeilingEffect, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaFloorArray(int i, CTAlphaFloorEffect cTAlphaFloorEffect) {
        generatedSetterHelperImpl(cTAlphaFloorEffect, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaInvArray(int i, CTAlphaInverseEffect cTAlphaInverseEffect) {
        generatedSetterHelperImpl(cTAlphaInverseEffect, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaModArray(int i, CTAlphaModulateEffect cTAlphaModulateEffect) {
        generatedSetterHelperImpl(cTAlphaModulateEffect, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaModFixArray(int i, CTAlphaModulateFixedEffect cTAlphaModulateFixedEffect) {
        generatedSetterHelperImpl(cTAlphaModulateFixedEffect, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setAlphaReplArray(int i, CTAlphaReplaceEffect cTAlphaReplaceEffect) {
        generatedSetterHelperImpl(cTAlphaReplaceEffect, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setBiLevelArray(int i, CTBiLevelEffect cTBiLevelEffect) {
        generatedSetterHelperImpl(cTBiLevelEffect, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setBlurArray(int i, CTBlurEffect cTBlurEffect) {
        generatedSetterHelperImpl(cTBlurEffect, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setClrChangeArray(int i, CTColorChangeEffect cTColorChangeEffect) {
        generatedSetterHelperImpl(cTColorChangeEffect, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setClrReplArray(int i, CTColorReplaceEffect cTColorReplaceEffect) {
        generatedSetterHelperImpl(cTColorReplaceEffect, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setDuotoneArray(int i, CTDuotoneEffect cTDuotoneEffect) {
        generatedSetterHelperImpl(cTDuotoneEffect, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setFillOverlayArray(int i, CTFillOverlayEffect cTFillOverlayEffect) {
        generatedSetterHelperImpl(cTFillOverlayEffect, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setGraysclArray(int i, CTGrayscaleEffect cTGrayscaleEffect) {
        generatedSetterHelperImpl(cTGrayscaleEffect, PROPERTY_QNAME[13], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setHslArray(int i, CTHSLEffect cTHSLEffect) {
        generatedSetterHelperImpl(cTHSLEffect, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setLumArray(int i, CTLuminanceEffect cTLuminanceEffect) {
        generatedSetterHelperImpl(cTLuminanceEffect, PROPERTY_QNAME[15], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlip
    public void setTintArray(int i, CTTintEffect cTTintEffect) {
        generatedSetterHelperImpl(cTTintEffect, PROPERTY_QNAME[16], i, (short) 2);
    }
}
