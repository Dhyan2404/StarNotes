package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTAlgorithm;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTChoose;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTConstraints;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTRules;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTShape;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTOtherwiseImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTOtherwiseImpl extends XmlComplexContentImpl implements CTOtherwise {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "alg"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "shape"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "presOf"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "constrLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "ruleLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "forEach"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "layoutNode"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, Constants.ELEMNAME_CHOOSE_STRING), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", "name")};
    private static final long serialVersionUID = 1;

    public CTOtherwiseImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTAlgorithm addNewAlg() {
        CTAlgorithm cTAlgorithm;
        synchronized (monitor()) {
            check_orphaned();
            cTAlgorithm = (CTAlgorithm) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAlgorithm;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTChoose addNewChoose() {
        CTChoose cTChoose;
        synchronized (monitor()) {
            check_orphaned();
            cTChoose = (CTChoose) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTChoose;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTConstraints addNewConstrLst() {
        CTConstraints cTConstraints;
        synchronized (monitor()) {
            check_orphaned();
            cTConstraints = (CTConstraints) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTConstraints;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTForEach addNewForEach() {
        CTForEach cTForEach;
        synchronized (monitor()) {
            check_orphaned();
            cTForEach = (CTForEach) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTForEach;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTLayoutNode addNewLayoutNode() {
        CTLayoutNode cTLayoutNode;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutNode = (CTLayoutNode) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTLayoutNode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTPresentationOf addNewPresOf() {
        CTPresentationOf cTPresentationOf;
        synchronized (monitor()) {
            check_orphaned();
            cTPresentationOf = (CTPresentationOf) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTPresentationOf;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTRules addNewRuleLst() {
        CTRules cTRules;
        synchronized (monitor()) {
            check_orphaned();
            cTRules = (CTRules) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTRules;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTShape addNewShape() {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTAlgorithm[] getAlgArray() {
        return (CTAlgorithm[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTAlgorithm[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public List<CTAlgorithm> getAlgList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hb6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.getAlgArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ib6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOtherwiseImpl.this.setAlgArray(((Integer) obj).intValue(), (CTAlgorithm) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jb6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.insertNewAlg(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kb6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOtherwiseImpl.this.removeAlg(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lb6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOtherwiseImpl.this.sizeOfAlgArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTChoose[] getChooseArray() {
        return (CTChoose[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTChoose[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public List<CTChoose> getChooseList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wa6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.getChooseArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xa6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOtherwiseImpl.this.setChooseArray(((Integer) obj).intValue(), (CTChoose) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ya6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.insertNewChoose(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.za6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOtherwiseImpl.this.removeChoose(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ab6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOtherwiseImpl.this.sizeOfChooseArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTConstraints[] getConstrLstArray() {
        return (CTConstraints[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTConstraints[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public List<CTConstraints> getConstrLstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yb6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.getConstrLstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zb6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOtherwiseImpl.this.setConstrLstArray(((Integer) obj).intValue(), (CTConstraints) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ac6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.insertNewConstrLst(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bc6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOtherwiseImpl.this.removeConstrLst(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cc6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOtherwiseImpl.this.sizeOfConstrLstArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTOfficeArtExtensionList[] getExtLstArray() {
        return (CTOfficeArtExtensionList[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTOfficeArtExtensionList[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public List<CTOfficeArtExtensionList> getExtLstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.la6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.getExtLstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ma6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOtherwiseImpl.this.setExtLstArray(((Integer) obj).intValue(), (CTOfficeArtExtensionList) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.na6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.insertNewExtLst(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.oa6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOtherwiseImpl.this.removeExtLst(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pa6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOtherwiseImpl.this.sizeOfExtLstArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTForEach[] getForEachArray() {
        return (CTForEach[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTForEach[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public List<CTForEach> getForEachList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bb6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.getForEachArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cb6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOtherwiseImpl.this.setForEachArray(((Integer) obj).intValue(), (CTForEach) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.db6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.insertNewForEach(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.eb6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOtherwiseImpl.this.removeForEach(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fb6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOtherwiseImpl.this.sizeOfForEachArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTLayoutNode[] getLayoutNodeArray() {
        return (CTLayoutNode[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTLayoutNode[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public List<CTLayoutNode> getLayoutNodeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mb6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.getLayoutNodeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nb6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOtherwiseImpl.this.setLayoutNodeArray(((Integer) obj).intValue(), (CTLayoutNode) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ob6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.insertNewLayoutNode(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pb6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOtherwiseImpl.this.removeLayoutNode(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qb6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOtherwiseImpl.this.sizeOfLayoutNodeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public String getName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[9]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTPresentationOf[] getPresOfArray() {
        return (CTPresentationOf[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTPresentationOf[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public List<CTPresentationOf> getPresOfList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qa6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.getPresOfArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ra6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOtherwiseImpl.this.setPresOfArray(((Integer) obj).intValue(), (CTPresentationOf) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.sa6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.insertNewPresOf(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ta6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOtherwiseImpl.this.removePresOf(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ua6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOtherwiseImpl.this.sizeOfPresOfArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTRules[] getRuleLstArray() {
        return (CTRules[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTRules[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public List<CTRules> getRuleLstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sb6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.getRuleLstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tb6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOtherwiseImpl.this.setRuleLstArray(((Integer) obj).intValue(), (CTRules) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ub6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.insertNewRuleLst(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vb6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOtherwiseImpl.this.removeRuleLst(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wb6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOtherwiseImpl.this.sizeOfRuleLstArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTShape[] getShapeArray() {
        return (CTShape[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTShape[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public List<CTShape> getShapeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ka6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.getShapeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.va6
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTOtherwiseImpl.this.setShapeArray(((Integer) obj).intValue(), (CTShape) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.gb6
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTOtherwiseImpl.this.insertNewShape(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rb6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTOtherwiseImpl.this.removeShape(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xb6
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTOtherwiseImpl.this.sizeOfShapeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTAlgorithm insertNewAlg(int i) {
        CTAlgorithm cTAlgorithm;
        synchronized (monitor()) {
            check_orphaned();
            cTAlgorithm = (CTAlgorithm) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTAlgorithm;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTChoose insertNewChoose(int i) {
        CTChoose cTChoose;
        synchronized (monitor()) {
            check_orphaned();
            cTChoose = (CTChoose) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTChoose;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTConstraints insertNewConstrLst(int i) {
        CTConstraints cTConstraints;
        synchronized (monitor()) {
            check_orphaned();
            cTConstraints = (CTConstraints) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTConstraints;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTOfficeArtExtensionList insertNewExtLst(int i) {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTForEach insertNewForEach(int i) {
        CTForEach cTForEach;
        synchronized (monitor()) {
            check_orphaned();
            cTForEach = (CTForEach) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTForEach;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTLayoutNode insertNewLayoutNode(int i) {
        CTLayoutNode cTLayoutNode;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutNode = (CTLayoutNode) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTLayoutNode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTPresentationOf insertNewPresOf(int i) {
        CTPresentationOf cTPresentationOf;
        synchronized (monitor()) {
            check_orphaned();
            cTPresentationOf = (CTPresentationOf) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTPresentationOf;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTRules insertNewRuleLst(int i) {
        CTRules cTRules;
        synchronized (monitor()) {
            check_orphaned();
            cTRules = (CTRules) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTRules;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTShape insertNewShape(int i) {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public boolean isSetName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void removeAlg(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void removeChoose(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void removeConstrLst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void removeExtLst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void removeForEach(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void removeLayoutNode(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void removePresOf(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void removeRuleLst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void removeShape(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setAlgArray(CTAlgorithm[] cTAlgorithmArr) {
        check_orphaned();
        arraySetterHelper(cTAlgorithmArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setChooseArray(CTChoose[] cTChooseArr) {
        check_orphaned();
        arraySetterHelper(cTChooseArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setConstrLstArray(CTConstraints[] cTConstraintsArr) {
        check_orphaned();
        arraySetterHelper(cTConstraintsArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setExtLstArray(CTOfficeArtExtensionList[] cTOfficeArtExtensionListArr) {
        check_orphaned();
        arraySetterHelper(cTOfficeArtExtensionListArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setForEachArray(CTForEach[] cTForEachArr) {
        check_orphaned();
        arraySetterHelper(cTForEachArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setLayoutNodeArray(CTLayoutNode[] cTLayoutNodeArr) {
        check_orphaned();
        arraySetterHelper(cTLayoutNodeArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setPresOfArray(CTPresentationOf[] cTPresentationOfArr) {
        check_orphaned();
        arraySetterHelper(cTPresentationOfArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setRuleLstArray(CTRules[] cTRulesArr) {
        check_orphaned();
        arraySetterHelper(cTRulesArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setShapeArray(CTShape[] cTShapeArr) {
        check_orphaned();
        arraySetterHelper(cTShapeArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public int sizeOfAlgArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public int sizeOfChooseArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public int sizeOfConstrLstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public int sizeOfExtLstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public int sizeOfForEachArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public int sizeOfLayoutNodeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public int sizeOfPresOfArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public int sizeOfRuleLstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public int sizeOfShapeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public XmlString xgetName() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlString = (XmlString) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlString == null) {
                xmlString = (XmlString) get_default_attribute_value(qNameArr[9]);
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void xsetName(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[9]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTAlgorithm getAlgArray(int i) {
        CTAlgorithm cTAlgorithm;
        synchronized (monitor()) {
            check_orphaned();
            cTAlgorithm = (CTAlgorithm) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTAlgorithm == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTAlgorithm;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTChoose getChooseArray(int i) {
        CTChoose cTChoose;
        synchronized (monitor()) {
            check_orphaned();
            cTChoose = (CTChoose) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTChoose == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTChoose;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTConstraints getConstrLstArray(int i) {
        CTConstraints cTConstraints;
        synchronized (monitor()) {
            check_orphaned();
            cTConstraints = (CTConstraints) get_store().find_element_user(PROPERTY_QNAME[3], i);
            if (cTConstraints == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTConstraints;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTOfficeArtExtensionList getExtLstArray(int i) {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTOfficeArtExtensionList == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTForEach getForEachArray(int i) {
        CTForEach cTForEach;
        synchronized (monitor()) {
            check_orphaned();
            cTForEach = (CTForEach) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTForEach == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTForEach;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTLayoutNode getLayoutNodeArray(int i) {
        CTLayoutNode cTLayoutNode;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutNode = (CTLayoutNode) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTLayoutNode == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLayoutNode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTPresentationOf getPresOfArray(int i) {
        CTPresentationOf cTPresentationOf;
        synchronized (monitor()) {
            check_orphaned();
            cTPresentationOf = (CTPresentationOf) get_store().find_element_user(PROPERTY_QNAME[2], i);
            if (cTPresentationOf == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTPresentationOf;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTRules getRuleLstArray(int i) {
        CTRules cTRules;
        synchronized (monitor()) {
            check_orphaned();
            cTRules = (CTRules) get_store().find_element_user(PROPERTY_QNAME[4], i);
            if (cTRules == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTRules;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public CTShape getShapeArray(int i) {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().find_element_user(PROPERTY_QNAME[1], i);
            if (cTShape == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setAlgArray(int i, CTAlgorithm cTAlgorithm) {
        generatedSetterHelperImpl(cTAlgorithm, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setChooseArray(int i, CTChoose cTChoose) {
        generatedSetterHelperImpl(cTChoose, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setConstrLstArray(int i, CTConstraints cTConstraints) {
        generatedSetterHelperImpl(cTConstraints, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setExtLstArray(int i, CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setForEachArray(int i, CTForEach cTForEach) {
        generatedSetterHelperImpl(cTForEach, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setLayoutNodeArray(int i, CTLayoutNode cTLayoutNode) {
        generatedSetterHelperImpl(cTLayoutNode, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setPresOfArray(int i, CTPresentationOf cTPresentationOf) {
        generatedSetterHelperImpl(cTPresentationOf, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setRuleLstArray(int i, CTRules cTRules) {
        generatedSetterHelperImpl(cTRules, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTOtherwise
    public void setShapeArray(int i, CTShape cTShape) {
        generatedSetterHelperImpl(cTShape, PROPERTY_QNAME[1], i, (short) 2);
    }
}
