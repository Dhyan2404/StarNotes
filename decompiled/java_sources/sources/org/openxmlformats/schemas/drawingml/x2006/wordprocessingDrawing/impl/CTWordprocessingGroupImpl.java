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
import org.openxmlformats.schemas.drawingml.x2006.main.CTGroupShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualGroupDrawingShapeProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;
import org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTGraphicFrame;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingContentPart;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingShape;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.impl.CTWordprocessingGroupImpl;

/* loaded from: classes14.dex */
public class CTWordprocessingGroupImpl extends XmlComplexContentImpl implements CTWordprocessingGroup {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "cNvPr"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "cNvGrpSpPr"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "grpSpPr"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "wsp"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "grpSp"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "graphicFrame"), new QName("http://schemas.openxmlformats.org/drawingml/2006/picture", "pic"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "contentPart"), new QName("http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing", "extLst")};
    private static final long serialVersionUID = 1;

    public CTWordprocessingGroupImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTNonVisualGroupDrawingShapeProps addNewCNvGrpSpPr() {
        CTNonVisualGroupDrawingShapeProps cTNonVisualGroupDrawingShapeProps;
        synchronized (monitor()) {
            check_orphaned();
            cTNonVisualGroupDrawingShapeProps = (CTNonVisualGroupDrawingShapeProps) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTNonVisualGroupDrawingShapeProps;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTNonVisualDrawingProps addNewCNvPr() {
        CTNonVisualDrawingProps cTNonVisualDrawingProps;
        synchronized (monitor()) {
            check_orphaned();
            cTNonVisualDrawingProps = (CTNonVisualDrawingProps) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTNonVisualDrawingProps;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTWordprocessingContentPart addNewContentPart() {
        CTWordprocessingContentPart cTWordprocessingContentPart;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingContentPart = (CTWordprocessingContentPart) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTWordprocessingContentPart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTGraphicFrame addNewGraphicFrame() {
        CTGraphicFrame cTGraphicFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicFrame = (CTGraphicFrame) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTGraphicFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTWordprocessingGroup addNewGrpSp() {
        CTWordprocessingGroup cTWordprocessingGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingGroup = (CTWordprocessingGroup) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTWordprocessingGroup;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTGroupShapeProperties addNewGrpSpPr() {
        CTGroupShapeProperties cTGroupShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShapeProperties = (CTGroupShapeProperties) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTGroupShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTPicture addNewPic() {
        CTPicture cTPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTPicture = (CTPicture) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTPicture;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTWordprocessingShape addNewWsp() {
        CTWordprocessingShape cTWordprocessingShape;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingShape = (CTWordprocessingShape) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTWordprocessingShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTNonVisualGroupDrawingShapeProps getCNvGrpSpPr() {
        CTNonVisualGroupDrawingShapeProps cTNonVisualGroupDrawingShapeProps;
        synchronized (monitor()) {
            check_orphaned();
            cTNonVisualGroupDrawingShapeProps = (CTNonVisualGroupDrawingShapeProps) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTNonVisualGroupDrawingShapeProps == null) {
                cTNonVisualGroupDrawingShapeProps = null;
            }
        }
        return cTNonVisualGroupDrawingShapeProps;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTNonVisualDrawingProps getCNvPr() {
        CTNonVisualDrawingProps cTNonVisualDrawingProps;
        synchronized (monitor()) {
            check_orphaned();
            cTNonVisualDrawingProps = (CTNonVisualDrawingProps) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTNonVisualDrawingProps == null) {
                cTNonVisualDrawingProps = null;
            }
        }
        return cTNonVisualDrawingProps;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTWordprocessingContentPart[] getContentPartArray() {
        return (CTWordprocessingContentPart[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTWordprocessingContentPart[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public List<CTWordprocessingContentPart> getContentPartList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mld
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingGroupImpl.this.getContentPartArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nld
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWordprocessingGroupImpl.this.setContentPartArray(((Integer) obj).intValue(), (CTWordprocessingContentPart) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.old
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingGroupImpl.this.insertNewContentPart(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pld
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWordprocessingGroupImpl.this.removeContentPart(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qld
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWordprocessingGroupImpl.this.sizeOfContentPartArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTGraphicFrame[] getGraphicFrameArray() {
        return (CTGraphicFrame[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTGraphicFrame[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public List<CTGraphicFrame> getGraphicFrameList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.eld
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingGroupImpl.this.getGraphicFrameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.fld
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWordprocessingGroupImpl.this.setGraphicFrameArray(((Integer) obj).intValue(), (CTGraphicFrame) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gld
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingGroupImpl.this.insertNewGraphicFrame(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hld
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWordprocessingGroupImpl.this.removeGraphicFrame(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ild
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWordprocessingGroupImpl.this.sizeOfGraphicFrameArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTWordprocessingGroup[] getGrpSpArray() {
        return (CTWordprocessingGroup[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTWordprocessingGroup[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public List<CTWordprocessingGroup> getGrpSpList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.tkd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingGroupImpl.this.getGrpSpArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ukd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWordprocessingGroupImpl.this.setGrpSpArray(((Integer) obj).intValue(), (CTWordprocessingGroup) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.vkd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingGroupImpl.this.insertNewGrpSp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wkd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWordprocessingGroupImpl.this.removeGrpSp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xkd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWordprocessingGroupImpl.this.sizeOfGrpSpArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTGroupShapeProperties getGrpSpPr() {
        CTGroupShapeProperties cTGroupShapeProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupShapeProperties = (CTGroupShapeProperties) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTGroupShapeProperties == null) {
                cTGroupShapeProperties = null;
            }
        }
        return cTGroupShapeProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTPicture[] getPicArray() {
        return (CTPicture[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTPicture[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public List<CTPicture> getPicList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ykd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingGroupImpl.this.getPicArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zkd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWordprocessingGroupImpl.this.setPicArray(((Integer) obj).intValue(), (CTPicture) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ald
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingGroupImpl.this.insertNewPic(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bld
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWordprocessingGroupImpl.this.removePic(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cld
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWordprocessingGroupImpl.this.sizeOfPicArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTWordprocessingShape[] getWspArray() {
        return (CTWordprocessingShape[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTWordprocessingShape[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public List<CTWordprocessingShape> getWspList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.skd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingGroupImpl.this.getWspArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dld
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWordprocessingGroupImpl.this.setWspArray(((Integer) obj).intValue(), (CTWordprocessingShape) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jld
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWordprocessingGroupImpl.this.insertNewWsp(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kld
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWordprocessingGroupImpl.this.removeWsp(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lld
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWordprocessingGroupImpl.this.sizeOfWspArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTWordprocessingContentPart insertNewContentPart(int i) {
        CTWordprocessingContentPart cTWordprocessingContentPart;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingContentPart = (CTWordprocessingContentPart) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTWordprocessingContentPart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTGraphicFrame insertNewGraphicFrame(int i) {
        CTGraphicFrame cTGraphicFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicFrame = (CTGraphicFrame) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTGraphicFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTWordprocessingGroup insertNewGrpSp(int i) {
        CTWordprocessingGroup cTWordprocessingGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingGroup = (CTWordprocessingGroup) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTWordprocessingGroup;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTPicture insertNewPic(int i) {
        CTPicture cTPicture;
        synchronized (monitor()) {
            check_orphaned();
            cTPicture = (CTPicture) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTPicture;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTWordprocessingShape insertNewWsp(int i) {
        CTWordprocessingShape cTWordprocessingShape;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingShape = (CTWordprocessingShape) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTWordprocessingShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public boolean isSetCNvPr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void removeContentPart(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void removeGraphicFrame(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void removeGrpSp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void removePic(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void removeWsp(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setCNvGrpSpPr(CTNonVisualGroupDrawingShapeProps cTNonVisualGroupDrawingShapeProps) {
        generatedSetterHelperImpl(cTNonVisualGroupDrawingShapeProps, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setCNvPr(CTNonVisualDrawingProps cTNonVisualDrawingProps) {
        generatedSetterHelperImpl(cTNonVisualDrawingProps, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setContentPartArray(CTWordprocessingContentPart[] cTWordprocessingContentPartArr) {
        check_orphaned();
        arraySetterHelper(cTWordprocessingContentPartArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[8], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setGraphicFrameArray(CTGraphicFrame[] cTGraphicFrameArr) {
        check_orphaned();
        arraySetterHelper(cTGraphicFrameArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setGrpSpArray(CTWordprocessingGroup[] cTWordprocessingGroupArr) {
        check_orphaned();
        arraySetterHelper(cTWordprocessingGroupArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setGrpSpPr(CTGroupShapeProperties cTGroupShapeProperties) {
        generatedSetterHelperImpl(cTGroupShapeProperties, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setPicArray(CTPicture[] cTPictureArr) {
        check_orphaned();
        arraySetterHelper(cTPictureArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setWspArray(CTWordprocessingShape[] cTWordprocessingShapeArr) {
        check_orphaned();
        arraySetterHelper(cTWordprocessingShapeArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public int sizeOfContentPartArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public int sizeOfGraphicFrameArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public int sizeOfGrpSpArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public int sizeOfPicArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public int sizeOfWspArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void unsetCNvPr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTWordprocessingContentPart getContentPartArray(int i) {
        CTWordprocessingContentPart cTWordprocessingContentPart;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingContentPart = (CTWordprocessingContentPart) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTWordprocessingContentPart == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTWordprocessingContentPart;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTGraphicFrame getGraphicFrameArray(int i) {
        CTGraphicFrame cTGraphicFrame;
        synchronized (monitor()) {
            check_orphaned();
            cTGraphicFrame = (CTGraphicFrame) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTGraphicFrame == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGraphicFrame;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTWordprocessingGroup getGrpSpArray(int i) {
        CTWordprocessingGroup cTWordprocessingGroup;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingGroup = (CTWordprocessingGroup) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTWordprocessingGroup == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTWordprocessingGroup;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public CTWordprocessingShape getWspArray(int i) {
        CTWordprocessingShape cTWordprocessingShape;
        synchronized (monitor()) {
            check_orphaned();
            cTWordprocessingShape = (CTWordprocessingShape) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTWordprocessingShape == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTWordprocessingShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setContentPartArray(int i, CTWordprocessingContentPart cTWordprocessingContentPart) {
        generatedSetterHelperImpl(cTWordprocessingContentPart, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setGraphicFrameArray(int i, CTGraphicFrame cTGraphicFrame) {
        generatedSetterHelperImpl(cTGraphicFrame, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setGrpSpArray(int i, CTWordprocessingGroup cTWordprocessingGroup) {
        generatedSetterHelperImpl(cTWordprocessingGroup, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setPicArray(int i, CTPicture cTPicture) {
        generatedSetterHelperImpl(cTPicture, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTWordprocessingGroup
    public void setWspArray(int i, CTWordprocessingShape cTWordprocessingShape) {
        generatedSetterHelperImpl(cTWordprocessingShape, PROPERTY_QNAME[3], i, (short) 2);
    }
}
