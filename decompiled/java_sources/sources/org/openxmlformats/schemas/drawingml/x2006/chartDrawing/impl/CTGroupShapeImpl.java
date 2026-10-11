package org.openxmlformats.schemas.drawingml.x2006.chartDrawing.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTConnector;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGraphicFrame;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShapeNonVisual;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTPicture;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTShape;
import org.openxmlformats.schemas.drawingml.x2006.chartDrawing.impl.CTGroupShapeImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGroupShapeProperties;

/* loaded from: classes14.dex */
public class CTGroupShapeImpl extends XmlComplexContentImpl implements CTGroupShape {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "nvGrpSpPr"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "grpSpPr"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "sp"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "grpSp"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "graphicFrame"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "cxnSp"), new QName("http://schemas.openxmlformats.org/drawingml/2006/chartDrawing", "pic")};
    private static final long serialVersionUID = 1;

    public CTGroupShapeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTConnector addNewCxnSp() {
        CTConnector cTConnector;
        synchronized (monitor()) {
            check_orphaned();
            cTConnector = (CTConnector) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTConnector;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTGraphicFrame addNewGraphicFrame() {
        CTGraphicFrame cTGraphicFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicFrame = (CTGraphicFrame) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTGraphicFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTGroupShape addNewGrpSp() {
        CTGroupShape cTGroupShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShape = (CTGroupShape) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTGroupShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTGroupShapeProperties addNewGrpSpPr() {
        CTGroupShapeProperties cTGroupShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShapeProperties = (CTGroupShapeProperties) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTGroupShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTGroupShapeNonVisual addNewNvGrpSpPr() {
        CTGroupShapeNonVisual cTGroupShapeNonVisual;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShapeNonVisual = (CTGroupShapeNonVisual) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGroupShapeNonVisual;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTPicture addNewPic() {
        CTPicture cTPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTPicture = (CTPicture) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTPicture;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTShape addNewSp() {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTConnector[] getCxnSpArray() {
        return (CTConnector[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTConnector[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public List<CTConnector> getCxnSpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nj4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupShapeImpl.this.getCxnSpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.rj4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupShapeImpl.this.setCxnSpArray(((Integer) obj).intValue(), (CTConnector) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uj4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupShapeImpl.this.insertNewCxnSp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xj4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupShapeImpl.this.removeCxnSp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ak4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupShapeImpl.this.sizeOfCxnSpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTGraphicFrame[] getGraphicFrameArray() {
        return (CTGraphicFrame[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTGraphicFrame[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public List<CTGraphicFrame> getGraphicFrameList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zh4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupShapeImpl.this.getGraphicFrameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gi4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupShapeImpl.this.setGraphicFrameArray(((Integer) obj).intValue(), (CTGraphicFrame) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ck4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupShapeImpl.this.insertNewGraphicFrame(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jk4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupShapeImpl.this.removeGraphicFrame(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.nk4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupShapeImpl.this.sizeOfGraphicFrameArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTGroupShape[] getGrpSpArray() {
        return (CTGroupShape[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTGroupShape[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public List<CTGroupShape> getGrpSpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xi4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupShapeImpl.this.getGrpSpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.aj4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupShapeImpl.this.setGrpSpArray(((Integer) obj).intValue(), (CTGroupShape) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.dj4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupShapeImpl.this.insertNewGrpSp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.gj4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupShapeImpl.this.removeGrpSp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jj4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupShapeImpl.this.sizeOfGrpSpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTGroupShapeNonVisual getNvGrpSpPr() {
        CTGroupShapeNonVisual cTGroupShapeNonVisual;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShapeNonVisual = (CTGroupShapeNonVisual) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTGroupShapeNonVisual == null) {
                cTGroupShapeNonVisual = null;
            }
        }
        return cTGroupShapeNonVisual;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTPicture[] getPicArray() {
        return (CTPicture[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTPicture[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public List<CTPicture> getPicList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fi4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupShapeImpl.this.getPicArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.li4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupShapeImpl.this.setPicArray(((Integer) obj).intValue(), (CTPicture) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.oi4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupShapeImpl.this.insertNewPic(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ri4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupShapeImpl.this.removePic(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ui4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupShapeImpl.this.sizeOfPicArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTShape[] getSpArray() {
        return (CTShape[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTShape[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public List<CTShape> getSpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rk4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupShapeImpl.this.getSpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vk4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupShapeImpl.this.setSpArray(((Integer) obj).intValue(), (CTShape) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zk4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupShapeImpl.this.insertNewSp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.dl4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupShapeImpl.this.removeSp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.hl4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupShapeImpl.this.sizeOfSpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTConnector insertNewCxnSp(int i) {
        CTConnector cTConnector;
        synchronized (monitor()) {
            check_orphaned();
            cTConnector = (CTConnector) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTConnector;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTGraphicFrame insertNewGraphicFrame(int i) {
        CTGraphicFrame cTGraphicFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicFrame = (CTGraphicFrame) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTGraphicFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTGroupShape insertNewGrpSp(int i) {
        CTGroupShape cTGroupShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShape = (CTGroupShape) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTGroupShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTPicture insertNewPic(int i) {
        CTPicture cTPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTPicture = (CTPicture) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTPicture;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTShape insertNewSp(int i) {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void removeCxnSp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void removeGraphicFrame(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void removeGrpSp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void removePic(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void removeSp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void setCxnSpArray(CTConnector[] cTConnectorArr) {
        check_orphaned();
        arraySetterHelper(cTConnectorArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void setGraphicFrameArray(CTGraphicFrame[] cTGraphicFrameArr) {
        check_orphaned();
        arraySetterHelper(cTGraphicFrameArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void setGrpSpArray(CTGroupShape[] cTGroupShapeArr) {
        check_orphaned();
        arraySetterHelper(cTGroupShapeArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void setGrpSpPr(CTGroupShapeProperties cTGroupShapeProperties) {
        generatedSetterHelperImpl(cTGroupShapeProperties, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void setNvGrpSpPr(CTGroupShapeNonVisual cTGroupShapeNonVisual) {
        generatedSetterHelperImpl(cTGroupShapeNonVisual, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void setPicArray(CTPicture[] cTPictureArr) {
        check_orphaned();
        arraySetterHelper(cTPictureArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void setSpArray(CTShape[] cTShapeArr) {
        check_orphaned();
        arraySetterHelper(cTShapeArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public int sizeOfCxnSpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public int sizeOfGraphicFrameArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public int sizeOfGrpSpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public int sizeOfPicArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public int sizeOfSpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTConnector getCxnSpArray(int i) {
        CTConnector cTConnector;
        synchronized (monitor()) {
            check_orphaned();
            cTConnector = (CTConnector) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTConnector == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTConnector;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTGraphicFrame getGraphicFrameArray(int i) {
        CTGraphicFrame cTGraphicFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicFrame = (CTGraphicFrame) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTGraphicFrame == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGraphicFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTGroupShape getGrpSpArray(int i) {
        CTGroupShape cTGroupShape;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShape = (CTGroupShape) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTGroupShape == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGroupShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTPicture getPicArray(int i) {
        CTPicture cTPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTPicture = (CTPicture) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTPicture == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPicture;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public CTShape getSpArray(int i) {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTShape == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void setCxnSpArray(int i, CTConnector cTConnector) {
        generatedSetterHelperImpl(cTConnector, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void setGraphicFrameArray(int i, CTGraphicFrame cTGraphicFrame) {
        generatedSetterHelperImpl(cTGraphicFrame, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void setGrpSpArray(int i, CTGroupShape cTGroupShape) {
        generatedSetterHelperImpl(cTGroupShape, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void setPicArray(int i, CTPicture cTPicture) {
        generatedSetterHelperImpl(cTPicture, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chartDrawing.CTGroupShape
    public void setSpArray(int i, CTShape cTShape) {
        generatedSetterHelperImpl(cTShape, PROPERTY_QNAME[2], i, (short) 2);
    }
}
