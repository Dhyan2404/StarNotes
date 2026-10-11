package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaBiLevelEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaCeilingEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaFloorEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaInverseEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaModulateEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaModulateFixedEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaOutsetEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaReplaceEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBiLevelEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlendEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlurEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorChangeEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTColorReplaceEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTDuotoneEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEffectReference;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFillEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFillOverlayEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGlowEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGrayscaleEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTHSLEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTInnerShadowEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTLuminanceEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOuterShadowEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetShadowEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTReflectionEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTRelativeOffsetEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSoftEdgesEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTintEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransformEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.STEffectContainerType;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTEffectContainerImpl;

/* loaded from: classes14.dex */
public class CTEffectContainerImpl extends XmlComplexContentImpl implements CTEffectContainer {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "cont"), new QName(XSSFRelation.NS_DRAWINGML, "effect"), new QName(XSSFRelation.NS_DRAWINGML, "alphaBiLevel"), new QName(XSSFRelation.NS_DRAWINGML, "alphaCeiling"), new QName(XSSFRelation.NS_DRAWINGML, "alphaFloor"), new QName(XSSFRelation.NS_DRAWINGML, "alphaInv"), new QName(XSSFRelation.NS_DRAWINGML, "alphaMod"), new QName(XSSFRelation.NS_DRAWINGML, "alphaModFix"), new QName(XSSFRelation.NS_DRAWINGML, "alphaOutset"), new QName(XSSFRelation.NS_DRAWINGML, "alphaRepl"), new QName(XSSFRelation.NS_DRAWINGML, "biLevel"), new QName(XSSFRelation.NS_DRAWINGML, "blend"), new QName(XSSFRelation.NS_DRAWINGML, "blur"), new QName(XSSFRelation.NS_DRAWINGML, "clrChange"), new QName(XSSFRelation.NS_DRAWINGML, "clrRepl"), new QName(XSSFRelation.NS_DRAWINGML, "duotone"), new QName(XSSFRelation.NS_DRAWINGML, "fill"), new QName(XSSFRelation.NS_DRAWINGML, "fillOverlay"), new QName(XSSFRelation.NS_DRAWINGML, "glow"), new QName(XSSFRelation.NS_DRAWINGML, "grayscl"), new QName(XSSFRelation.NS_DRAWINGML, "hsl"), new QName(XSSFRelation.NS_DRAWINGML, "innerShdw"), new QName(XSSFRelation.NS_DRAWINGML, "lum"), new QName(XSSFRelation.NS_DRAWINGML, "outerShdw"), new QName(XSSFRelation.NS_DRAWINGML, "prstShdw"), new QName(XSSFRelation.NS_DRAWINGML, "reflection"), new QName(XSSFRelation.NS_DRAWINGML, "relOff"), new QName(XSSFRelation.NS_DRAWINGML, "softEdge"), new QName(XSSFRelation.NS_DRAWINGML, "tint"), new QName(XSSFRelation.NS_DRAWINGML, "xfrm"), new QName("", "type"), new QName("", "name")};
    private static final long serialVersionUID = 1;

    public CTEffectContainerImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaBiLevelEffect addNewAlphaBiLevel() {
        CTAlphaBiLevelEffect cTAlphaBiLevelEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaBiLevelEffect = (CTAlphaBiLevelEffect) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTAlphaBiLevelEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaCeilingEffect addNewAlphaCeiling() {
        CTAlphaCeilingEffect cTAlphaCeilingEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaCeilingEffect = (CTAlphaCeilingEffect) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTAlphaCeilingEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaFloorEffect addNewAlphaFloor() {
        CTAlphaFloorEffect cTAlphaFloorEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaFloorEffect = (CTAlphaFloorEffect) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTAlphaFloorEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaInverseEffect addNewAlphaInv() {
        CTAlphaInverseEffect cTAlphaInverseEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaInverseEffect = (CTAlphaInverseEffect) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTAlphaInverseEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaModulateEffect addNewAlphaMod() {
        CTAlphaModulateEffect cTAlphaModulateEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaModulateEffect = (CTAlphaModulateEffect) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTAlphaModulateEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaModulateFixedEffect addNewAlphaModFix() {
        CTAlphaModulateFixedEffect cTAlphaModulateFixedEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaModulateFixedEffect = (CTAlphaModulateFixedEffect) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTAlphaModulateFixedEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaOutsetEffect addNewAlphaOutset() {
        CTAlphaOutsetEffect cTAlphaOutsetEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaOutsetEffect = (CTAlphaOutsetEffect) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTAlphaOutsetEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaReplaceEffect addNewAlphaRepl() {
        CTAlphaReplaceEffect cTAlphaReplaceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaReplaceEffect = (CTAlphaReplaceEffect) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTAlphaReplaceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTBiLevelEffect addNewBiLevel() {
        CTBiLevelEffect cTBiLevelEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBiLevelEffect = (CTBiLevelEffect) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTBiLevelEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTBlendEffect addNewBlend() {
        CTBlendEffect cTBlendEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBlendEffect = (CTBlendEffect) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTBlendEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTBlurEffect addNewBlur() {
        CTBlurEffect cTBlurEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBlurEffect = (CTBlurEffect) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTBlurEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTColorChangeEffect addNewClrChange() {
        CTColorChangeEffect cTColorChangeEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTColorChangeEffect = (CTColorChangeEffect) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTColorChangeEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTColorReplaceEffect addNewClrRepl() {
        CTColorReplaceEffect cTColorReplaceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTColorReplaceEffect = (CTColorReplaceEffect) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTColorReplaceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTEffectContainer addNewCont() {
        CTEffectContainer cTEffectContainer;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectContainer = (CTEffectContainer) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEffectContainer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTDuotoneEffect addNewDuotone() {
        CTDuotoneEffect cTDuotoneEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTDuotoneEffect = (CTDuotoneEffect) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTDuotoneEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTEffectReference addNewEffect() {
        CTEffectReference cTEffectReference;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectReference = (CTEffectReference) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTEffectReference;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTFillEffect addNewFill() {
        CTFillEffect cTFillEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTFillEffect = (CTFillEffect) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTFillEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTFillOverlayEffect addNewFillOverlay() {
        CTFillOverlayEffect cTFillOverlayEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTFillOverlayEffect = (CTFillOverlayEffect) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTFillOverlayEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTGlowEffect addNewGlow() {
        CTGlowEffect cTGlowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTGlowEffect = (CTGlowEffect) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTGlowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTGrayscaleEffect addNewGrayscl() {
        CTGrayscaleEffect cTGrayscaleEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTGrayscaleEffect = (CTGrayscaleEffect) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return cTGrayscaleEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTHSLEffect addNewHsl() {
        CTHSLEffect cTHSLEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTHSLEffect = (CTHSLEffect) get_store().add_element_user(PROPERTY_QNAME[20]);
        }
        return cTHSLEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTInnerShadowEffect addNewInnerShdw() {
        CTInnerShadowEffect cTInnerShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTInnerShadowEffect = (CTInnerShadowEffect) get_store().add_element_user(PROPERTY_QNAME[21]);
        }
        return cTInnerShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTLuminanceEffect addNewLum() {
        CTLuminanceEffect cTLuminanceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTLuminanceEffect = (CTLuminanceEffect) get_store().add_element_user(PROPERTY_QNAME[22]);
        }
        return cTLuminanceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTOuterShadowEffect addNewOuterShdw() {
        CTOuterShadowEffect cTOuterShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTOuterShadowEffect = (CTOuterShadowEffect) get_store().add_element_user(PROPERTY_QNAME[23]);
        }
        return cTOuterShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTPresetShadowEffect addNewPrstShdw() {
        CTPresetShadowEffect cTPresetShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTPresetShadowEffect = (CTPresetShadowEffect) get_store().add_element_user(PROPERTY_QNAME[24]);
        }
        return cTPresetShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTReflectionEffect addNewReflection() {
        CTReflectionEffect cTReflectionEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTReflectionEffect = (CTReflectionEffect) get_store().add_element_user(PROPERTY_QNAME[25]);
        }
        return cTReflectionEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTRelativeOffsetEffect addNewRelOff() {
        CTRelativeOffsetEffect cTRelativeOffsetEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTRelativeOffsetEffect = (CTRelativeOffsetEffect) get_store().add_element_user(PROPERTY_QNAME[26]);
        }
        return cTRelativeOffsetEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTSoftEdgesEffect addNewSoftEdge() {
        CTSoftEdgesEffect cTSoftEdgesEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTSoftEdgesEffect = (CTSoftEdgesEffect) get_store().add_element_user(PROPERTY_QNAME[27]);
        }
        return cTSoftEdgesEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTTintEffect addNewTint() {
        CTTintEffect cTTintEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTTintEffect = (CTTintEffect) get_store().add_element_user(PROPERTY_QNAME[28]);
        }
        return cTTintEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTTransformEffect addNewXfrm() {
        CTTransformEffect cTTransformEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTTransformEffect = (CTTransformEffect) get_store().add_element_user(PROPERTY_QNAME[29]);
        }
        return cTTransformEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaBiLevelEffect[] getAlphaBiLevelArray() {
        return (CTAlphaBiLevelEffect[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTAlphaBiLevelEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTAlphaBiLevelEffect> getAlphaBiLevelList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zj3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getAlphaBiLevelArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kk3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setAlphaBiLevelArray(((Integer) obj).intValue(), (CTAlphaBiLevelEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vk3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewAlphaBiLevel(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gl3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeAlphaBiLevel(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rl3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfAlphaBiLevelArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaCeilingEffect[] getAlphaCeilingArray() {
        return (CTAlphaCeilingEffect[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTAlphaCeilingEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTAlphaCeilingEffect> getAlphaCeilingList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.um3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getAlphaCeilingArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vm3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setAlphaCeilingArray(((Integer) obj).intValue(), (CTAlphaCeilingEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wm3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewAlphaCeiling(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xm3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeAlphaCeiling(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ym3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfAlphaCeilingArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaFloorEffect[] getAlphaFloorArray() {
        return (CTAlphaFloorEffect[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTAlphaFloorEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTAlphaFloorEffect> getAlphaFloorList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wk3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getAlphaFloorArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xk3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setAlphaFloorArray(((Integer) obj).intValue(), (CTAlphaFloorEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yk3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewAlphaFloor(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zk3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeAlphaFloor(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.al3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfAlphaFloorArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaInverseEffect[] getAlphaInvArray() {
        return (CTAlphaInverseEffect[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTAlphaInverseEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTAlphaInverseEffect> getAlphaInvList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.oj3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getAlphaInvArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xl3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setAlphaInvArray(((Integer) obj).intValue(), (CTAlphaInverseEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.im3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewAlphaInv(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tm3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeAlphaInv(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.en3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfAlphaInvArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaModulateEffect[] getAlphaModArray() {
        return (CTAlphaModulateEffect[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTAlphaModulateEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaModulateFixedEffect[] getAlphaModFixArray() {
        return (CTAlphaModulateFixedEffect[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTAlphaModulateFixedEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTAlphaModulateFixedEffect> getAlphaModFixList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qn3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getAlphaModFixArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rn3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setAlphaModFixArray(((Integer) obj).intValue(), (CTAlphaModulateFixedEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sn3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewAlphaModFix(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tn3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeAlphaModFix(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.un3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfAlphaModFixArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTAlphaModulateEffect> getAlphaModList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ro3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getAlphaModArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.so3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setAlphaModArray(((Integer) obj).intValue(), (CTAlphaModulateEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.to3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewAlphaMod(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.uo3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeAlphaMod(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vo3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfAlphaModArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaOutsetEffect[] getAlphaOutsetArray() {
        return (CTAlphaOutsetEffect[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTAlphaOutsetEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTAlphaOutsetEffect> getAlphaOutsetList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sl3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getAlphaOutsetArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tl3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setAlphaOutsetArray(((Integer) obj).intValue(), (CTAlphaOutsetEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ul3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewAlphaOutset(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vl3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeAlphaOutset(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wl3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfAlphaOutsetArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaReplaceEffect[] getAlphaReplArray() {
        return (CTAlphaReplaceEffect[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTAlphaReplaceEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTAlphaReplaceEffect> getAlphaReplList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pn3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getAlphaReplArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ao3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setAlphaReplArray(((Integer) obj).intValue(), (CTAlphaReplaceEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lo3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewAlphaRepl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wo3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeAlphaRepl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hp3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfAlphaReplArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTBiLevelEffect[] getBiLevelArray() {
        return (CTBiLevelEffect[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTBiLevelEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTBiLevelEffect> getBiLevelList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vn3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getBiLevelArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.wn3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setBiLevelArray(((Integer) obj).intValue(), (CTBiLevelEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xn3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewBiLevel(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yn3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeBiLevel(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zn3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfBiLevelArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTBlendEffect[] getBlendArray() {
        return (CTBlendEffect[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTBlendEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTBlendEffect> getBlendList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mo3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getBlendArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.no3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setBlendArray(((Integer) obj).intValue(), (CTBlendEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.oo3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewBlend(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.po3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeBlend(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qo3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfBlendArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTBlurEffect[] getBlurArray() {
        return (CTBlurEffect[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTBlurEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTBlurEffect> getBlurList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cp3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getBlurArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dp3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setBlurArray(((Integer) obj).intValue(), (CTBlurEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ep3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewBlur(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fp3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeBlur(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gp3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfBlurArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTColorChangeEffect[] getClrChangeArray() {
        return (CTColorChangeEffect[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTColorChangeEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTColorChangeEffect> getClrChangeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jm3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getClrChangeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.km3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setClrChangeArray(((Integer) obj).intValue(), (CTColorChangeEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lm3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewClrChange(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mm3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeClrChange(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nm3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfClrChangeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTColorReplaceEffect[] getClrReplArray() {
        return (CTColorReplaceEffect[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTColorReplaceEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTColorReplaceEffect> getClrReplList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ak3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getClrReplArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bk3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setClrReplArray(((Integer) obj).intValue(), (CTColorReplaceEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ck3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewClrRepl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.dk3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeClrRepl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ek3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfClrReplArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTEffectContainer[] getContArray() {
        return (CTEffectContainer[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTEffectContainer[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTEffectContainer> getContList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.dm3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getContArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.em3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setContArray(((Integer) obj).intValue(), (CTEffectContainer) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.fm3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewCont(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gm3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeCont(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hm3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfContArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTDuotoneEffect[] getDuotoneArray() {
        return (CTDuotoneEffect[]) getXmlObjectArray(PROPERTY_QNAME[15], new CTDuotoneEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTDuotoneEffect> getDuotoneList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.kn3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getDuotoneArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ln3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setDuotoneArray(((Integer) obj).intValue(), (CTDuotoneEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.mn3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewDuotone(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nn3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeDuotone(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.on3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfDuotoneArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTEffectReference[] getEffectArray() {
        return (CTEffectReference[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTEffectReference[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTEffectReference> getEffectList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fk3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getEffectArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gk3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setEffectArray(((Integer) obj).intValue(), (CTEffectReference) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hk3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewEffect(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ik3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeEffect(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jk3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfEffectArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTFillEffect[] getFillArray() {
        return (CTFillEffect[]) getXmlObjectArray(PROPERTY_QNAME[16], new CTFillEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTFillEffect> getFillList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yl3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getFillArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zl3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setFillArray(((Integer) obj).intValue(), (CTFillEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.am3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewFill(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bm3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeFill(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cm3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfFillArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTFillOverlayEffect[] getFillOverlayArray() {
        return (CTFillOverlayEffect[]) getXmlObjectArray(PROPERTY_QNAME[17], new CTFillOverlayEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTFillOverlayEffect> getFillOverlayList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fn3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getFillOverlayArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gn3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setFillOverlayArray(((Integer) obj).intValue(), (CTFillOverlayEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hn3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewFillOverlay(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.in3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeFillOverlay(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jn3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfFillOverlayArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTGlowEffect[] getGlowArray() {
        return (CTGlowEffect[]) getXmlObjectArray(PROPERTY_QNAME[18], new CTGlowEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTGlowEffect> getGlowList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zm3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getGlowArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.an3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setGlowArray(((Integer) obj).intValue(), (CTGlowEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bn3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewGlow(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.cn3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeGlow(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dn3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfGlowArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTGrayscaleEffect[] getGraysclArray() {
        return (CTGrayscaleEffect[]) getXmlObjectArray(PROPERTY_QNAME[19], new CTGrayscaleEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTGrayscaleEffect> getGraysclList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.go3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getGraysclArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ho3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setGraysclArray(((Integer) obj).intValue(), (CTGrayscaleEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.io3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewGrayscl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jo3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeGrayscl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ko3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfGraysclArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTHSLEffect[] getHslArray() {
        return (CTHSLEffect[]) getXmlObjectArray(PROPERTY_QNAME[20], new CTHSLEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTHSLEffect> getHslList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ml3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getHslArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nl3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setHslArray(((Integer) obj).intValue(), (CTHSLEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ol3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewHsl(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pl3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeHsl(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ql3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfHslArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTInnerShadowEffect[] getInnerShdwArray() {
        return (CTInnerShadowEffect[]) getXmlObjectArray(PROPERTY_QNAME[21], new CTInnerShadowEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTInnerShadowEffect> getInnerShdwList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bo3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getInnerShdwArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.co3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setInnerShdwArray(((Integer) obj).intValue(), (CTInnerShadowEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.do3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewInnerShdw(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.eo3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeInnerShdw(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fo3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfInnerShdwArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTLuminanceEffect[] getLumArray() {
        return (CTLuminanceEffect[]) getXmlObjectArray(PROPERTY_QNAME[22], new CTLuminanceEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTLuminanceEffect> getLumList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uj3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getLumArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vj3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setLumArray(((Integer) obj).intValue(), (CTLuminanceEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wj3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewLum(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xj3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeLum(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yj3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfLumArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public String getName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[31]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTOuterShadowEffect[] getOuterShdwArray() {
        return (CTOuterShadowEffect[]) getXmlObjectArray(PROPERTY_QNAME[23], new CTOuterShadowEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTOuterShadowEffect> getOuterShdwList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pj3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getOuterShdwArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qj3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setOuterShdwArray(((Integer) obj).intValue(), (CTOuterShadowEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rj3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewOuterShdw(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sj3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeOuterShdw(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tj3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfOuterShdwArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTPresetShadowEffect[] getPrstShdwArray() {
        return (CTPresetShadowEffect[]) getXmlObjectArray(PROPERTY_QNAME[24], new CTPresetShadowEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTPresetShadowEffect> getPrstShdwList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.om3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getPrstShdwArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pm3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setPrstShdwArray(((Integer) obj).intValue(), (CTPresetShadowEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qm3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewPrstShdw(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rm3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removePrstShdw(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sm3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfPrstShdwArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTReflectionEffect[] getReflectionArray() {
        return (CTReflectionEffect[]) getXmlObjectArray(PROPERTY_QNAME[25], new CTReflectionEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTReflectionEffect> getReflectionList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bl3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getReflectionArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cl3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setReflectionArray(((Integer) obj).intValue(), (CTReflectionEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dl3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewReflection(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.el3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeReflection(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fl3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfReflectionArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTRelativeOffsetEffect[] getRelOffArray() {
        return (CTRelativeOffsetEffect[]) getXmlObjectArray(PROPERTY_QNAME[26], new CTRelativeOffsetEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTRelativeOffsetEffect> getRelOffList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xo3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getRelOffArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yo3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setRelOffArray(((Integer) obj).intValue(), (CTRelativeOffsetEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zo3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewRelOff(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ap3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeRelOff(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bp3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfRelOffArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTSoftEdgesEffect[] getSoftEdgeArray() {
        return (CTSoftEdgesEffect[]) getXmlObjectArray(PROPERTY_QNAME[27], new CTSoftEdgesEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTSoftEdgesEffect> getSoftEdgeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lk3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getSoftEdgeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mk3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setSoftEdgeArray(((Integer) obj).intValue(), (CTSoftEdgesEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nk3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewSoftEdge(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ok3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeSoftEdge(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pk3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfSoftEdgeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTTintEffect[] getTintArray() {
        return (CTTintEffect[]) getXmlObjectArray(PROPERTY_QNAME[28], new CTTintEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTTintEffect> getTintList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qk3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getTintArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rk3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setTintArray(((Integer) obj).intValue(), (CTTintEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sk3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewTint(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tk3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeTint(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.uk3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfTintArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public STEffectContainerType.Enum getType() {
        STEffectContainerType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[30]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[30]);
            }
            r5 = simpleValue == null ? null : (STEffectContainerType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTTransformEffect[] getXfrmArray() {
        return (CTTransformEffect[]) getXmlObjectArray(PROPERTY_QNAME[29], new CTTransformEffect[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public List<CTTransformEffect> getXfrmList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hl3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.getXfrmArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.il3
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTEffectContainerImpl.this.setXfrmArray(((Integer) obj).intValue(), (CTTransformEffect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jl3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTEffectContainerImpl.this.insertNewXfrm(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kl3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTEffectContainerImpl.this.removeXfrm(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ll3
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTEffectContainerImpl.this.sizeOfXfrmArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaBiLevelEffect insertNewAlphaBiLevel(int i) {
        CTAlphaBiLevelEffect cTAlphaBiLevelEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaBiLevelEffect = (CTAlphaBiLevelEffect) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTAlphaBiLevelEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaCeilingEffect insertNewAlphaCeiling(int i) {
        CTAlphaCeilingEffect cTAlphaCeilingEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaCeilingEffect = (CTAlphaCeilingEffect) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTAlphaCeilingEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaFloorEffect insertNewAlphaFloor(int i) {
        CTAlphaFloorEffect cTAlphaFloorEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaFloorEffect = (CTAlphaFloorEffect) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTAlphaFloorEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaInverseEffect insertNewAlphaInv(int i) {
        CTAlphaInverseEffect cTAlphaInverseEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaInverseEffect = (CTAlphaInverseEffect) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTAlphaInverseEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaModulateEffect insertNewAlphaMod(int i) {
        CTAlphaModulateEffect cTAlphaModulateEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaModulateEffect = (CTAlphaModulateEffect) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTAlphaModulateEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaModulateFixedEffect insertNewAlphaModFix(int i) {
        CTAlphaModulateFixedEffect cTAlphaModulateFixedEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaModulateFixedEffect = (CTAlphaModulateFixedEffect) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTAlphaModulateFixedEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaOutsetEffect insertNewAlphaOutset(int i) {
        CTAlphaOutsetEffect cTAlphaOutsetEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaOutsetEffect = (CTAlphaOutsetEffect) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTAlphaOutsetEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaReplaceEffect insertNewAlphaRepl(int i) {
        CTAlphaReplaceEffect cTAlphaReplaceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaReplaceEffect = (CTAlphaReplaceEffect) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTAlphaReplaceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTBiLevelEffect insertNewBiLevel(int i) {
        CTBiLevelEffect cTBiLevelEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBiLevelEffect = (CTBiLevelEffect) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTBiLevelEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTBlendEffect insertNewBlend(int i) {
        CTBlendEffect cTBlendEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBlendEffect = (CTBlendEffect) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTBlendEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTBlurEffect insertNewBlur(int i) {
        CTBlurEffect cTBlurEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBlurEffect = (CTBlurEffect) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTBlurEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTColorChangeEffect insertNewClrChange(int i) {
        CTColorChangeEffect cTColorChangeEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTColorChangeEffect = (CTColorChangeEffect) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTColorChangeEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTColorReplaceEffect insertNewClrRepl(int i) {
        CTColorReplaceEffect cTColorReplaceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTColorReplaceEffect = (CTColorReplaceEffect) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTColorReplaceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTEffectContainer insertNewCont(int i) {
        CTEffectContainer cTEffectContainer;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectContainer = (CTEffectContainer) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTEffectContainer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTDuotoneEffect insertNewDuotone(int i) {
        CTDuotoneEffect cTDuotoneEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTDuotoneEffect = (CTDuotoneEffect) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return cTDuotoneEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTEffectReference insertNewEffect(int i) {
        CTEffectReference cTEffectReference;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectReference = (CTEffectReference) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTEffectReference;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTFillEffect insertNewFill(int i) {
        CTFillEffect cTFillEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTFillEffect = (CTFillEffect) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return cTFillEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTFillOverlayEffect insertNewFillOverlay(int i) {
        CTFillOverlayEffect cTFillOverlayEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTFillOverlayEffect = (CTFillOverlayEffect) get_store().insert_element_user(PROPERTY_QNAME[17], i);
        }
        return cTFillOverlayEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTGlowEffect insertNewGlow(int i) {
        CTGlowEffect cTGlowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTGlowEffect = (CTGlowEffect) get_store().insert_element_user(PROPERTY_QNAME[18], i);
        }
        return cTGlowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTGrayscaleEffect insertNewGrayscl(int i) {
        CTGrayscaleEffect cTGrayscaleEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTGrayscaleEffect = (CTGrayscaleEffect) get_store().insert_element_user(PROPERTY_QNAME[19], i);
        }
        return cTGrayscaleEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTHSLEffect insertNewHsl(int i) {
        CTHSLEffect cTHSLEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTHSLEffect = (CTHSLEffect) get_store().insert_element_user(PROPERTY_QNAME[20], i);
        }
        return cTHSLEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTInnerShadowEffect insertNewInnerShdw(int i) {
        CTInnerShadowEffect cTInnerShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTInnerShadowEffect = (CTInnerShadowEffect) get_store().insert_element_user(PROPERTY_QNAME[21], i);
        }
        return cTInnerShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTLuminanceEffect insertNewLum(int i) {
        CTLuminanceEffect cTLuminanceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTLuminanceEffect = (CTLuminanceEffect) get_store().insert_element_user(PROPERTY_QNAME[22], i);
        }
        return cTLuminanceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTOuterShadowEffect insertNewOuterShdw(int i) {
        CTOuterShadowEffect cTOuterShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTOuterShadowEffect = (CTOuterShadowEffect) get_store().insert_element_user(PROPERTY_QNAME[23], i);
        }
        return cTOuterShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTPresetShadowEffect insertNewPrstShdw(int i) {
        CTPresetShadowEffect cTPresetShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTPresetShadowEffect = (CTPresetShadowEffect) get_store().insert_element_user(PROPERTY_QNAME[24], i);
        }
        return cTPresetShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTReflectionEffect insertNewReflection(int i) {
        CTReflectionEffect cTReflectionEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTReflectionEffect = (CTReflectionEffect) get_store().insert_element_user(PROPERTY_QNAME[25], i);
        }
        return cTReflectionEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTRelativeOffsetEffect insertNewRelOff(int i) {
        CTRelativeOffsetEffect cTRelativeOffsetEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTRelativeOffsetEffect = (CTRelativeOffsetEffect) get_store().insert_element_user(PROPERTY_QNAME[26], i);
        }
        return cTRelativeOffsetEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTSoftEdgesEffect insertNewSoftEdge(int i) {
        CTSoftEdgesEffect cTSoftEdgesEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTSoftEdgesEffect = (CTSoftEdgesEffect) get_store().insert_element_user(PROPERTY_QNAME[27], i);
        }
        return cTSoftEdgesEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTTintEffect insertNewTint(int i) {
        CTTintEffect cTTintEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTTintEffect = (CTTintEffect) get_store().insert_element_user(PROPERTY_QNAME[28], i);
        }
        return cTTintEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTTransformEffect insertNewXfrm(int i) {
        CTTransformEffect cTTransformEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTTransformEffect = (CTTransformEffect) get_store().insert_element_user(PROPERTY_QNAME[29], i);
        }
        return cTTransformEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public boolean isSetName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[31]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[30]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeAlphaBiLevel(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeAlphaCeiling(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeAlphaFloor(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeAlphaInv(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeAlphaMod(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeAlphaModFix(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeAlphaOutset(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeAlphaRepl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeBiLevel(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeBlend(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeBlur(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeClrChange(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeClrRepl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeCont(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeDuotone(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeEffect(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeFill(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeFillOverlay(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeGlow(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeGrayscl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeHsl(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeInnerShdw(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeLum(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeOuterShdw(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[23], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removePrstShdw(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[24], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeReflection(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[25], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeRelOff(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[26], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeSoftEdge(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[27], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeTint(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[28], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void removeXfrm(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[29], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaBiLevelArray(CTAlphaBiLevelEffect[] cTAlphaBiLevelEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaBiLevelEffectArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaCeilingArray(CTAlphaCeilingEffect[] cTAlphaCeilingEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaCeilingEffectArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaFloorArray(CTAlphaFloorEffect[] cTAlphaFloorEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaFloorEffectArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaInvArray(CTAlphaInverseEffect[] cTAlphaInverseEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaInverseEffectArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaModArray(CTAlphaModulateEffect[] cTAlphaModulateEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaModulateEffectArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaModFixArray(CTAlphaModulateFixedEffect[] cTAlphaModulateFixedEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaModulateFixedEffectArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaOutsetArray(CTAlphaOutsetEffect[] cTAlphaOutsetEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaOutsetEffectArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaReplArray(CTAlphaReplaceEffect[] cTAlphaReplaceEffectArr) {
        check_orphaned();
        arraySetterHelper(cTAlphaReplaceEffectArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setBiLevelArray(CTBiLevelEffect[] cTBiLevelEffectArr) {
        check_orphaned();
        arraySetterHelper(cTBiLevelEffectArr, PROPERTY_QNAME[10]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setBlendArray(CTBlendEffect[] cTBlendEffectArr) {
        check_orphaned();
        arraySetterHelper(cTBlendEffectArr, PROPERTY_QNAME[11]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setBlurArray(CTBlurEffect[] cTBlurEffectArr) {
        check_orphaned();
        arraySetterHelper(cTBlurEffectArr, PROPERTY_QNAME[12]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setClrChangeArray(CTColorChangeEffect[] cTColorChangeEffectArr) {
        check_orphaned();
        arraySetterHelper(cTColorChangeEffectArr, PROPERTY_QNAME[13]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setClrReplArray(CTColorReplaceEffect[] cTColorReplaceEffectArr) {
        check_orphaned();
        arraySetterHelper(cTColorReplaceEffectArr, PROPERTY_QNAME[14]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setContArray(CTEffectContainer[] cTEffectContainerArr) {
        check_orphaned();
        arraySetterHelper(cTEffectContainerArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setDuotoneArray(CTDuotoneEffect[] cTDuotoneEffectArr) {
        check_orphaned();
        arraySetterHelper(cTDuotoneEffectArr, PROPERTY_QNAME[15]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setEffectArray(CTEffectReference[] cTEffectReferenceArr) {
        check_orphaned();
        arraySetterHelper(cTEffectReferenceArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setFillArray(CTFillEffect[] cTFillEffectArr) {
        check_orphaned();
        arraySetterHelper(cTFillEffectArr, PROPERTY_QNAME[16]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setFillOverlayArray(CTFillOverlayEffect[] cTFillOverlayEffectArr) {
        check_orphaned();
        arraySetterHelper(cTFillOverlayEffectArr, PROPERTY_QNAME[17]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setGlowArray(CTGlowEffect[] cTGlowEffectArr) {
        check_orphaned();
        arraySetterHelper(cTGlowEffectArr, PROPERTY_QNAME[18]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setGraysclArray(CTGrayscaleEffect[] cTGrayscaleEffectArr) {
        check_orphaned();
        arraySetterHelper(cTGrayscaleEffectArr, PROPERTY_QNAME[19]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setHslArray(CTHSLEffect[] cTHSLEffectArr) {
        check_orphaned();
        arraySetterHelper(cTHSLEffectArr, PROPERTY_QNAME[20]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setInnerShdwArray(CTInnerShadowEffect[] cTInnerShadowEffectArr) {
        check_orphaned();
        arraySetterHelper(cTInnerShadowEffectArr, PROPERTY_QNAME[21]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setLumArray(CTLuminanceEffect[] cTLuminanceEffectArr) {
        check_orphaned();
        arraySetterHelper(cTLuminanceEffectArr, PROPERTY_QNAME[22]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[31]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[31]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setOuterShdwArray(CTOuterShadowEffect[] cTOuterShadowEffectArr) {
        check_orphaned();
        arraySetterHelper(cTOuterShadowEffectArr, PROPERTY_QNAME[23]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setPrstShdwArray(CTPresetShadowEffect[] cTPresetShadowEffectArr) {
        check_orphaned();
        arraySetterHelper(cTPresetShadowEffectArr, PROPERTY_QNAME[24]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setReflectionArray(CTReflectionEffect[] cTReflectionEffectArr) {
        check_orphaned();
        arraySetterHelper(cTReflectionEffectArr, PROPERTY_QNAME[25]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setRelOffArray(CTRelativeOffsetEffect[] cTRelativeOffsetEffectArr) {
        check_orphaned();
        arraySetterHelper(cTRelativeOffsetEffectArr, PROPERTY_QNAME[26]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setSoftEdgeArray(CTSoftEdgesEffect[] cTSoftEdgesEffectArr) {
        check_orphaned();
        arraySetterHelper(cTSoftEdgesEffectArr, PROPERTY_QNAME[27]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setTintArray(CTTintEffect[] cTTintEffectArr) {
        check_orphaned();
        arraySetterHelper(cTTintEffectArr, PROPERTY_QNAME[28]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setType(STEffectContainerType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[30]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[30]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setXfrmArray(CTTransformEffect[] cTTransformEffectArr) {
        check_orphaned();
        arraySetterHelper(cTTransformEffectArr, PROPERTY_QNAME[29]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfAlphaBiLevelArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfAlphaCeilingArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfAlphaFloorArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfAlphaInvArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfAlphaModArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfAlphaModFixArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfAlphaOutsetArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfAlphaReplArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfBiLevelArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfBlendArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfBlurArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfClrChangeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfClrReplArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfContArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfDuotoneArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfEffectArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfFillArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfFillOverlayArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[17]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfGlowArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[18]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfGraysclArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[19]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfHslArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[20]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfInnerShdwArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[21]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfLumArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[22]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfOuterShdwArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[23]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfPrstShdwArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[24]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfReflectionArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[25]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfRelOffArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[26]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfSoftEdgeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[27]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfTintArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[28]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public int sizeOfXfrmArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[29]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[31]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[30]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public XmlToken xgetName() {
        XmlToken xmlToken;
        synchronized (monitor()) {
            check_orphaned();
            xmlToken = (XmlToken) get_store().find_attribute_user(PROPERTY_QNAME[31]);
        }
        return xmlToken;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public STEffectContainerType xgetType() {
        STEffectContainerType sTEffectContainerType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTEffectContainerType = (STEffectContainerType) typeStore.find_attribute_user(qNameArr[30]);
            if (sTEffectContainerType == null) {
                sTEffectContainerType = (STEffectContainerType) get_default_attribute_value(qNameArr[30]);
            }
        }
        return sTEffectContainerType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void xsetName(XmlToken xmlToken) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlToken xmlToken2 = (XmlToken) typeStore.find_attribute_user(qNameArr[31]);
            if (xmlToken2 == null) {
                xmlToken2 = (XmlToken) get_store().add_attribute_user(qNameArr[31]);
            }
            xmlToken2.set(xmlToken);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void xsetType(STEffectContainerType sTEffectContainerType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STEffectContainerType sTEffectContainerType2 = (STEffectContainerType) typeStore.find_attribute_user(qNameArr[30]);
            if (sTEffectContainerType2 == null) {
                sTEffectContainerType2 = (STEffectContainerType) get_store().add_attribute_user(qNameArr[30]);
            }
            sTEffectContainerType2.set(sTEffectContainerType);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaBiLevelEffect getAlphaBiLevelArray(int i) {
        CTAlphaBiLevelEffect cTAlphaBiLevelEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaBiLevelEffect = (CTAlphaBiLevelEffect) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTAlphaBiLevelEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaBiLevelEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaCeilingEffect getAlphaCeilingArray(int i) {
        CTAlphaCeilingEffect cTAlphaCeilingEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaCeilingEffect = (CTAlphaCeilingEffect) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTAlphaCeilingEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaCeilingEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaFloorEffect getAlphaFloorArray(int i) {
        CTAlphaFloorEffect cTAlphaFloorEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaFloorEffect = (CTAlphaFloorEffect) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTAlphaFloorEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaFloorEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaInverseEffect getAlphaInvArray(int i) {
        CTAlphaInverseEffect cTAlphaInverseEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaInverseEffect = (CTAlphaInverseEffect) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTAlphaInverseEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaInverseEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaModulateEffect getAlphaModArray(int i) {
        CTAlphaModulateEffect cTAlphaModulateEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaModulateEffect = (CTAlphaModulateEffect) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTAlphaModulateEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaModulateEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaModulateFixedEffect getAlphaModFixArray(int i) {
        CTAlphaModulateFixedEffect cTAlphaModulateFixedEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaModulateFixedEffect = (CTAlphaModulateFixedEffect) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTAlphaModulateFixedEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaModulateFixedEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaOutsetEffect getAlphaOutsetArray(int i) {
        CTAlphaOutsetEffect cTAlphaOutsetEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaOutsetEffect = (CTAlphaOutsetEffect) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTAlphaOutsetEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaOutsetEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTAlphaReplaceEffect getAlphaReplArray(int i) {
        CTAlphaReplaceEffect cTAlphaReplaceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTAlphaReplaceEffect = (CTAlphaReplaceEffect) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTAlphaReplaceEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlphaReplaceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTBiLevelEffect getBiLevelArray(int i) {
        CTBiLevelEffect cTBiLevelEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBiLevelEffect = (CTBiLevelEffect) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTBiLevelEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBiLevelEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTBlendEffect getBlendArray(int i) {
        CTBlendEffect cTBlendEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBlendEffect = (CTBlendEffect) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (cTBlendEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBlendEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTBlurEffect getBlurArray(int i) {
        CTBlurEffect cTBlurEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTBlurEffect = (CTBlurEffect) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (cTBlurEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBlurEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTColorChangeEffect getClrChangeArray(int i) {
        CTColorChangeEffect cTColorChangeEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTColorChangeEffect = (CTColorChangeEffect) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (cTColorChangeEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTColorChangeEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTColorReplaceEffect getClrReplArray(int i) {
        CTColorReplaceEffect cTColorReplaceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTColorReplaceEffect = (CTColorReplaceEffect) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (cTColorReplaceEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTColorReplaceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTEffectContainer getContArray(int i) {
        CTEffectContainer cTEffectContainer;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectContainer = (CTEffectContainer) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTEffectContainer == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEffectContainer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTDuotoneEffect getDuotoneArray(int i) {
        CTDuotoneEffect cTDuotoneEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTDuotoneEffect = (CTDuotoneEffect) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (cTDuotoneEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDuotoneEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTEffectReference getEffectArray(int i) {
        CTEffectReference cTEffectReference;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectReference = (CTEffectReference) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTEffectReference == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTEffectReference;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTFillEffect getFillArray(int i) {
        CTFillEffect cTFillEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTFillEffect = (CTFillEffect) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (cTFillEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFillEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTFillOverlayEffect getFillOverlayArray(int i) {
        CTFillOverlayEffect cTFillOverlayEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTFillOverlayEffect = (CTFillOverlayEffect) get_store().find_element_user(PROPERTY_QNAME[17], i);
            if (cTFillOverlayEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFillOverlayEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTGlowEffect getGlowArray(int i) {
        CTGlowEffect cTGlowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTGlowEffect = (CTGlowEffect) get_store().find_element_user(PROPERTY_QNAME[18], i);
            if (cTGlowEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGlowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTGrayscaleEffect getGraysclArray(int i) {
        CTGrayscaleEffect cTGrayscaleEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTGrayscaleEffect = (CTGrayscaleEffect) get_store().find_element_user(PROPERTY_QNAME[19], i);
            if (cTGrayscaleEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGrayscaleEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTHSLEffect getHslArray(int i) {
        CTHSLEffect cTHSLEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTHSLEffect = (CTHSLEffect) get_store().find_element_user(PROPERTY_QNAME[20], i);
            if (cTHSLEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTHSLEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTInnerShadowEffect getInnerShdwArray(int i) {
        CTInnerShadowEffect cTInnerShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTInnerShadowEffect = (CTInnerShadowEffect) get_store().find_element_user(PROPERTY_QNAME[21], i);
            if (cTInnerShadowEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTInnerShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTLuminanceEffect getLumArray(int i) {
        CTLuminanceEffect cTLuminanceEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTLuminanceEffect = (CTLuminanceEffect) get_store().find_element_user(PROPERTY_QNAME[22], i);
            if (cTLuminanceEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLuminanceEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTOuterShadowEffect getOuterShdwArray(int i) {
        CTOuterShadowEffect cTOuterShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTOuterShadowEffect = (CTOuterShadowEffect) get_store().find_element_user(PROPERTY_QNAME[23], i);
            if (cTOuterShadowEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOuterShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTPresetShadowEffect getPrstShdwArray(int i) {
        CTPresetShadowEffect cTPresetShadowEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTPresetShadowEffect = (CTPresetShadowEffect) get_store().find_element_user(PROPERTY_QNAME[24], i);
            if (cTPresetShadowEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPresetShadowEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTReflectionEffect getReflectionArray(int i) {
        CTReflectionEffect cTReflectionEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTReflectionEffect = (CTReflectionEffect) get_store().find_element_user(PROPERTY_QNAME[25], i);
            if (cTReflectionEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTReflectionEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTRelativeOffsetEffect getRelOffArray(int i) {
        CTRelativeOffsetEffect cTRelativeOffsetEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTRelativeOffsetEffect = (CTRelativeOffsetEffect) get_store().find_element_user(PROPERTY_QNAME[26], i);
            if (cTRelativeOffsetEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRelativeOffsetEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTSoftEdgesEffect getSoftEdgeArray(int i) {
        CTSoftEdgesEffect cTSoftEdgesEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTSoftEdgesEffect = (CTSoftEdgesEffect) get_store().find_element_user(PROPERTY_QNAME[27], i);
            if (cTSoftEdgesEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSoftEdgesEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTTintEffect getTintArray(int i) {
        CTTintEffect cTTintEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTTintEffect = (CTTintEffect) get_store().find_element_user(PROPERTY_QNAME[28], i);
            if (cTTintEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTintEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public CTTransformEffect getXfrmArray(int i) {
        CTTransformEffect cTTransformEffect;
        synchronized (monitor()) {
            check_orphaned();
            cTTransformEffect = (CTTransformEffect) get_store().find_element_user(PROPERTY_QNAME[29], i);
            if (cTTransformEffect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTransformEffect;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaBiLevelArray(int i, CTAlphaBiLevelEffect cTAlphaBiLevelEffect) {
        generatedSetterHelperImpl(cTAlphaBiLevelEffect, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaCeilingArray(int i, CTAlphaCeilingEffect cTAlphaCeilingEffect) {
        generatedSetterHelperImpl(cTAlphaCeilingEffect, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaFloorArray(int i, CTAlphaFloorEffect cTAlphaFloorEffect) {
        generatedSetterHelperImpl(cTAlphaFloorEffect, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaInvArray(int i, CTAlphaInverseEffect cTAlphaInverseEffect) {
        generatedSetterHelperImpl(cTAlphaInverseEffect, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaModArray(int i, CTAlphaModulateEffect cTAlphaModulateEffect) {
        generatedSetterHelperImpl(cTAlphaModulateEffect, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaModFixArray(int i, CTAlphaModulateFixedEffect cTAlphaModulateFixedEffect) {
        generatedSetterHelperImpl(cTAlphaModulateFixedEffect, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaOutsetArray(int i, CTAlphaOutsetEffect cTAlphaOutsetEffect) {
        generatedSetterHelperImpl(cTAlphaOutsetEffect, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setAlphaReplArray(int i, CTAlphaReplaceEffect cTAlphaReplaceEffect) {
        generatedSetterHelperImpl(cTAlphaReplaceEffect, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setBiLevelArray(int i, CTBiLevelEffect cTBiLevelEffect) {
        generatedSetterHelperImpl(cTBiLevelEffect, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setBlendArray(int i, CTBlendEffect cTBlendEffect) {
        generatedSetterHelperImpl(cTBlendEffect, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setBlurArray(int i, CTBlurEffect cTBlurEffect) {
        generatedSetterHelperImpl(cTBlurEffect, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setClrChangeArray(int i, CTColorChangeEffect cTColorChangeEffect) {
        generatedSetterHelperImpl(cTColorChangeEffect, PROPERTY_QNAME[13], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setClrReplArray(int i, CTColorReplaceEffect cTColorReplaceEffect) {
        generatedSetterHelperImpl(cTColorReplaceEffect, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setContArray(int i, CTEffectContainer cTEffectContainer) {
        generatedSetterHelperImpl(cTEffectContainer, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setDuotoneArray(int i, CTDuotoneEffect cTDuotoneEffect) {
        generatedSetterHelperImpl(cTDuotoneEffect, PROPERTY_QNAME[15], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setEffectArray(int i, CTEffectReference cTEffectReference) {
        generatedSetterHelperImpl(cTEffectReference, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setFillArray(int i, CTFillEffect cTFillEffect) {
        generatedSetterHelperImpl(cTFillEffect, PROPERTY_QNAME[16], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setFillOverlayArray(int i, CTFillOverlayEffect cTFillOverlayEffect) {
        generatedSetterHelperImpl(cTFillOverlayEffect, PROPERTY_QNAME[17], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setGlowArray(int i, CTGlowEffect cTGlowEffect) {
        generatedSetterHelperImpl(cTGlowEffect, PROPERTY_QNAME[18], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setGraysclArray(int i, CTGrayscaleEffect cTGrayscaleEffect) {
        generatedSetterHelperImpl(cTGrayscaleEffect, PROPERTY_QNAME[19], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setHslArray(int i, CTHSLEffect cTHSLEffect) {
        generatedSetterHelperImpl(cTHSLEffect, PROPERTY_QNAME[20], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setInnerShdwArray(int i, CTInnerShadowEffect cTInnerShadowEffect) {
        generatedSetterHelperImpl(cTInnerShadowEffect, PROPERTY_QNAME[21], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setLumArray(int i, CTLuminanceEffect cTLuminanceEffect) {
        generatedSetterHelperImpl(cTLuminanceEffect, PROPERTY_QNAME[22], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setOuterShdwArray(int i, CTOuterShadowEffect cTOuterShadowEffect) {
        generatedSetterHelperImpl(cTOuterShadowEffect, PROPERTY_QNAME[23], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setPrstShdwArray(int i, CTPresetShadowEffect cTPresetShadowEffect) {
        generatedSetterHelperImpl(cTPresetShadowEffect, PROPERTY_QNAME[24], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setReflectionArray(int i, CTReflectionEffect cTReflectionEffect) {
        generatedSetterHelperImpl(cTReflectionEffect, PROPERTY_QNAME[25], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setRelOffArray(int i, CTRelativeOffsetEffect cTRelativeOffsetEffect) {
        generatedSetterHelperImpl(cTRelativeOffsetEffect, PROPERTY_QNAME[26], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setSoftEdgeArray(int i, CTSoftEdgesEffect cTSoftEdgesEffect) {
        generatedSetterHelperImpl(cTSoftEdgesEffect, PROPERTY_QNAME[27], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setTintArray(int i, CTTintEffect cTTintEffect) {
        generatedSetterHelperImpl(cTTintEffect, PROPERTY_QNAME[28], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer
    public void setXfrmArray(int i, CTTransformEffect cTTransformEffect) {
        generatedSetterHelperImpl(cTTransformEffect, PROPERTY_QNAME[29], i, (short) 2);
    }
}
