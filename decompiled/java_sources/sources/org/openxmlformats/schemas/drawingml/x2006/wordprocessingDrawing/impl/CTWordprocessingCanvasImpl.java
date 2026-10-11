package org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBackgroundFormatting;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.main.CTWholeE2OFormatting;
import org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTGraphicFrame;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingContentPart;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingShape;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl.CTWordprocessingCanvasImpl;

/* loaded from: classes14.dex */
public class CTWordprocessingCanvasImpl extends XmlComplexContentImpl implements CTWordprocessingCanvas {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "bg"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "whole"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "wsp"), new QName("http://schemas.openxmlformats.org/drawingml/2006/picture", "pic"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "contentPart"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "wgp"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "graphicFrame"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "extLst")};
    private static final long serialVersionUID = 1;

    public CTWordprocessingCanvasImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTBackgroundFormatting addNewBg() {
        CTBackgroundFormatting cTBackgroundFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTBackgroundFormatting = (CTBackgroundFormatting) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBackgroundFormatting;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWordprocessingContentPart addNewContentPart() {
        CTWordprocessingContentPart cTWordprocessingContentPart;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingContentPart = (CTWordprocessingContentPart) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTWordprocessingContentPart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTGraphicFrame addNewGraphicFrame() {
        CTGraphicFrame cTGraphicFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicFrame = (CTGraphicFrame) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTGraphicFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTPicture addNewPic() {
        CTPicture cTPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTPicture = (CTPicture) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTPicture;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWordprocessingGroup addNewWgp() {
        CTWordprocessingGroup cTWordprocessingGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingGroup = (CTWordprocessingGroup) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTWordprocessingGroup;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWholeE2OFormatting addNewWhole() {
        CTWholeE2OFormatting cTWholeE2OFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTWholeE2OFormatting = (CTWholeE2OFormatting) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTWholeE2OFormatting;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWordprocessingShape addNewWsp() {
        CTWordprocessingShape cTWordprocessingShape;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingShape = (CTWordprocessingShape) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTWordprocessingShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTBackgroundFormatting getBg() {
        CTBackgroundFormatting cTBackgroundFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTBackgroundFormatting = (CTBackgroundFormatting) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTBackgroundFormatting == null) {
                cTBackgroundFormatting = null;
            }
        }
        return cTBackgroundFormatting;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWordprocessingContentPart[] getContentPartArray() {
        return (CTWordprocessingContentPart[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTWordprocessingContentPart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public List<CTWordprocessingContentPart> getContentPartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ujd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingCanvasImpl.this.getContentPartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.vjd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWordprocessingCanvasImpl.this.setContentPartArray(((Integer) obj).intValue(), (CTWordprocessingContentPart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wjd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingCanvasImpl.this.insertNewContentPart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.xjd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWordprocessingCanvasImpl.this.removeContentPart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yjd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWordprocessingCanvasImpl.this.sizeOfContentPartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTOfficeArtExtensionList getExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (cTOfficeArtExtensionList == null) {
                cTOfficeArtExtensionList = null;
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTGraphicFrame[] getGraphicFrameArray() {
        return (CTGraphicFrame[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTGraphicFrame[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public List<CTGraphicFrame> getGraphicFrameList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.zjd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingCanvasImpl.this.getGraphicFrameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.akd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWordprocessingCanvasImpl.this.setGraphicFrameArray(((Integer) obj).intValue(), (CTGraphicFrame) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bkd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingCanvasImpl.this.insertNewGraphicFrame(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ckd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWordprocessingCanvasImpl.this.removeGraphicFrame(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.dkd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWordprocessingCanvasImpl.this.sizeOfGraphicFrameArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTPicture[] getPicArray() {
        return (CTPicture[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTPicture[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public List<CTPicture> getPicList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nkd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingCanvasImpl.this.getPicArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.okd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWordprocessingCanvasImpl.this.setPicArray(((Integer) obj).intValue(), (CTPicture) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pkd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingCanvasImpl.this.insertNewPic(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qkd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWordprocessingCanvasImpl.this.removePic(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rkd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWordprocessingCanvasImpl.this.sizeOfPicArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWordprocessingGroup[] getWgpArray() {
        return (CTWordprocessingGroup[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTWordprocessingGroup[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public List<CTWordprocessingGroup> getWgpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fkd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingCanvasImpl.this.getWgpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.gkd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWordprocessingCanvasImpl.this.setWgpArray(((Integer) obj).intValue(), (CTWordprocessingGroup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.hkd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingCanvasImpl.this.insertNewWgp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ikd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWordprocessingCanvasImpl.this.removeWgp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.jkd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWordprocessingCanvasImpl.this.sizeOfWgpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWholeE2OFormatting getWhole() {
        CTWholeE2OFormatting cTWholeE2OFormatting;
        synchronized (monitor()) {
            check_orphaned();
            cTWholeE2OFormatting = (CTWholeE2OFormatting) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTWholeE2OFormatting == null) {
                cTWholeE2OFormatting = null;
            }
        }
        return cTWholeE2OFormatting;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWordprocessingShape[] getWspArray() {
        return (CTWordprocessingShape[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTWordprocessingShape[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public List<CTWordprocessingShape> getWspList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tjd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingCanvasImpl.this.getWspArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ekd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWordprocessingCanvasImpl.this.setWspArray(((Integer) obj).intValue(), (CTWordprocessingShape) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kkd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingCanvasImpl.this.insertNewWsp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.lkd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWordprocessingCanvasImpl.this.removeWsp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.mkd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWordprocessingCanvasImpl.this.sizeOfWspArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWordprocessingContentPart insertNewContentPart(int i) {
        CTWordprocessingContentPart cTWordprocessingContentPart;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingContentPart = (CTWordprocessingContentPart) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTWordprocessingContentPart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTGraphicFrame insertNewGraphicFrame(int i) {
        CTGraphicFrame cTGraphicFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicFrame = (CTGraphicFrame) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTGraphicFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTPicture insertNewPic(int i) {
        CTPicture cTPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTPicture = (CTPicture) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTPicture;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWordprocessingGroup insertNewWgp(int i) {
        CTWordprocessingGroup cTWordprocessingGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingGroup = (CTWordprocessingGroup) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTWordprocessingGroup;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWordprocessingShape insertNewWsp(int i) {
        CTWordprocessingShape cTWordprocessingShape;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingShape = (CTWordprocessingShape) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTWordprocessingShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public boolean isSetBg() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public boolean isSetWhole() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void removeContentPart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void removeGraphicFrame(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void removePic(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void removeWgp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void removeWsp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void setBg(CTBackgroundFormatting cTBackgroundFormatting) {
        generatedSetterHelperImpl(cTBackgroundFormatting, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void setContentPartArray(CTWordprocessingContentPart[] cTWordprocessingContentPartArr) {
        check_orphaned();
        arraySetterHelper(cTWordprocessingContentPartArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[7], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void setGraphicFrameArray(CTGraphicFrame[] cTGraphicFrameArr) {
        check_orphaned();
        arraySetterHelper(cTGraphicFrameArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void setPicArray(CTPicture[] cTPictureArr) {
        check_orphaned();
        arraySetterHelper(cTPictureArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void setWgpArray(CTWordprocessingGroup[] cTWordprocessingGroupArr) {
        check_orphaned();
        arraySetterHelper(cTWordprocessingGroupArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void setWhole(CTWholeE2OFormatting cTWholeE2OFormatting) {
        generatedSetterHelperImpl(cTWholeE2OFormatting, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void setWspArray(CTWordprocessingShape[] cTWordprocessingShapeArr) {
        check_orphaned();
        arraySetterHelper(cTWordprocessingShapeArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public int sizeOfContentPartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public int sizeOfGraphicFrameArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public int sizeOfPicArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public int sizeOfWgpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public int sizeOfWspArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void unsetBg() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void unsetWhole() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWordprocessingContentPart getContentPartArray(int i) {
        CTWordprocessingContentPart cTWordprocessingContentPart;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingContentPart = (CTWordprocessingContentPart) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTWordprocessingContentPart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTWordprocessingContentPart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTGraphicFrame getGraphicFrameArray(int i) {
        CTGraphicFrame cTGraphicFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicFrame = (CTGraphicFrame) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTGraphicFrame == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGraphicFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTPicture getPicArray(int i) {
        CTPicture cTPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTPicture = (CTPicture) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTPicture == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPicture;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWordprocessingGroup getWgpArray(int i) {
        CTWordprocessingGroup cTWordprocessingGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingGroup = (CTWordprocessingGroup) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTWordprocessingGroup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTWordprocessingGroup;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public CTWordprocessingShape getWspArray(int i) {
        CTWordprocessingShape cTWordprocessingShape;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingShape = (CTWordprocessingShape) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTWordprocessingShape == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTWordprocessingShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void setContentPartArray(int i, CTWordprocessingContentPart cTWordprocessingContentPart) {
        generatedSetterHelperImpl(cTWordprocessingContentPart, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void setGraphicFrameArray(int i, CTGraphicFrame cTGraphicFrame) {
        generatedSetterHelperImpl(cTGraphicFrame, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void setPicArray(int i, CTPicture cTPicture) {
        generatedSetterHelperImpl(cTPicture, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void setWgpArray(int i, CTWordprocessingGroup cTWordprocessingGroup) {
        generatedSetterHelperImpl(cTWordprocessingGroup, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingCanvas
    public void setWspArray(int i, CTWordprocessingShape cTWordprocessingShape) {
        generatedSetterHelperImpl(cTWordprocessingShape, PROPERTY_QNAME[2], i, (short) 2);
    }
}
