package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGroupShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlConnector;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGraphicalObjectFrame;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShapeNonVisual;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlPicture;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlShape;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlTextShape;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTGvmlGroupShapeImpl;

/* loaded from: classes14.dex */
public class CTGvmlGroupShapeImpl extends XmlComplexContentImpl implements CTGvmlGroupShape {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "nvGrpSpPr"), new QName(XSSFRelation.NS_DRAWINGML, "grpSpPr"), new QName(XSSFRelation.NS_DRAWINGML, "txSp"), new QName(XSSFRelation.NS_DRAWINGML, "sp"), new QName(XSSFRelation.NS_DRAWINGML, "cxnSp"), new QName(XSSFRelation.NS_DRAWINGML, "pic"), new QName(XSSFRelation.NS_DRAWINGML, "graphicFrame"), new QName(XSSFRelation.NS_DRAWINGML, "grpSp"), new QName(XSSFRelation.NS_DRAWINGML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTGvmlGroupShapeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlConnector addNewCxnSp() {
        CTGvmlConnector cTGvmlConnector;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlConnector = (CTGvmlConnector) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTGvmlConnector;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlGraphicalObjectFrame addNewGraphicFrame() {
        CTGvmlGraphicalObjectFrame cTGvmlGraphicalObjectFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlGraphicalObjectFrame = (CTGvmlGraphicalObjectFrame) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTGvmlGraphicalObjectFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlGroupShape addNewGrpSp() {
        CTGvmlGroupShape cTGvmlGroupShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlGroupShape = (CTGvmlGroupShape) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTGvmlGroupShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGroupShapeProperties addNewGrpSpPr() {
        CTGroupShapeProperties cTGroupShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShapeProperties = (CTGroupShapeProperties) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTGroupShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlGroupShapeNonVisual addNewNvGrpSpPr() {
        CTGvmlGroupShapeNonVisual cTGvmlGroupShapeNonVisual;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlGroupShapeNonVisual = (CTGvmlGroupShapeNonVisual) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGvmlGroupShapeNonVisual;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlPicture addNewPic() {
        CTGvmlPicture cTGvmlPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlPicture = (CTGvmlPicture) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTGvmlPicture;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlShape addNewSp() {
        CTGvmlShape cTGvmlShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlShape = (CTGvmlShape) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTGvmlShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlTextShape addNewTxSp() {
        CTGvmlTextShape cTGvmlTextShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlTextShape = (CTGvmlTextShape) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTGvmlTextShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlConnector[] getCxnSpArray() {
        return (CTGvmlConnector[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTGvmlConnector[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public List<CTGvmlConnector> getCxnSpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hm4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGvmlGroupShapeImpl.this.getCxnSpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.im4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGvmlGroupShapeImpl.this.setCxnSpArray(((Integer) obj).intValue(), (CTGvmlConnector) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jm4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGvmlGroupShapeImpl.this.insertNewCxnSp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.km4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGvmlGroupShapeImpl.this.removeCxnSp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lm4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGvmlGroupShapeImpl.this.sizeOfCxnSpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlGraphicalObjectFrame[] getGraphicFrameArray() {
        return (CTGvmlGraphicalObjectFrame[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTGvmlGraphicalObjectFrame[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public List<CTGvmlGraphicalObjectFrame> getGraphicFrameList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wl4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGvmlGroupShapeImpl.this.getGraphicFrameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xl4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGvmlGroupShapeImpl.this.setGraphicFrameArray(((Integer) obj).intValue(), (CTGvmlGraphicalObjectFrame) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yl4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGvmlGroupShapeImpl.this.insertNewGraphicFrame(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zl4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGvmlGroupShapeImpl.this.removeGraphicFrame(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.am4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGvmlGroupShapeImpl.this.sizeOfGraphicFrameArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlGroupShape[] getGrpSpArray() {
        return (CTGvmlGroupShape[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTGvmlGroupShape[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public List<CTGvmlGroupShape> getGrpSpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.um4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGvmlGroupShapeImpl.this.getGrpSpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vm4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGvmlGroupShapeImpl.this.setGrpSpArray(((Integer) obj).intValue(), (CTGvmlGroupShape) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wm4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGvmlGroupShapeImpl.this.insertNewGrpSp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xm4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGvmlGroupShapeImpl.this.removeGrpSp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ym4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGvmlGroupShapeImpl.this.sizeOfGrpSpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGroupShapeProperties getGrpSpPr() {
        CTGroupShapeProperties cTGroupShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShapeProperties = (CTGroupShapeProperties) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTGroupShapeProperties == null) {
                cTGroupShapeProperties = null;
            }
        }
        return cTGroupShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlGroupShapeNonVisual getNvGrpSpPr() {
        CTGvmlGroupShapeNonVisual cTGvmlGroupShapeNonVisual;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlGroupShapeNonVisual = (CTGvmlGroupShapeNonVisual) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGvmlGroupShapeNonVisual == null) {
                cTGvmlGroupShapeNonVisual = null;
            }
        }
        return cTGvmlGroupShapeNonVisual;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlPicture[] getPicArray() {
        return (CTGvmlPicture[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTGvmlPicture[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public List<CTGvmlPicture> getPicList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mm4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGvmlGroupShapeImpl.this.getPicArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nm4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGvmlGroupShapeImpl.this.setPicArray(((Integer) obj).intValue(), (CTGvmlPicture) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.om4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGvmlGroupShapeImpl.this.insertNewPic(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pm4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGvmlGroupShapeImpl.this.removePic(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qm4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGvmlGroupShapeImpl.this.sizeOfPicArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlShape[] getSpArray() {
        return (CTGvmlShape[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTGvmlShape[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public List<CTGvmlShape> getSpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bm4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGvmlGroupShapeImpl.this.getSpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cm4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGvmlGroupShapeImpl.this.setSpArray(((Integer) obj).intValue(), (CTGvmlShape) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dm4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGvmlGroupShapeImpl.this.insertNewSp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.em4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGvmlGroupShapeImpl.this.removeSp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fm4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGvmlGroupShapeImpl.this.sizeOfSpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlTextShape[] getTxSpArray() {
        return (CTGvmlTextShape[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTGvmlTextShape[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public List<CTGvmlTextShape> getTxSpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.vl4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGvmlGroupShapeImpl.this.getTxSpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gm4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGvmlGroupShapeImpl.this.setTxSpArray(((Integer) obj).intValue(), (CTGvmlTextShape) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rm4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGvmlGroupShapeImpl.this.insertNewTxSp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sm4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGvmlGroupShapeImpl.this.removeTxSp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.tm4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGvmlGroupShapeImpl.this.sizeOfTxSpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlConnector insertNewCxnSp(int i) {
        CTGvmlConnector cTGvmlConnector;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlConnector = (CTGvmlConnector) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTGvmlConnector;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlGraphicalObjectFrame insertNewGraphicFrame(int i) {
        CTGvmlGraphicalObjectFrame cTGvmlGraphicalObjectFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlGraphicalObjectFrame = (CTGvmlGraphicalObjectFrame) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTGvmlGraphicalObjectFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlGroupShape insertNewGrpSp(int i) {
        CTGvmlGroupShape cTGvmlGroupShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlGroupShape = (CTGvmlGroupShape) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTGvmlGroupShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlPicture insertNewPic(int i) {
        CTGvmlPicture cTGvmlPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlPicture = (CTGvmlPicture) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTGvmlPicture;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlShape insertNewSp(int i) {
        CTGvmlShape cTGvmlShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlShape = (CTGvmlShape) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTGvmlShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlTextShape insertNewTxSp(int i) {
        CTGvmlTextShape cTGvmlTextShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlTextShape = (CTGvmlTextShape) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTGvmlTextShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void removeCxnSp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void removeGraphicFrame(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void removeGrpSp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void removePic(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void removeSp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void removeTxSp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setCxnSpArray(CTGvmlConnector[] cTGvmlConnectorArr) {
        check_orphaned();
        arraySetterHelper(cTGvmlConnectorArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setGraphicFrameArray(CTGvmlGraphicalObjectFrame[] cTGvmlGraphicalObjectFrameArr) {
        check_orphaned();
        arraySetterHelper(cTGvmlGraphicalObjectFrameArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setGrpSpArray(CTGvmlGroupShape[] cTGvmlGroupShapeArr) {
        check_orphaned();
        arraySetterHelper(cTGvmlGroupShapeArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setGrpSpPr(CTGroupShapeProperties cTGroupShapeProperties) {
        generatedSetterHelperImpl(cTGroupShapeProperties, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setNvGrpSpPr(CTGvmlGroupShapeNonVisual cTGvmlGroupShapeNonVisual) {
        generatedSetterHelperImpl(cTGvmlGroupShapeNonVisual, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setPicArray(CTGvmlPicture[] cTGvmlPictureArr) {
        check_orphaned();
        arraySetterHelper(cTGvmlPictureArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setSpArray(CTGvmlShape[] cTGvmlShapeArr) {
        check_orphaned();
        arraySetterHelper(cTGvmlShapeArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setTxSpArray(CTGvmlTextShape[] cTGvmlTextShapeArr) {
        check_orphaned();
        arraySetterHelper(cTGvmlTextShapeArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public int sizeOfCxnSpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public int sizeOfGraphicFrameArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public int sizeOfGrpSpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public int sizeOfPicArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public int sizeOfSpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public int sizeOfTxSpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlConnector getCxnSpArray(int i) {
        CTGvmlConnector cTGvmlConnector;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlConnector = (CTGvmlConnector) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTGvmlConnector == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGvmlConnector;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlGraphicalObjectFrame getGraphicFrameArray(int i) {
        CTGvmlGraphicalObjectFrame cTGvmlGraphicalObjectFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlGraphicalObjectFrame = (CTGvmlGraphicalObjectFrame) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTGvmlGraphicalObjectFrame == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGvmlGraphicalObjectFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlGroupShape getGrpSpArray(int i) {
        CTGvmlGroupShape cTGvmlGroupShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlGroupShape = (CTGvmlGroupShape) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTGvmlGroupShape == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGvmlGroupShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlPicture getPicArray(int i) {
        CTGvmlPicture cTGvmlPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlPicture = (CTGvmlPicture) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTGvmlPicture == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGvmlPicture;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlShape getSpArray(int i) {
        CTGvmlShape cTGvmlShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlShape = (CTGvmlShape) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTGvmlShape == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGvmlShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public CTGvmlTextShape getTxSpArray(int i) {
        CTGvmlTextShape cTGvmlTextShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGvmlTextShape = (CTGvmlTextShape) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTGvmlTextShape == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGvmlTextShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setCxnSpArray(int i, CTGvmlConnector cTGvmlConnector) {
        generatedSetterHelperImpl(cTGvmlConnector, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setGraphicFrameArray(int i, CTGvmlGraphicalObjectFrame cTGvmlGraphicalObjectFrame) {
        generatedSetterHelperImpl(cTGvmlGraphicalObjectFrame, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setGrpSpArray(int i, CTGvmlGroupShape cTGvmlGroupShape) {
        generatedSetterHelperImpl(cTGvmlGroupShape, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setPicArray(int i, CTGvmlPicture cTGvmlPicture) {
        generatedSetterHelperImpl(cTGvmlPicture, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setSpArray(int i, CTGvmlShape cTGvmlShape) {
        generatedSetterHelperImpl(cTGvmlShape, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTGvmlGroupShape
    public void setTxSpArray(int i, CTGvmlTextShape cTGvmlTextShape) {
        generatedSetterHelperImpl(cTGvmlTextShape, PROPERTY_QNAME[2], i, (short) 2);
    }
}
