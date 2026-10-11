package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.office.excel.CTClientData;
import com.microsoft.schemas.office.office.CTCallout;
import com.microsoft.schemas.office.office.CTClipPath;
import com.microsoft.schemas.office.office.CTDiagram;
import com.microsoft.schemas.office.office.CTExtrusion;
import com.microsoft.schemas.office.office.CTLock;
import com.microsoft.schemas.office.office.CTSignatureLine;
import com.microsoft.schemas.office.office.CTSkew;
import com.microsoft.schemas.office.office.STDiagramLayout;
import com.microsoft.schemas.office.office.STHrAlign;
import com.microsoft.schemas.office.office.STInsetMode;
import com.microsoft.schemas.office.powerpoint.CTRel;
import com.microsoft.schemas.office.word.CTAnchorLock;
import com.microsoft.schemas.office.word.CTBorder;
import com.microsoft.schemas.office.word.CTWrap;
import com.microsoft.schemas.vml.CTArc;
import com.microsoft.schemas.vml.CTCurve;
import com.microsoft.schemas.vml.CTFill;
import com.microsoft.schemas.vml.CTFormulas;
import com.microsoft.schemas.vml.CTGroup;
import com.microsoft.schemas.vml.CTHandles;
import com.microsoft.schemas.vml.CTImage;
import com.microsoft.schemas.vml.CTImageData;
import com.microsoft.schemas.vml.CTLine;
import com.microsoft.schemas.vml.CTOval;
import com.microsoft.schemas.vml.CTPath;
import com.microsoft.schemas.vml.CTPolyLine;
import com.microsoft.schemas.vml.CTRect;
import com.microsoft.schemas.vml.CTRoundRect;
import com.microsoft.schemas.vml.CTShadow;
import com.microsoft.schemas.vml.CTShape;
import com.microsoft.schemas.vml.CTShapetype;
import com.microsoft.schemas.vml.CTStroke;
import com.microsoft.schemas.vml.CTTextPath;
import com.microsoft.schemas.vml.CTTextbox;
import com.microsoft.schemas.vml.STEditAs;
import com.microsoft.schemas.vml.impl.CTGroupImpl;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.sunia.HTREnginev2.gon;
import java.math.BigInteger;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STColorType;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public class CTGroupImpl extends XmlComplexContentImpl implements CTGroup {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "path"), new QName("urn:schemas-microsoft-com:vml", "formulas"), new QName("urn:schemas-microsoft-com:vml", "handles"), new QName("urn:schemas-microsoft-com:vml", "fill"), new QName("urn:schemas-microsoft-com:vml", "stroke"), new QName("urn:schemas-microsoft-com:vml", "shadow"), new QName("urn:schemas-microsoft-com:vml", "textbox"), new QName("urn:schemas-microsoft-com:vml", "textpath"), new QName("urn:schemas-microsoft-com:vml", "imagedata"), new QName("urn:schemas-microsoft-com:office:office", "skew"), new QName("urn:schemas-microsoft-com:office:office", "extrusion"), new QName("urn:schemas-microsoft-com:office:office", "callout"), new QName("urn:schemas-microsoft-com:office:office", DevicePushAction.LOCK_DEVICE), new QName("urn:schemas-microsoft-com:office:office", "clippath"), new QName("urn:schemas-microsoft-com:office:office", "signatureline"), new QName("urn:schemas-microsoft-com:office:word", "wrap"), new QName("urn:schemas-microsoft-com:office:word", "anchorlock"), new QName("urn:schemas-microsoft-com:office:word", "bordertop"), new QName("urn:schemas-microsoft-com:office:word", "borderbottom"), new QName("urn:schemas-microsoft-com:office:word", "borderleft"), new QName("urn:schemas-microsoft-com:office:word", "borderright"), new QName("urn:schemas-microsoft-com:office:excel", "ClientData"), new QName("urn:schemas-microsoft-com:office:powerpoint", "textdata"), new QName("urn:schemas-microsoft-com:vml", "group"), new QName("urn:schemas-microsoft-com:vml", "shape"), new QName("urn:schemas-microsoft-com:vml", "shapetype"), new QName("urn:schemas-microsoft-com:vml", "arc"), new QName("urn:schemas-microsoft-com:vml", UniversalShapeTypeConst.CURVE), new QName("urn:schemas-microsoft-com:vml", "image"), new QName("urn:schemas-microsoft-com:vml", "line"), new QName("urn:schemas-microsoft-com:vml", UniversalShapeTypeConst.OVAL), new QName("urn:schemas-microsoft-com:vml", UniversalShapeTypeConst.POLYLINE), new QName("urn:schemas-microsoft-com:vml", "rect"), new QName("urn:schemas-microsoft-com:vml", "roundrect"), new QName("urn:schemas-microsoft-com:office:office", "diagram"), new QName("", "id"), new QName("", "style"), new QName("", "href"), new QName("", "target"), new QName("", "class"), new QName("", "title"), new QName("", "alt"), new QName("", "coordsize"), new QName("", "coordorigin"), new QName("", "wrapcoords"), new QName("", "print"), new QName("urn:schemas-microsoft-com:office:office", "spid"), new QName("urn:schemas-microsoft-com:office:office", "oned"), new QName("urn:schemas-microsoft-com:office:office", "regroupid"), new QName("urn:schemas-microsoft-com:office:office", "doubleclicknotify"), new QName("urn:schemas-microsoft-com:office:office", "button"), new QName("urn:schemas-microsoft-com:office:office", "userhidden"), new QName("urn:schemas-microsoft-com:office:office", "bullet"), new QName("urn:schemas-microsoft-com:office:office", "hr"), new QName("urn:schemas-microsoft-com:office:office", "hrstd"), new QName("urn:schemas-microsoft-com:office:office", "hrnoshade"), new QName("urn:schemas-microsoft-com:office:office", "hrpct"), new QName("urn:schemas-microsoft-com:office:office", "hralign"), new QName("urn:schemas-microsoft-com:office:office", "allowincell"), new QName("urn:schemas-microsoft-com:office:office", "allowoverlap"), new QName("urn:schemas-microsoft-com:office:office", "userdrawn"), new QName("urn:schemas-microsoft-com:office:office", "bordertopcolor"), new QName("urn:schemas-microsoft-com:office:office", "borderleftcolor"), new QName("urn:schemas-microsoft-com:office:office", "borderbottomcolor"), new QName("urn:schemas-microsoft-com:office:office", "borderrightcolor"), new QName("urn:schemas-microsoft-com:office:office", "dgmlayout"), new QName("urn:schemas-microsoft-com:office:office", "dgmnodekind"), new QName("urn:schemas-microsoft-com:office:office", "dgmlayoutmru"), new QName("urn:schemas-microsoft-com:office:office", "insetmode"), new QName("", gon.f71247A0), new QName("", "fillcolor"), new QName("", "editas"), new QName("urn:schemas-microsoft-com:office:office", "tableproperties"), new QName("urn:schemas-microsoft-com:office:office", "tablelimits")};
    private static final long serialVersionUID = 1;

    public CTGroupImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTAnchorLock addNewAnchorlock() {
        CTAnchorLock cTAnchorLock;
        synchronized (monitor()) {
            check_orphaned();
            cTAnchorLock = (CTAnchorLock) get_store().add_element_user(PROPERTY_QNAME[16]);
        }
        return cTAnchorLock;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTArc addNewArc() {
        CTArc cTArc;
        synchronized (monitor()) {
            check_orphaned();
            cTArc = (CTArc) get_store().add_element_user(PROPERTY_QNAME[26]);
        }
        return cTArc;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder addNewBorderbottom() {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().add_element_user(PROPERTY_QNAME[18]);
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder addNewBorderleft() {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().add_element_user(PROPERTY_QNAME[19]);
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder addNewBorderright() {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().add_element_user(PROPERTY_QNAME[20]);
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder addNewBordertop() {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().add_element_user(PROPERTY_QNAME[17]);
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTCallout addNewCallout() {
        CTCallout cTCallout;
        synchronized (monitor()) {
            check_orphaned();
            cTCallout = (CTCallout) get_store().add_element_user(PROPERTY_QNAME[11]);
        }
        return cTCallout;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTClientData addNewClientData() {
        CTClientData cTClientData;
        synchronized (monitor()) {
            check_orphaned();
            cTClientData = (CTClientData) get_store().add_element_user(PROPERTY_QNAME[21]);
        }
        return cTClientData;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTClipPath addNewClippath() {
        CTClipPath cTClipPath;
        synchronized (monitor()) {
            check_orphaned();
            cTClipPath = (CTClipPath) get_store().add_element_user(PROPERTY_QNAME[13]);
        }
        return cTClipPath;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTCurve addNewCurve() {
        CTCurve cTCurve;
        synchronized (monitor()) {
            check_orphaned();
            cTCurve = (CTCurve) get_store().add_element_user(PROPERTY_QNAME[27]);
        }
        return cTCurve;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTDiagram addNewDiagram() {
        CTDiagram cTDiagram;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagram = (CTDiagram) get_store().add_element_user(PROPERTY_QNAME[34]);
        }
        return cTDiagram;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTExtrusion addNewExtrusion() {
        CTExtrusion cTExtrusion;
        synchronized (monitor()) {
            check_orphaned();
            cTExtrusion = (CTExtrusion) get_store().add_element_user(PROPERTY_QNAME[10]);
        }
        return cTExtrusion;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTFill addNewFill() {
        CTFill cTFill;
        synchronized (monitor()) {
            check_orphaned();
            cTFill = (CTFill) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTFill;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTFormulas addNewFormulas() {
        CTFormulas cTFormulas;
        synchronized (monitor()) {
            check_orphaned();
            cTFormulas = (CTFormulas) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTFormulas;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTGroup addNewGroup() {
        CTGroup cTGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTGroup = (CTGroup) get_store().add_element_user(PROPERTY_QNAME[23]);
        }
        return cTGroup;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTHandles addNewHandles() {
        CTHandles cTHandles;
        synchronized (monitor()) {
            check_orphaned();
            cTHandles = (CTHandles) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTHandles;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTImage addNewImage() {
        CTImage cTImage;
        synchronized (monitor()) {
            check_orphaned();
            cTImage = (CTImage) get_store().add_element_user(PROPERTY_QNAME[28]);
        }
        return cTImage;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTImageData addNewImagedata() {
        CTImageData cTImageData;
        synchronized (monitor()) {
            check_orphaned();
            cTImageData = (CTImageData) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTImageData;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTLine addNewLine() {
        CTLine cTLine;
        synchronized (monitor()) {
            check_orphaned();
            cTLine = (CTLine) get_store().add_element_user(PROPERTY_QNAME[29]);
        }
        return cTLine;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTLock addNewLock() {
        CTLock cTLock;
        synchronized (monitor()) {
            check_orphaned();
            cTLock = (CTLock) get_store().add_element_user(PROPERTY_QNAME[12]);
        }
        return cTLock;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTOval addNewOval() {
        CTOval cTOval;
        synchronized (monitor()) {
            check_orphaned();
            cTOval = (CTOval) get_store().add_element_user(PROPERTY_QNAME[30]);
        }
        return cTOval;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTPath addNewPath() {
        CTPath cTPath;
        synchronized (monitor()) {
            check_orphaned();
            cTPath = (CTPath) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPath;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTPolyLine addNewPolyline() {
        CTPolyLine cTPolyLine;
        synchronized (monitor()) {
            check_orphaned();
            cTPolyLine = (CTPolyLine) get_store().add_element_user(PROPERTY_QNAME[31]);
        }
        return cTPolyLine;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTRect addNewRect() {
        CTRect cTRect;
        synchronized (monitor()) {
            check_orphaned();
            cTRect = (CTRect) get_store().add_element_user(PROPERTY_QNAME[32]);
        }
        return cTRect;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTRoundRect addNewRoundrect() {
        CTRoundRect cTRoundRect;
        synchronized (monitor()) {
            check_orphaned();
            cTRoundRect = (CTRoundRect) get_store().add_element_user(PROPERTY_QNAME[33]);
        }
        return cTRoundRect;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTShadow addNewShadow() {
        CTShadow cTShadow;
        synchronized (monitor()) {
            check_orphaned();
            cTShadow = (CTShadow) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTShadow;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTShape addNewShape() {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().add_element_user(PROPERTY_QNAME[24]);
        }
        return cTShape;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTShapetype addNewShapetype() {
        CTShapetype cTShapetype;
        synchronized (monitor()) {
            check_orphaned();
            cTShapetype = (CTShapetype) get_store().add_element_user(PROPERTY_QNAME[25]);
        }
        return cTShapetype;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTSignatureLine addNewSignatureline() {
        CTSignatureLine cTSignatureLine;
        synchronized (monitor()) {
            check_orphaned();
            cTSignatureLine = (CTSignatureLine) get_store().add_element_user(PROPERTY_QNAME[14]);
        }
        return cTSignatureLine;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTSkew addNewSkew() {
        CTSkew cTSkew;
        synchronized (monitor()) {
            check_orphaned();
            cTSkew = (CTSkew) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTSkew;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTStroke addNewStroke() {
        CTStroke cTStroke;
        synchronized (monitor()) {
            check_orphaned();
            cTStroke = (CTStroke) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTStroke;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTTextbox addNewTextbox() {
        CTTextbox cTTextbox;
        synchronized (monitor()) {
            check_orphaned();
            cTTextbox = (CTTextbox) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTTextbox;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTRel addNewTextdata() {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().add_element_user(PROPERTY_QNAME[22]);
        }
        return cTRel;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTTextPath addNewTextpath() {
        CTTextPath cTTextPath;
        synchronized (monitor()) {
            check_orphaned();
            cTTextPath = (CTTextPath) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTTextPath;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTWrap addNewWrap() {
        CTWrap cTWrap;
        synchronized (monitor()) {
            check_orphaned();
            cTWrap = (CTWrap) get_store().add_element_user(PROPERTY_QNAME[15]);
        }
        return cTWrap;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse.Enum getAllowincell() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[58]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse.Enum getAllowoverlap() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[59]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getAlt() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[41]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTAnchorLock[] getAnchorlockArray() {
        return (CTAnchorLock[]) getXmlObjectArray(PROPERTY_QNAME[16], new CTAnchorLock[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTAnchorLock> getAnchorlockList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pa4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getAnchorlockArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qa4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setAnchorlockArray(((Integer) obj).intValue(), (CTAnchorLock) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ra4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewAnchorlock(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sa4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeAnchorlock(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ta4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfAnchorlockArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTArc[] getArcArray() {
        return (CTArc[]) getXmlObjectArray(PROPERTY_QNAME[26], new CTArc[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTArc> getArcList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ea4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getArcArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fa4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setArcArray(((Integer) obj).intValue(), (CTArc) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ga4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewArc(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ha4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeArc(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ia4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfArcArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder[] getBorderbottomArray() {
        return (CTBorder[]) getXmlObjectArray(PROPERTY_QNAME[18], new CTBorder[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTBorder> getBorderbottomList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ne4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getBorderbottomArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oe4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setBorderbottomArray(((Integer) obj).intValue(), (CTBorder) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pe4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewBorderbottom(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qe4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeBorderbottom(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.re4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfBorderbottomArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getBorderbottomcolor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[63]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder[] getBorderleftArray() {
        return (CTBorder[]) getXmlObjectArray(PROPERTY_QNAME[19], new CTBorder[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTBorder> getBorderleftList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rd4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getBorderleftArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sd4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setBorderleftArray(((Integer) obj).intValue(), (CTBorder) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.td4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewBorderleft(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ud4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeBorderleft(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vd4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfBorderleftArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getBorderleftcolor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[62]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder[] getBorderrightArray() {
        return (CTBorder[]) getXmlObjectArray(PROPERTY_QNAME[20], new CTBorder[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTBorder> getBorderrightList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.pf4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getBorderrightArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qf4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setBorderrightArray(((Integer) obj).intValue(), (CTBorder) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rf4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewBorderright(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sf4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeBorderright(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tf4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfBorderrightArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getBorderrightcolor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[64]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder[] getBordertopArray() {
        return (CTBorder[]) getXmlObjectArray(PROPERTY_QNAME[17], new CTBorder[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTBorder> getBordertopList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ye4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getBordertopArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ze4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setBordertopArray(((Integer) obj).intValue(), (CTBorder) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.af4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewBordertop(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bf4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeBordertop(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cf4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfBordertopArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getBordertopcolor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[61]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse.Enum getBullet() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[52]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse.Enum getButton() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[50]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTCallout[] getCalloutArray() {
        return (CTCallout[]) getXmlObjectArray(PROPERTY_QNAME[11], new CTCallout[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTCallout> getCalloutList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sc4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getCalloutArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tc4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setCalloutArray(((Integer) obj).intValue(), (CTCallout) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uc4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewCallout(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vc4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeCallout(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wc4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfCalloutArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getClass1() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[39]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTClientData[] getClientDataArray() {
        return (CTClientData[]) getXmlObjectArray(PROPERTY_QNAME[21], new CTClientData[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTClientData> getClientDataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.uf4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getClientDataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vf4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setClientDataArray(((Integer) obj).intValue(), (CTClientData) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wf4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewClientData(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xf4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeClientData(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yf4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfClientDataArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTClipPath[] getClippathArray() {
        return (CTClipPath[]) getXmlObjectArray(PROPERTY_QNAME[13], new CTClipPath[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTClipPath> getClippathList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ja4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getClippathArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ka4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setClippathArray(((Integer) obj).intValue(), (CTClipPath) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.la4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewClippath(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ma4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeClippath(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.na4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfClippathArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getCoordorigin() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[43]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getCoordsize() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[42]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTCurve[] getCurveArray() {
        return (CTCurve[]) getXmlObjectArray(PROPERTY_QNAME[27], new CTCurve[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTCurve> getCurveList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y94
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getCurveArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z94
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setCurveArray(((Integer) obj).intValue(), (CTCurve) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.aa4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewCurve(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ba4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeCurve(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ca4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfCurveArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public BigInteger getDgmlayout() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[65]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public BigInteger getDgmlayoutmru() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[67]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public BigInteger getDgmnodekind() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[66]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTDiagram[] getDiagramArray() {
        return (CTDiagram[]) getXmlObjectArray(PROPERTY_QNAME[34], new CTDiagram[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTDiagram> getDiagramList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lb4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getDiagramArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mb4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setDiagramArray(((Integer) obj).intValue(), (CTDiagram) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nb4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewDiagram(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ob4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeDiagram(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pb4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfDiagramArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse.Enum getDoubleclicknotify() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[49]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STEditAs.Enum getEditas() {
        STEditAs.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[71]);
            r3 = simpleValue == null ? null : (STEditAs.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTExtrusion[] getExtrusionArray() {
        return (CTExtrusion[]) getXmlObjectArray(PROPERTY_QNAME[10], new CTExtrusion[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTExtrusion> getExtrusionList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ua4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getExtrusionArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.va4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setExtrusionArray(((Integer) obj).intValue(), (CTExtrusion) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wa4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewExtrusion(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xa4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeExtrusion(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ya4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfExtrusionArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTFill[] getFillArray() {
        return (CTFill[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTFill[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTFill> getFillList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ef4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getFillArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ff4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setFillArray(((Integer) obj).intValue(), (CTFill) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gf4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewFill(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hf4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeFill(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.if4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfFillArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getFillcolor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[70]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse.Enum getFilled() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[69]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTFormulas[] getFormulasArray() {
        return (CTFormulas[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTFormulas[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTFormulas> getFormulasList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bc4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getFormulasArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cc4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setFormulasArray(((Integer) obj).intValue(), (CTFormulas) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dc4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewFormulas(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ec4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeFormulas(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fc4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfFormulasArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTGroup[] getGroupArray() {
        return (CTGroup[]) getXmlObjectArray(PROPERTY_QNAME[23], new CTGroup[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTGroup> getGroupList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ab4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getGroupArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bb4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setGroupArray(((Integer) obj).intValue(), (CTGroup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cb4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewGroup(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.db4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeGroup(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.eb4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfGroupArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTHandles[] getHandlesArray() {
        return (CTHandles[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTHandles[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTHandles> getHandlesList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.se4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getHandlesArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.df4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setHandlesArray(((Integer) obj).intValue(), (CTHandles) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.of4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewHandles(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zf4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeHandles(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kg4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfHandlesArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse.Enum getHr() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[53]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STHrAlign.Enum getHralign() {
        STHrAlign.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[57]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[57]);
            }
            r5 = simpleValue == null ? null : (STHrAlign.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getHref() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[37]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse.Enum getHrnoshade() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[55]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public float getHrpct() {
        float floatValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[56]);
            floatValue = simpleValue == null ? 0.0f : simpleValue.getFloatValue();
        }
        return floatValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse.Enum getHrstd() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[54]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[35]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTImage[] getImageArray() {
        return (CTImage[]) getXmlObjectArray(PROPERTY_QNAME[28], new CTImage[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTImage> getImageList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gd4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getImageArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hd4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setImageArray(((Integer) obj).intValue(), (CTImage) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.id4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewImage(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jd4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeImage(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kd4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfImageArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTImageData[] getImagedataArray() {
        return (CTImageData[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTImageData[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTImageData> getImagedataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.md4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getImagedataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nd4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setImagedataArray(((Integer) obj).intValue(), (CTImageData) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.od4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewImagedata(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pd4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeImagedata(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qd4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfImagedataArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STInsetMode.Enum getInsetmode() {
        STInsetMode.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[68]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[68]);
            }
            r5 = simpleValue == null ? null : (STInsetMode.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTLine[] getLineArray() {
        return (CTLine[]) getXmlObjectArray(PROPERTY_QNAME[29], new CTLine[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTLine> getLineList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fb4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getLineArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gb4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setLineArray(((Integer) obj).intValue(), (CTLine) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hb4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewLine(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ib4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeLine(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jb4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfLineArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTLock[] getLockArray() {
        return (CTLock[]) getXmlObjectArray(PROPERTY_QNAME[12], new CTLock[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTLock> getLockList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mc4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getLockArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nc4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setLockArray(((Integer) obj).intValue(), (CTLock) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.oc4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewLock(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pc4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeLock(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qc4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfLockArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse.Enum getOned() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[47]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTOval[] getOvalArray() {
        return (CTOval[]) getXmlObjectArray(PROPERTY_QNAME[30], new CTOval[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTOval> getOvalList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jf4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getOvalArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kf4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setOvalArray(((Integer) obj).intValue(), (CTOval) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lf4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewOval(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mf4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeOval(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nf4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfOvalArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTPath[] getPathArray() {
        return (CTPath[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTPath[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTPath> getPathList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xd4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getPathArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yd4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setPathArray(((Integer) obj).intValue(), (CTPath) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zd4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewPath(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ae4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removePath(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.be4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfPathArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTPolyLine[] getPolylineArray() {
        return (CTPolyLine[]) getXmlObjectArray(PROPERTY_QNAME[31], new CTPolyLine[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTPolyLine> getPolylineList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.da4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getPolylineArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oa4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setPolylineArray(((Integer) obj).intValue(), (CTPolyLine) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.za4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewPolyline(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kb4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removePolyline(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vb4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfPolylineArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse.Enum getPrint() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[45]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTRect[] getRectArray() {
        return (CTRect[]) getXmlObjectArray(PROPERTY_QNAME[32], new CTRect[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTRect> getRectList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hc4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getRectArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ic4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setRectArray(((Integer) obj).intValue(), (CTRect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jc4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewRect(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kc4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeRect(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lc4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfRectArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public BigInteger getRegroupid() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[48]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTRoundRect[] getRoundrectArray() {
        return (CTRoundRect[]) getXmlObjectArray(PROPERTY_QNAME[33], new CTRoundRect[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTRoundRect> getRoundrectList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wb4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getRoundrectArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xb4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setRoundrectArray(((Integer) obj).intValue(), (CTRoundRect) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yb4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewRoundrect(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zb4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeRoundrect(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ac4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfRoundrectArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTShadow[] getShadowArray() {
        return (CTShadow[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTShadow[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTShadow> getShadowList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ie4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getShadowArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.je4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setShadowArray(((Integer) obj).intValue(), (CTShadow) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ke4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewShadow(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.le4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeShadow(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.me4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfShadowArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTShape[] getShapeArray() {
        return (CTShape[]) getXmlObjectArray(PROPERTY_QNAME[24], new CTShape[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTShape> getShapeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bd4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getShapeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cd4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setShapeArray(((Integer) obj).intValue(), (CTShape) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dd4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewShape(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ed4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeShape(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fd4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfShapeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTShapetype[] getShapetypeArray() {
        return (CTShapetype[]) getXmlObjectArray(PROPERTY_QNAME[25], new CTShapetype[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTShapetype> getShapetypeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ag4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getShapetypeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bg4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setShapetypeArray(((Integer) obj).intValue(), (CTShapetype) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.cg4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewShapetype(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.dg4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeShapetype(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.eg4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfShapetypeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTSignatureLine[] getSignaturelineArray() {
        return (CTSignatureLine[]) getXmlObjectArray(PROPERTY_QNAME[14], new CTSignatureLine[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTSignatureLine> getSignaturelineList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fg4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getSignaturelineArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gg4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setSignaturelineArray(((Integer) obj).intValue(), (CTSignatureLine) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hg4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewSignatureline(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ig4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeSignatureline(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jg4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfSignaturelineArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTSkew[] getSkewArray() {
        return (CTSkew[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTSkew[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTSkew> getSkewList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gc4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getSkewArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rc4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setSkewArray(((Integer) obj).intValue(), (CTSkew) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.xc4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewSkew(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.yc4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeSkew(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.zc4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfSkewArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getSpid() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[46]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTStroke[] getStrokeArray() {
        return (CTStroke[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTStroke[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTStroke> getStrokeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qb4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getStrokeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rb4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setStrokeArray(((Integer) obj).intValue(), (CTStroke) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sb4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewStroke(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.tb4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeStroke(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ub4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfStrokeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getStyle() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[36]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getTablelimits() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[73]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getTableproperties() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[72]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getTarget() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[38]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTTextbox[] getTextboxArray() {
        return (CTTextbox[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTTextbox[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTTextbox> getTextboxList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.te4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getTextboxArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ue4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setTextboxArray(((Integer) obj).intValue(), (CTTextbox) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ve4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewTextbox(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.we4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeTextbox(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xe4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfTextboxArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTRel[] getTextdataArray() {
        return (CTRel[]) getXmlObjectArray(PROPERTY_QNAME[22], new CTRel[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTRel> getTextdataList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t94
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getTextdataArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u94
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setTextdataArray(((Integer) obj).intValue(), (CTRel) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v94
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewTextdata(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w94
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeTextdata(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x94
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfTextdataArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTTextPath[] getTextpathArray() {
        return (CTTextPath[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTTextPath[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTTextPath> getTextpathList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ce4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getTextpathArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.de4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setTextpathArray(((Integer) obj).intValue(), (CTTextPath) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ee4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewTextpath(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fe4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeTextpath(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ge4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfTextpathArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getTitle() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[40]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse.Enum getUserdrawn() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[60]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse.Enum getUserhidden() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[51]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTWrap[] getWrapArray() {
        return (CTWrap[]) getXmlObjectArray(PROPERTY_QNAME[15], new CTWrap[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public List<CTWrap> getWrapList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.s94
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.getWrapArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ad4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupImpl.this.setWrapArray(((Integer) obj).intValue(), (CTWrap) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ld4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupImpl.this.insertNewWrap(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wd4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupImpl.this.removeWrap(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.he4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupImpl.this.sizeOfWrapArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public String getWrapcoords() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[44]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTAnchorLock insertNewAnchorlock(int i) {
        CTAnchorLock cTAnchorLock;
        synchronized (monitor()) {
            check_orphaned();
            cTAnchorLock = (CTAnchorLock) get_store().insert_element_user(PROPERTY_QNAME[16], i);
        }
        return cTAnchorLock;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTArc insertNewArc(int i) {
        CTArc cTArc;
        synchronized (monitor()) {
            check_orphaned();
            cTArc = (CTArc) get_store().insert_element_user(PROPERTY_QNAME[26], i);
        }
        return cTArc;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder insertNewBorderbottom(int i) {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().insert_element_user(PROPERTY_QNAME[18], i);
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder insertNewBorderleft(int i) {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().insert_element_user(PROPERTY_QNAME[19], i);
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder insertNewBorderright(int i) {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().insert_element_user(PROPERTY_QNAME[20], i);
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder insertNewBordertop(int i) {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().insert_element_user(PROPERTY_QNAME[17], i);
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTCallout insertNewCallout(int i) {
        CTCallout cTCallout;
        synchronized (monitor()) {
            check_orphaned();
            cTCallout = (CTCallout) get_store().insert_element_user(PROPERTY_QNAME[11], i);
        }
        return cTCallout;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTClientData insertNewClientData(int i) {
        CTClientData cTClientData;
        synchronized (monitor()) {
            check_orphaned();
            cTClientData = (CTClientData) get_store().insert_element_user(PROPERTY_QNAME[21], i);
        }
        return cTClientData;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTClipPath insertNewClippath(int i) {
        CTClipPath cTClipPath;
        synchronized (monitor()) {
            check_orphaned();
            cTClipPath = (CTClipPath) get_store().insert_element_user(PROPERTY_QNAME[13], i);
        }
        return cTClipPath;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTCurve insertNewCurve(int i) {
        CTCurve cTCurve;
        synchronized (monitor()) {
            check_orphaned();
            cTCurve = (CTCurve) get_store().insert_element_user(PROPERTY_QNAME[27], i);
        }
        return cTCurve;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTDiagram insertNewDiagram(int i) {
        CTDiagram cTDiagram;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagram = (CTDiagram) get_store().insert_element_user(PROPERTY_QNAME[34], i);
        }
        return cTDiagram;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTExtrusion insertNewExtrusion(int i) {
        CTExtrusion cTExtrusion;
        synchronized (monitor()) {
            check_orphaned();
            cTExtrusion = (CTExtrusion) get_store().insert_element_user(PROPERTY_QNAME[10], i);
        }
        return cTExtrusion;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTFill insertNewFill(int i) {
        CTFill cTFill;
        synchronized (monitor()) {
            check_orphaned();
            cTFill = (CTFill) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTFill;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTFormulas insertNewFormulas(int i) {
        CTFormulas cTFormulas;
        synchronized (monitor()) {
            check_orphaned();
            cTFormulas = (CTFormulas) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTFormulas;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTGroup insertNewGroup(int i) {
        CTGroup cTGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTGroup = (CTGroup) get_store().insert_element_user(PROPERTY_QNAME[23], i);
        }
        return cTGroup;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTHandles insertNewHandles(int i) {
        CTHandles cTHandles;
        synchronized (monitor()) {
            check_orphaned();
            cTHandles = (CTHandles) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTHandles;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTImage insertNewImage(int i) {
        CTImage cTImage;
        synchronized (monitor()) {
            check_orphaned();
            cTImage = (CTImage) get_store().insert_element_user(PROPERTY_QNAME[28], i);
        }
        return cTImage;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTImageData insertNewImagedata(int i) {
        CTImageData cTImageData;
        synchronized (monitor()) {
            check_orphaned();
            cTImageData = (CTImageData) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTImageData;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTLine insertNewLine(int i) {
        CTLine cTLine;
        synchronized (monitor()) {
            check_orphaned();
            cTLine = (CTLine) get_store().insert_element_user(PROPERTY_QNAME[29], i);
        }
        return cTLine;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTLock insertNewLock(int i) {
        CTLock cTLock;
        synchronized (monitor()) {
            check_orphaned();
            cTLock = (CTLock) get_store().insert_element_user(PROPERTY_QNAME[12], i);
        }
        return cTLock;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTOval insertNewOval(int i) {
        CTOval cTOval;
        synchronized (monitor()) {
            check_orphaned();
            cTOval = (CTOval) get_store().insert_element_user(PROPERTY_QNAME[30], i);
        }
        return cTOval;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTPath insertNewPath(int i) {
        CTPath cTPath;
        synchronized (monitor()) {
            check_orphaned();
            cTPath = (CTPath) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTPath;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTPolyLine insertNewPolyline(int i) {
        CTPolyLine cTPolyLine;
        synchronized (monitor()) {
            check_orphaned();
            cTPolyLine = (CTPolyLine) get_store().insert_element_user(PROPERTY_QNAME[31], i);
        }
        return cTPolyLine;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTRect insertNewRect(int i) {
        CTRect cTRect;
        synchronized (monitor()) {
            check_orphaned();
            cTRect = (CTRect) get_store().insert_element_user(PROPERTY_QNAME[32], i);
        }
        return cTRect;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTRoundRect insertNewRoundrect(int i) {
        CTRoundRect cTRoundRect;
        synchronized (monitor()) {
            check_orphaned();
            cTRoundRect = (CTRoundRect) get_store().insert_element_user(PROPERTY_QNAME[33], i);
        }
        return cTRoundRect;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTShadow insertNewShadow(int i) {
        CTShadow cTShadow;
        synchronized (monitor()) {
            check_orphaned();
            cTShadow = (CTShadow) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTShadow;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTShape insertNewShape(int i) {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().insert_element_user(PROPERTY_QNAME[24], i);
        }
        return cTShape;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTShapetype insertNewShapetype(int i) {
        CTShapetype cTShapetype;
        synchronized (monitor()) {
            check_orphaned();
            cTShapetype = (CTShapetype) get_store().insert_element_user(PROPERTY_QNAME[25], i);
        }
        return cTShapetype;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTSignatureLine insertNewSignatureline(int i) {
        CTSignatureLine cTSignatureLine;
        synchronized (monitor()) {
            check_orphaned();
            cTSignatureLine = (CTSignatureLine) get_store().insert_element_user(PROPERTY_QNAME[14], i);
        }
        return cTSignatureLine;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTSkew insertNewSkew(int i) {
        CTSkew cTSkew;
        synchronized (monitor()) {
            check_orphaned();
            cTSkew = (CTSkew) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTSkew;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTStroke insertNewStroke(int i) {
        CTStroke cTStroke;
        synchronized (monitor()) {
            check_orphaned();
            cTStroke = (CTStroke) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTStroke;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTTextbox insertNewTextbox(int i) {
        CTTextbox cTTextbox;
        synchronized (monitor()) {
            check_orphaned();
            cTTextbox = (CTTextbox) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTTextbox;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTRel insertNewTextdata(int i) {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().insert_element_user(PROPERTY_QNAME[22], i);
        }
        return cTRel;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTTextPath insertNewTextpath(int i) {
        CTTextPath cTTextPath;
        synchronized (monitor()) {
            check_orphaned();
            cTTextPath = (CTTextPath) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTTextPath;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTWrap insertNewWrap(int i) {
        CTWrap cTWrap;
        synchronized (monitor()) {
            check_orphaned();
            cTWrap = (CTWrap) get_store().insert_element_user(PROPERTY_QNAME[15], i);
        }
        return cTWrap;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetAllowincell() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[58]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetAllowoverlap() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[59]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetAlt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[41]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetBorderbottomcolor() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[63]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetBorderleftcolor() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[62]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetBorderrightcolor() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[64]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetBordertopcolor() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[61]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetBullet() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[52]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetButton() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[50]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetClass1() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[39]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetCoordorigin() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[43]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetCoordsize() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[42]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetDgmlayout() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[65]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetDgmlayoutmru() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[67]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetDgmnodekind() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[66]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetDoubleclicknotify() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[49]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetEditas() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[71]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetFillcolor() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[70]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetFilled() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[69]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetHr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[53]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetHralign() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[57]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetHref() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[37]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetHrnoshade() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[55]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetHrpct() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[56]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetHrstd() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[54]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[35]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetInsetmode() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[68]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetOned() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[47]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetPrint() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[45]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetRegroupid() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[48]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetSpid() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[46]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetStyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[36]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetTablelimits() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[73]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetTableproperties() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[72]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetTarget() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[38]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetTitle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[40]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetUserdrawn() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[60]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetUserhidden() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[51]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public boolean isSetWrapcoords() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[44]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeAnchorlock(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeArc(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[26], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeBorderbottom(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeBorderleft(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeBorderright(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeBordertop(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeCallout(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeClientData(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeClippath(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeCurve(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[27], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeDiagram(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[34], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeExtrusion(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeFill(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeFormulas(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeGroup(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[23], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeHandles(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeImage(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[28], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeImagedata(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeLine(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[29], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeLock(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeOval(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[30], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removePath(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removePolyline(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[31], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeRect(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[32], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeRoundrect(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[33], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeShadow(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeShape(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[24], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeShapetype(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[25], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeSignatureline(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeSkew(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeStroke(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeTextbox(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeTextdata(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeTextpath(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void removeWrap(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], i);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setAllowincell(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[58]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[58]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setAllowoverlap(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[59]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[59]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setAlt(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[41]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[41]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setAnchorlockArray(CTAnchorLock[] cTAnchorLockArr) {
        check_orphaned();
        arraySetterHelper(cTAnchorLockArr, PROPERTY_QNAME[16]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setArcArray(CTArc[] cTArcArr) {
        check_orphaned();
        arraySetterHelper(cTArcArr, PROPERTY_QNAME[26]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setBorderbottomArray(CTBorder[] cTBorderArr) {
        check_orphaned();
        arraySetterHelper(cTBorderArr, PROPERTY_QNAME[18]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setBorderbottomcolor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[63]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[63]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setBorderleftArray(CTBorder[] cTBorderArr) {
        check_orphaned();
        arraySetterHelper(cTBorderArr, PROPERTY_QNAME[19]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setBorderleftcolor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[62]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[62]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setBorderrightArray(CTBorder[] cTBorderArr) {
        check_orphaned();
        arraySetterHelper(cTBorderArr, PROPERTY_QNAME[20]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setBorderrightcolor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[64]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[64]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setBordertopArray(CTBorder[] cTBorderArr) {
        check_orphaned();
        arraySetterHelper(cTBorderArr, PROPERTY_QNAME[17]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setBordertopcolor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[61]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[61]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setBullet(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[52]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[52]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setButton(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[50]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[50]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setCalloutArray(CTCallout[] cTCalloutArr) {
        check_orphaned();
        arraySetterHelper(cTCalloutArr, PROPERTY_QNAME[11]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setClass1(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[39]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[39]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setClientDataArray(CTClientData[] cTClientDataArr) {
        check_orphaned();
        arraySetterHelper(cTClientDataArr, PROPERTY_QNAME[21]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setClippathArray(CTClipPath[] cTClipPathArr) {
        check_orphaned();
        arraySetterHelper(cTClipPathArr, PROPERTY_QNAME[13]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setCoordorigin(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[43]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[43]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setCoordsize(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[42]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[42]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setCurveArray(CTCurve[] cTCurveArr) {
        check_orphaned();
        arraySetterHelper(cTCurveArr, PROPERTY_QNAME[27]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setDgmlayout(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[65]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[65]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setDgmlayoutmru(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[67]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[67]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setDgmnodekind(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[66]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[66]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setDiagramArray(CTDiagram[] cTDiagramArr) {
        check_orphaned();
        arraySetterHelper(cTDiagramArr, PROPERTY_QNAME[34]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setDoubleclicknotify(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[49]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[49]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setEditas(STEditAs.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[71]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[71]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setExtrusionArray(CTExtrusion[] cTExtrusionArr) {
        check_orphaned();
        arraySetterHelper(cTExtrusionArr, PROPERTY_QNAME[10]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setFillArray(CTFill[] cTFillArr) {
        check_orphaned();
        arraySetterHelper(cTFillArr, PROPERTY_QNAME[3]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setFillcolor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[70]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[70]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setFilled(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[69]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[69]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setFormulasArray(CTFormulas[] cTFormulasArr) {
        check_orphaned();
        arraySetterHelper(cTFormulasArr, PROPERTY_QNAME[1]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setGroupArray(CTGroup[] cTGroupArr) {
        check_orphaned();
        arraySetterHelper(cTGroupArr, PROPERTY_QNAME[23]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setHandlesArray(CTHandles[] cTHandlesArr) {
        check_orphaned();
        arraySetterHelper(cTHandlesArr, PROPERTY_QNAME[2]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setHr(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[53]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[53]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setHralign(STHrAlign.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[57]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[57]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setHref(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[37]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[37]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setHrnoshade(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[55]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[55]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setHrpct(float f) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[56]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[56]);
            }
            simpleValue.setFloatValue(f);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setHrstd(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[54]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[54]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setId(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[35]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[35]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setImageArray(CTImage[] cTImageArr) {
        check_orphaned();
        arraySetterHelper(cTImageArr, PROPERTY_QNAME[28]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setImagedataArray(CTImageData[] cTImageDataArr) {
        check_orphaned();
        arraySetterHelper(cTImageDataArr, PROPERTY_QNAME[8]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setInsetmode(STInsetMode.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[68]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[68]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setLineArray(CTLine[] cTLineArr) {
        check_orphaned();
        arraySetterHelper(cTLineArr, PROPERTY_QNAME[29]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setLockArray(CTLock[] cTLockArr) {
        check_orphaned();
        arraySetterHelper(cTLockArr, PROPERTY_QNAME[12]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setOned(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[47]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[47]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setOvalArray(CTOval[] cTOvalArr) {
        check_orphaned();
        arraySetterHelper(cTOvalArr, PROPERTY_QNAME[30]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setPathArray(CTPath[] cTPathArr) {
        check_orphaned();
        arraySetterHelper(cTPathArr, PROPERTY_QNAME[0]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setPolylineArray(CTPolyLine[] cTPolyLineArr) {
        check_orphaned();
        arraySetterHelper(cTPolyLineArr, PROPERTY_QNAME[31]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setPrint(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[45]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[45]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setRectArray(CTRect[] cTRectArr) {
        check_orphaned();
        arraySetterHelper(cTRectArr, PROPERTY_QNAME[32]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setRegroupid(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[48]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[48]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setRoundrectArray(CTRoundRect[] cTRoundRectArr) {
        check_orphaned();
        arraySetterHelper(cTRoundRectArr, PROPERTY_QNAME[33]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setShadowArray(CTShadow[] cTShadowArr) {
        check_orphaned();
        arraySetterHelper(cTShadowArr, PROPERTY_QNAME[5]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setShapeArray(CTShape[] cTShapeArr) {
        check_orphaned();
        arraySetterHelper(cTShapeArr, PROPERTY_QNAME[24]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setShapetypeArray(CTShapetype[] cTShapetypeArr) {
        check_orphaned();
        arraySetterHelper(cTShapetypeArr, PROPERTY_QNAME[25]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setSignaturelineArray(CTSignatureLine[] cTSignatureLineArr) {
        check_orphaned();
        arraySetterHelper(cTSignatureLineArr, PROPERTY_QNAME[14]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setSkewArray(CTSkew[] cTSkewArr) {
        check_orphaned();
        arraySetterHelper(cTSkewArr, PROPERTY_QNAME[9]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setSpid(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[46]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[46]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setStrokeArray(CTStroke[] cTStrokeArr) {
        check_orphaned();
        arraySetterHelper(cTStrokeArr, PROPERTY_QNAME[4]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setStyle(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[36]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[36]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setTablelimits(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[73]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[73]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setTableproperties(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[72]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[72]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setTarget(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[38]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[38]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setTextboxArray(CTTextbox[] cTTextboxArr) {
        check_orphaned();
        arraySetterHelper(cTTextboxArr, PROPERTY_QNAME[6]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setTextdataArray(CTRel[] cTRelArr) {
        check_orphaned();
        arraySetterHelper(cTRelArr, PROPERTY_QNAME[22]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setTextpathArray(CTTextPath[] cTTextPathArr) {
        check_orphaned();
        arraySetterHelper(cTTextPathArr, PROPERTY_QNAME[7]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setTitle(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[40]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[40]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setUserdrawn(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[60]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[60]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setUserhidden(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[51]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[51]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setWrapArray(CTWrap[] cTWrapArr) {
        check_orphaned();
        arraySetterHelper(cTWrapArr, PROPERTY_QNAME[15]);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setWrapcoords(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[44]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[44]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfAnchorlockArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[16]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfArcArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[26]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfBorderbottomArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[18]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfBorderleftArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[19]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfBorderrightArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[20]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfBordertopArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[17]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfCalloutArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[11]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfClientDataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[21]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfClippathArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[13]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfCurveArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[27]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfDiagramArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[34]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfExtrusionArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[10]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfFillArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfFormulasArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfGroupArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[23]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfHandlesArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfImageArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[28]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfImagedataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfLineArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[29]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfLockArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[12]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfOvalArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[30]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfPathArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfPolylineArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[31]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfRectArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[32]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfRoundrectArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[33]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfShadowArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfShapeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[24]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfShapetypeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[25]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfSignaturelineArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[14]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfSkewArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfStrokeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfTextboxArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfTextdataArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[22]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfTextpathArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public int sizeOfWrapArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[15]);
        }
        return count_elements;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetAllowincell() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[58]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetAllowoverlap() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[59]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetAlt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[41]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetBorderbottomcolor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[63]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetBorderleftcolor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[62]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetBorderrightcolor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[64]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetBordertopcolor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[61]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetBullet() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[52]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetButton() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[50]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetClass1() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[39]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetCoordorigin() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[43]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetCoordsize() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[42]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetDgmlayout() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[65]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetDgmlayoutmru() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[67]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetDgmnodekind() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[66]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetDoubleclicknotify() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[49]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetEditas() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[71]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetFillcolor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[70]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetFilled() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[69]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetHr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[53]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetHralign() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[57]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetHref() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[37]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetHrnoshade() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[55]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetHrpct() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[56]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetHrstd() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[54]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[35]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetInsetmode() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[68]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetOned() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[47]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetPrint() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[45]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetRegroupid() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[48]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetSpid() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[46]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetStyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[36]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetTablelimits() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[73]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetTableproperties() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[72]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetTarget() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[38]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetTitle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[40]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetUserdrawn() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[60]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetUserhidden() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[51]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void unsetWrapcoords() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[44]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse xgetAllowincell() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[58]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse xgetAllowoverlap() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[59]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetAlt() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[41]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetBorderbottomcolor() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[63]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetBorderleftcolor() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[62]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetBorderrightcolor() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[64]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetBordertopcolor() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[61]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse xgetBullet() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[52]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse xgetButton() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[50]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetClass1() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[39]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetCoordorigin() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[43]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetCoordsize() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[42]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STDiagramLayout xgetDgmlayout() {
        STDiagramLayout sTDiagramLayout;
        synchronized (monitor()) {
            check_orphaned();
            sTDiagramLayout = (STDiagramLayout) get_store().find_attribute_user(PROPERTY_QNAME[65]);
        }
        return sTDiagramLayout;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STDiagramLayout xgetDgmlayoutmru() {
        STDiagramLayout sTDiagramLayout;
        synchronized (monitor()) {
            check_orphaned();
            sTDiagramLayout = (STDiagramLayout) get_store().find_attribute_user(PROPERTY_QNAME[67]);
        }
        return sTDiagramLayout;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlInteger xgetDgmnodekind() {
        XmlInteger xmlInteger;
        synchronized (monitor()) {
            check_orphaned();
            xmlInteger = (XmlInteger) get_store().find_attribute_user(PROPERTY_QNAME[66]);
        }
        return xmlInteger;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse xgetDoubleclicknotify() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[49]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STEditAs xgetEditas() {
        STEditAs sTEditAs;
        synchronized (monitor()) {
            check_orphaned();
            sTEditAs = (STEditAs) get_store().find_attribute_user(PROPERTY_QNAME[71]);
        }
        return sTEditAs;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STColorType xgetFillcolor() {
        STColorType sTColorType;
        synchronized (monitor()) {
            check_orphaned();
            sTColorType = (STColorType) get_store().find_attribute_user(PROPERTY_QNAME[70]);
        }
        return sTColorType;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse xgetFilled() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[69]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse xgetHr() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[53]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STHrAlign xgetHralign() {
        STHrAlign sTHrAlign;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTHrAlign = (STHrAlign) typeStore.find_attribute_user(qNameArr[57]);
            if (sTHrAlign == null) {
                sTHrAlign = (STHrAlign) get_default_attribute_value(qNameArr[57]);
            }
        }
        return sTHrAlign;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetHref() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[37]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse xgetHrnoshade() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[55]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlFloat xgetHrpct() {
        XmlFloat xmlFloat;
        synchronized (monitor()) {
            check_orphaned();
            xmlFloat = (XmlFloat) get_store().find_attribute_user(PROPERTY_QNAME[56]);
        }
        return xmlFloat;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse xgetHrstd() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[54]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetId() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[35]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STInsetMode xgetInsetmode() {
        STInsetMode sTInsetMode;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTInsetMode = (STInsetMode) typeStore.find_attribute_user(qNameArr[68]);
            if (sTInsetMode == null) {
                sTInsetMode = (STInsetMode) get_default_attribute_value(qNameArr[68]);
            }
        }
        return sTInsetMode;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse xgetOned() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[47]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse xgetPrint() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[45]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlInteger xgetRegroupid() {
        XmlInteger xmlInteger;
        synchronized (monitor()) {
            check_orphaned();
            xmlInteger = (XmlInteger) get_store().find_attribute_user(PROPERTY_QNAME[48]);
        }
        return xmlInteger;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetSpid() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[46]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetStyle() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[36]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetTablelimits() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[73]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetTableproperties() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[72]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetTarget() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[38]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetTitle() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[40]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse xgetUserdrawn() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[60]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public STTrueFalse xgetUserhidden() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[51]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public XmlString xgetWrapcoords() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[44]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetAllowincell(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[58]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[58]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetAllowoverlap(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[59]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[59]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetAlt(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[41]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[41]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetBorderbottomcolor(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[63]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[63]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetBorderleftcolor(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[62]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[62]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetBorderrightcolor(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[64]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[64]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetBordertopcolor(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[61]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[61]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetBullet(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[52]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[52]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetButton(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[50]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[50]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetClass1(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[39]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[39]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetCoordorigin(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[43]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[43]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetCoordsize(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[42]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[42]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetDgmlayout(STDiagramLayout sTDiagramLayout) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDiagramLayout sTDiagramLayout2 = (STDiagramLayout) typeStore.find_attribute_user(qNameArr[65]);
            if (sTDiagramLayout2 == null) {
                sTDiagramLayout2 = (STDiagramLayout) get_store().add_attribute_user(qNameArr[65]);
            }
            sTDiagramLayout2.set(sTDiagramLayout);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetDgmlayoutmru(STDiagramLayout sTDiagramLayout) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDiagramLayout sTDiagramLayout2 = (STDiagramLayout) typeStore.find_attribute_user(qNameArr[67]);
            if (sTDiagramLayout2 == null) {
                sTDiagramLayout2 = (STDiagramLayout) get_store().add_attribute_user(qNameArr[67]);
            }
            sTDiagramLayout2.set(sTDiagramLayout);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetDgmnodekind(XmlInteger xmlInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInteger xmlInteger2 = (XmlInteger) typeStore.find_attribute_user(qNameArr[66]);
            if (xmlInteger2 == null) {
                xmlInteger2 = (XmlInteger) get_store().add_attribute_user(qNameArr[66]);
            }
            xmlInteger2.set(xmlInteger);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetDoubleclicknotify(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[49]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[49]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetEditas(STEditAs sTEditAs) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STEditAs sTEditAs2 = (STEditAs) typeStore.find_attribute_user(qNameArr[71]);
            if (sTEditAs2 == null) {
                sTEditAs2 = (STEditAs) get_store().add_attribute_user(qNameArr[71]);
            }
            sTEditAs2.set(sTEditAs);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetFillcolor(STColorType sTColorType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STColorType sTColorType2 = (STColorType) typeStore.find_attribute_user(qNameArr[70]);
            if (sTColorType2 == null) {
                sTColorType2 = (STColorType) get_store().add_attribute_user(qNameArr[70]);
            }
            sTColorType2.set(sTColorType);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetFilled(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[69]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[69]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetHr(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[53]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[53]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetHralign(STHrAlign sTHrAlign) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STHrAlign sTHrAlign2 = (STHrAlign) typeStore.find_attribute_user(qNameArr[57]);
            if (sTHrAlign2 == null) {
                sTHrAlign2 = (STHrAlign) get_store().add_attribute_user(qNameArr[57]);
            }
            sTHrAlign2.set(sTHrAlign);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetHref(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[37]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[37]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetHrnoshade(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[55]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[55]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetHrpct(XmlFloat xmlFloat) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlFloat xmlFloat2 = (XmlFloat) typeStore.find_attribute_user(qNameArr[56]);
            if (xmlFloat2 == null) {
                xmlFloat2 = (XmlFloat) get_store().add_attribute_user(qNameArr[56]);
            }
            xmlFloat2.set(xmlFloat);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetHrstd(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[54]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[54]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetId(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[35]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[35]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetInsetmode(STInsetMode sTInsetMode) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STInsetMode sTInsetMode2 = (STInsetMode) typeStore.find_attribute_user(qNameArr[68]);
            if (sTInsetMode2 == null) {
                sTInsetMode2 = (STInsetMode) get_store().add_attribute_user(qNameArr[68]);
            }
            sTInsetMode2.set(sTInsetMode);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetOned(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[47]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[47]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetPrint(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[45]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[45]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetRegroupid(XmlInteger xmlInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInteger xmlInteger2 = (XmlInteger) typeStore.find_attribute_user(qNameArr[48]);
            if (xmlInteger2 == null) {
                xmlInteger2 = (XmlInteger) get_store().add_attribute_user(qNameArr[48]);
            }
            xmlInteger2.set(xmlInteger);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetSpid(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[46]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[46]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetStyle(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[36]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[36]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetTablelimits(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[73]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[73]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetTableproperties(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[72]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[72]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetTarget(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[38]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[38]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetTitle(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[40]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[40]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetUserdrawn(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[60]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[60]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetUserhidden(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[51]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[51]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void xsetWrapcoords(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[44]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[44]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTAnchorLock getAnchorlockArray(int i) {
        CTAnchorLock cTAnchorLock;
        synchronized (monitor()) {
            check_orphaned();
            cTAnchorLock = (CTAnchorLock) get_store().find_element_user(PROPERTY_QNAME[16], i);
            if (cTAnchorLock == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAnchorLock;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTArc getArcArray(int i) {
        CTArc cTArc;
        synchronized (monitor()) {
            check_orphaned();
            cTArc = (CTArc) get_store().find_element_user(PROPERTY_QNAME[26], i);
            if (cTArc == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTArc;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder getBorderbottomArray(int i) {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().find_element_user(PROPERTY_QNAME[18], i);
            if (cTBorder == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder getBorderleftArray(int i) {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().find_element_user(PROPERTY_QNAME[19], i);
            if (cTBorder == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder getBorderrightArray(int i) {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().find_element_user(PROPERTY_QNAME[20], i);
            if (cTBorder == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTBorder getBordertopArray(int i) {
        CTBorder cTBorder;
        synchronized (monitor()) {
            check_orphaned();
            cTBorder = (CTBorder) get_store().find_element_user(PROPERTY_QNAME[17], i);
            if (cTBorder == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTBorder;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTCallout getCalloutArray(int i) {
        CTCallout cTCallout;
        synchronized (monitor()) {
            check_orphaned();
            cTCallout = (CTCallout) get_store().find_element_user(PROPERTY_QNAME[11], i);
            if (cTCallout == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCallout;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTClientData getClientDataArray(int i) {
        CTClientData cTClientData;
        synchronized (monitor()) {
            check_orphaned();
            cTClientData = (CTClientData) get_store().find_element_user(PROPERTY_QNAME[21], i);
            if (cTClientData == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTClientData;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTClipPath getClippathArray(int i) {
        CTClipPath cTClipPath;
        synchronized (monitor()) {
            check_orphaned();
            cTClipPath = (CTClipPath) get_store().find_element_user(PROPERTY_QNAME[13], i);
            if (cTClipPath == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTClipPath;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTCurve getCurveArray(int i) {
        CTCurve cTCurve;
        synchronized (monitor()) {
            check_orphaned();
            cTCurve = (CTCurve) get_store().find_element_user(PROPERTY_QNAME[27], i);
            if (cTCurve == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCurve;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTDiagram getDiagramArray(int i) {
        CTDiagram cTDiagram;
        synchronized (monitor()) {
            check_orphaned();
            cTDiagram = (CTDiagram) get_store().find_element_user(PROPERTY_QNAME[34], i);
            if (cTDiagram == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTDiagram;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTExtrusion getExtrusionArray(int i) {
        CTExtrusion cTExtrusion;
        synchronized (monitor()) {
            check_orphaned();
            cTExtrusion = (CTExtrusion) get_store().find_element_user(PROPERTY_QNAME[10], i);
            if (cTExtrusion == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTExtrusion;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTFill getFillArray(int i) {
        CTFill cTFill;
        synchronized (monitor()) {
            check_orphaned();
            cTFill = (CTFill) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTFill == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFill;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTFormulas getFormulasArray(int i) {
        CTFormulas cTFormulas;
        synchronized (monitor()) {
            check_orphaned();
            cTFormulas = (CTFormulas) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTFormulas == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTFormulas;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTGroup getGroupArray(int i) {
        CTGroup cTGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTGroup = (CTGroup) get_store().find_element_user(PROPERTY_QNAME[23], i);
            if (cTGroup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGroup;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTHandles getHandlesArray(int i) {
        CTHandles cTHandles;
        synchronized (monitor()) {
            check_orphaned();
            cTHandles = (CTHandles) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTHandles == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTHandles;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTImage getImageArray(int i) {
        CTImage cTImage;
        synchronized (monitor()) {
            check_orphaned();
            cTImage = (CTImage) get_store().find_element_user(PROPERTY_QNAME[28], i);
            if (cTImage == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTImage;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTImageData getImagedataArray(int i) {
        CTImageData cTImageData;
        synchronized (monitor()) {
            check_orphaned();
            cTImageData = (CTImageData) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTImageData == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTImageData;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTLine getLineArray(int i) {
        CTLine cTLine;
        synchronized (monitor()) {
            check_orphaned();
            cTLine = (CTLine) get_store().find_element_user(PROPERTY_QNAME[29], i);
            if (cTLine == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLine;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTLock getLockArray(int i) {
        CTLock cTLock;
        synchronized (monitor()) {
            check_orphaned();
            cTLock = (CTLock) get_store().find_element_user(PROPERTY_QNAME[12], i);
            if (cTLock == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLock;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTOval getOvalArray(int i) {
        CTOval cTOval;
        synchronized (monitor()) {
            check_orphaned();
            cTOval = (CTOval) get_store().find_element_user(PROPERTY_QNAME[30], i);
            if (cTOval == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOval;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTPath getPathArray(int i) {
        CTPath cTPath;
        synchronized (monitor()) {
            check_orphaned();
            cTPath = (CTPath) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTPath == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPath;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTPolyLine getPolylineArray(int i) {
        CTPolyLine cTPolyLine;
        synchronized (monitor()) {
            check_orphaned();
            cTPolyLine = (CTPolyLine) get_store().find_element_user(PROPERTY_QNAME[31], i);
            if (cTPolyLine == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPolyLine;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTRect getRectArray(int i) {
        CTRect cTRect;
        synchronized (monitor()) {
            check_orphaned();
            cTRect = (CTRect) get_store().find_element_user(PROPERTY_QNAME[32], i);
            if (cTRect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRect;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTRoundRect getRoundrectArray(int i) {
        CTRoundRect cTRoundRect;
        synchronized (monitor()) {
            check_orphaned();
            cTRoundRect = (CTRoundRect) get_store().find_element_user(PROPERTY_QNAME[33], i);
            if (cTRoundRect == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRoundRect;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTShadow getShadowArray(int i) {
        CTShadow cTShadow;
        synchronized (monitor()) {
            check_orphaned();
            cTShadow = (CTShadow) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTShadow == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTShadow;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTShape getShapeArray(int i) {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().find_element_user(PROPERTY_QNAME[24], i);
            if (cTShape == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTShape;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTShapetype getShapetypeArray(int i) {
        CTShapetype cTShapetype;
        synchronized (monitor()) {
            check_orphaned();
            cTShapetype = (CTShapetype) get_store().find_element_user(PROPERTY_QNAME[25], i);
            if (cTShapetype == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTShapetype;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTSignatureLine getSignaturelineArray(int i) {
        CTSignatureLine cTSignatureLine;
        synchronized (monitor()) {
            check_orphaned();
            cTSignatureLine = (CTSignatureLine) get_store().find_element_user(PROPERTY_QNAME[14], i);
            if (cTSignatureLine == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSignatureLine;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTSkew getSkewArray(int i) {
        CTSkew cTSkew;
        synchronized (monitor()) {
            check_orphaned();
            cTSkew = (CTSkew) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTSkew == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTSkew;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTStroke getStrokeArray(int i) {
        CTStroke cTStroke;
        synchronized (monitor()) {
            check_orphaned();
            cTStroke = (CTStroke) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTStroke == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTStroke;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTTextbox getTextboxArray(int i) {
        CTTextbox cTTextbox;
        synchronized (monitor()) {
            check_orphaned();
            cTTextbox = (CTTextbox) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTTextbox == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTextbox;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTRel getTextdataArray(int i) {
        CTRel cTRel;
        synchronized (monitor()) {
            check_orphaned();
            cTRel = (CTRel) get_store().find_element_user(PROPERTY_QNAME[22], i);
            if (cTRel == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRel;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTTextPath getTextpathArray(int i) {
        CTTextPath cTTextPath;
        synchronized (monitor()) {
            check_orphaned();
            cTTextPath = (CTTextPath) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTTextPath == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTTextPath;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public CTWrap getWrapArray(int i) {
        CTWrap cTWrap;
        synchronized (monitor()) {
            check_orphaned();
            cTWrap = (CTWrap) get_store().find_element_user(PROPERTY_QNAME[15], i);
            if (cTWrap == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTWrap;
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setAnchorlockArray(int i, CTAnchorLock cTAnchorLock) {
        generatedSetterHelperImpl(cTAnchorLock, PROPERTY_QNAME[16], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setArcArray(int i, CTArc cTArc) {
        generatedSetterHelperImpl(cTArc, PROPERTY_QNAME[26], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setBorderbottomArray(int i, CTBorder cTBorder) {
        generatedSetterHelperImpl(cTBorder, PROPERTY_QNAME[18], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setBorderleftArray(int i, CTBorder cTBorder) {
        generatedSetterHelperImpl(cTBorder, PROPERTY_QNAME[19], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setBorderrightArray(int i, CTBorder cTBorder) {
        generatedSetterHelperImpl(cTBorder, PROPERTY_QNAME[20], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setBordertopArray(int i, CTBorder cTBorder) {
        generatedSetterHelperImpl(cTBorder, PROPERTY_QNAME[17], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setCalloutArray(int i, CTCallout cTCallout) {
        generatedSetterHelperImpl(cTCallout, PROPERTY_QNAME[11], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setClientDataArray(int i, CTClientData cTClientData) {
        generatedSetterHelperImpl(cTClientData, PROPERTY_QNAME[21], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setClippathArray(int i, CTClipPath cTClipPath) {
        generatedSetterHelperImpl(cTClipPath, PROPERTY_QNAME[13], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setCurveArray(int i, CTCurve cTCurve) {
        generatedSetterHelperImpl(cTCurve, PROPERTY_QNAME[27], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setDiagramArray(int i, CTDiagram cTDiagram) {
        generatedSetterHelperImpl(cTDiagram, PROPERTY_QNAME[34], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setExtrusionArray(int i, CTExtrusion cTExtrusion) {
        generatedSetterHelperImpl(cTExtrusion, PROPERTY_QNAME[10], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setFillArray(int i, CTFill cTFill) {
        generatedSetterHelperImpl(cTFill, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setFormulasArray(int i, CTFormulas cTFormulas) {
        generatedSetterHelperImpl(cTFormulas, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setGroupArray(int i, CTGroup cTGroup) {
        generatedSetterHelperImpl(cTGroup, PROPERTY_QNAME[23], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setHandlesArray(int i, CTHandles cTHandles) {
        generatedSetterHelperImpl(cTHandles, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setImageArray(int i, CTImage cTImage) {
        generatedSetterHelperImpl(cTImage, PROPERTY_QNAME[28], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setImagedataArray(int i, CTImageData cTImageData) {
        generatedSetterHelperImpl(cTImageData, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setLineArray(int i, CTLine cTLine) {
        generatedSetterHelperImpl(cTLine, PROPERTY_QNAME[29], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setLockArray(int i, CTLock cTLock) {
        generatedSetterHelperImpl(cTLock, PROPERTY_QNAME[12], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setOvalArray(int i, CTOval cTOval) {
        generatedSetterHelperImpl(cTOval, PROPERTY_QNAME[30], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setPathArray(int i, CTPath cTPath) {
        generatedSetterHelperImpl(cTPath, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setPolylineArray(int i, CTPolyLine cTPolyLine) {
        generatedSetterHelperImpl(cTPolyLine, PROPERTY_QNAME[31], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setRectArray(int i, CTRect cTRect) {
        generatedSetterHelperImpl(cTRect, PROPERTY_QNAME[32], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setRoundrectArray(int i, CTRoundRect cTRoundRect) {
        generatedSetterHelperImpl(cTRoundRect, PROPERTY_QNAME[33], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setShadowArray(int i, CTShadow cTShadow) {
        generatedSetterHelperImpl(cTShadow, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setShapeArray(int i, CTShape cTShape) {
        generatedSetterHelperImpl(cTShape, PROPERTY_QNAME[24], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setShapetypeArray(int i, CTShapetype cTShapetype) {
        generatedSetterHelperImpl(cTShapetype, PROPERTY_QNAME[25], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setSignaturelineArray(int i, CTSignatureLine cTSignatureLine) {
        generatedSetterHelperImpl(cTSignatureLine, PROPERTY_QNAME[14], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setSkewArray(int i, CTSkew cTSkew) {
        generatedSetterHelperImpl(cTSkew, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setStrokeArray(int i, CTStroke cTStroke) {
        generatedSetterHelperImpl(cTStroke, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setTextboxArray(int i, CTTextbox cTTextbox) {
        generatedSetterHelperImpl(cTTextbox, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setTextdataArray(int i, CTRel cTRel) {
        generatedSetterHelperImpl(cTRel, PROPERTY_QNAME[22], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setTextpathArray(int i, CTTextPath cTTextPath) {
        generatedSetterHelperImpl(cTTextPath, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // com.microsoft.schemas.vml.CTGroup
    public void setWrapArray(int i, CTWrap cTWrap) {
        generatedSetterHelperImpl(cTWrap, PROPERTY_QNAME[15], i, (short) 2);
    }
}
