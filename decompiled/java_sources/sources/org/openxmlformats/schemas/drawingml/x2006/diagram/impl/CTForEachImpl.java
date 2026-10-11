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
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTRules;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTShape;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STAxisTypes;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STBooleans;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STElementTypes;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STInts;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STUnsignedInts;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTForEachImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTForEachImpl extends XmlComplexContentImpl implements CTForEach {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "alg"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "shape"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "presOf"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "constrLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "ruleLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "forEach"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "layoutNode"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, Constants.ELEMNAME_CHOOSE_STRING), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", "name"), new QName("", "ref"), new QName("", "axis"), new QName("", "ptType"), new QName("", "hideLastTrans"), new QName("", "st"), new QName("", "cnt"), new QName("", "step")};
    private static final long serialVersionUID = 1;

    public CTForEachImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTAlgorithm addNewAlg() {
        CTAlgorithm cTAlgorithm;
        synchronized (monitor()) {
            check_orphaned();
            cTAlgorithm = (CTAlgorithm) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAlgorithm;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTChoose addNewChoose() {
        CTChoose cTChoose;
        synchronized (monitor()) {
            check_orphaned();
            cTChoose = (CTChoose) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTChoose;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTConstraints addNewConstrLst() {
        CTConstraints cTConstraints;
        synchronized (monitor()) {
            check_orphaned();
            cTConstraints = (CTConstraints) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTConstraints;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTForEach addNewForEach() {
        CTForEach cTForEach;
        synchronized (monitor()) {
            check_orphaned();
            cTForEach = (CTForEach) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTForEach;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTLayoutNode addNewLayoutNode() {
        CTLayoutNode cTLayoutNode;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutNode = (CTLayoutNode) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTLayoutNode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTPresentationOf addNewPresOf() {
        CTPresentationOf cTPresentationOf;
        synchronized (monitor()) {
            check_orphaned();
            cTPresentationOf = (CTPresentationOf) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTPresentationOf;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTRules addNewRuleLst() {
        CTRules cTRules;
        synchronized (monitor()) {
            check_orphaned();
            cTRules = (CTRules) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTRules;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTShape addNewShape() {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTAlgorithm[] getAlgArray() {
        return (CTAlgorithm[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTAlgorithm[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List<CTAlgorithm> getAlgList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.j14
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.getAlgArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.k14
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTForEachImpl.this.setAlgArray(((Integer) obj).intValue(), (CTAlgorithm) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.l14
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.insertNewAlg(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.m14
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTForEachImpl.this.removeAlg(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.n14
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTForEachImpl.this.sizeOfAlgArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List getAxis() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[11]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTChoose[] getChooseArray() {
        return (CTChoose[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTChoose[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List<CTChoose> getChooseList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.i04
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.getChooseArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.j04
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTForEachImpl.this.setChooseArray(((Integer) obj).intValue(), (CTChoose) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.k04
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.insertNewChoose(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.l04
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTForEachImpl.this.removeChoose(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.m04
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTForEachImpl.this.sizeOfChooseArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List getCnt() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[15]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[15]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTConstraints[] getConstrLstArray() {
        return (CTConstraints[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTConstraints[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List<CTConstraints> getConstrLstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.e14
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.getConstrLstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.f14
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTForEachImpl.this.setConstrLstArray(((Integer) obj).intValue(), (CTConstraints) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.g14
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.insertNewConstrLst(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.h14
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTForEachImpl.this.removeConstrLst(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.i14
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTForEachImpl.this.sizeOfConstrLstArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTOfficeArtExtensionList[] getExtLstArray() {
        return (CTOfficeArtExtensionList[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTOfficeArtExtensionList[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List<CTOfficeArtExtensionList> getExtLstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.p14
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.getExtLstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.q14
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTForEachImpl.this.setExtLstArray(((Integer) obj).intValue(), (CTOfficeArtExtensionList) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.r14
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.insertNewExtLst(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.s14
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTForEachImpl.this.removeExtLst(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.t14
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTForEachImpl.this.sizeOfExtLstArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTForEach[] getForEachArray() {
        return (CTForEach[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTForEach[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List<CTForEach> getForEachList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.h04
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.getForEachArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.s04
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTForEachImpl.this.setForEachArray(((Integer) obj).intValue(), (CTForEach) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.d14
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.insertNewForEach(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.o14
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTForEachImpl.this.removeForEach(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.u14
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTForEachImpl.this.sizeOfForEachArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List getHideLastTrans() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[13]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTLayoutNode[] getLayoutNodeArray() {
        return (CTLayoutNode[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTLayoutNode[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List<CTLayoutNode> getLayoutNodeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.y04
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.getLayoutNodeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.z04
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTForEachImpl.this.setLayoutNodeArray(((Integer) obj).intValue(), (CTLayoutNode) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.a14
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.insertNewLayoutNode(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.b14
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTForEachImpl.this.removeLayoutNode(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.c14
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTForEachImpl.this.sizeOfLayoutNodeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTPresentationOf[] getPresOfArray() {
        return (CTPresentationOf[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTPresentationOf[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List<CTPresentationOf> getPresOfList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.v14
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.getPresOfArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.w14
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTForEachImpl.this.setPresOfArray(((Integer) obj).intValue(), (CTPresentationOf) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.x14
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.insertNewPresOf(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.y14
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTForEachImpl.this.removePresOf(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.z14
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTForEachImpl.this.sizeOfPresOfArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List getPtType() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[12]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[12]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public String getRef() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[10]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTRules[] getRuleLstArray() {
        return (CTRules[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTRules[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List<CTRules> getRuleLstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.n04
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.getRuleLstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.o04
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTForEachImpl.this.setRuleLstArray(((Integer) obj).intValue(), (CTRules) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.p04
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.insertNewRuleLst(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.q04
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTForEachImpl.this.removeRuleLst(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.r04
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTForEachImpl.this.sizeOfRuleLstArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTShape[] getShapeArray() {
        return (CTShape[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTShape[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List<CTShape> getShapeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.t04
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.getShapeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u04
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTForEachImpl.this.setShapeArray(((Integer) obj).intValue(), (CTShape) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.v04
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTForEachImpl.this.insertNewShape(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.w04
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTForEachImpl.this.removeShape(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.x04
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTForEachImpl.this.sizeOfShapeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List getSt() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[14]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[14]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public List getStep() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[16]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[16]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTAlgorithm insertNewAlg(int i) {
        CTAlgorithm cTAlgorithm;
        synchronized (monitor()) {
            check_orphaned();
            cTAlgorithm = (CTAlgorithm) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTAlgorithm;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTChoose insertNewChoose(int i) {
        CTChoose cTChoose;
        synchronized (monitor()) {
            check_orphaned();
            cTChoose = (CTChoose) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTChoose;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTConstraints insertNewConstrLst(int i) {
        CTConstraints cTConstraints;
        synchronized (monitor()) {
            check_orphaned();
            cTConstraints = (CTConstraints) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTConstraints;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTOfficeArtExtensionList insertNewExtLst(int i) {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTForEach insertNewForEach(int i) {
        CTForEach cTForEach;
        synchronized (monitor()) {
            check_orphaned();
            cTForEach = (CTForEach) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTForEach;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTLayoutNode insertNewLayoutNode(int i) {
        CTLayoutNode cTLayoutNode;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutNode = (CTLayoutNode) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTLayoutNode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTPresentationOf insertNewPresOf(int i) {
        CTPresentationOf cTPresentationOf;
        synchronized (monitor()) {
            check_orphaned();
            cTPresentationOf = (CTPresentationOf) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTPresentationOf;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTRules insertNewRuleLst(int i) {
        CTRules cTRules;
        synchronized (monitor()) {
            check_orphaned();
            cTRules = (CTRules) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTRules;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public CTShape insertNewShape(int i) {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public boolean isSetAxis() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[11]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public boolean isSetCnt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[15]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public boolean isSetHideLastTrans() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[13]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public boolean isSetName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public boolean isSetPtType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[12]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public boolean isSetRef() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public boolean isSetSt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[14]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public boolean isSetStep() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[16]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void removeAlg(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void removeChoose(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void removeConstrLst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void removeExtLst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void removeForEach(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void removeLayoutNode(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void removePresOf(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void removeRuleLst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void removeShape(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setAlgArray(CTAlgorithm[] cTAlgorithmArr) {
        check_orphaned();
        arraySetterHelper(cTAlgorithmArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setAxis(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[11]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setChooseArray(CTChoose[] cTChooseArr) {
        check_orphaned();
        arraySetterHelper(cTChooseArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setCnt(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[15]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[15]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setConstrLstArray(CTConstraints[] cTConstraintsArr) {
        check_orphaned();
        arraySetterHelper(cTConstraintsArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setExtLstArray(CTOfficeArtExtensionList[] cTOfficeArtExtensionListArr) {
        check_orphaned();
        arraySetterHelper(cTOfficeArtExtensionListArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setForEachArray(CTForEach[] cTForEachArr) {
        check_orphaned();
        arraySetterHelper(cTForEachArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setHideLastTrans(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[13]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setLayoutNodeArray(CTLayoutNode[] cTLayoutNodeArr) {
        check_orphaned();
        arraySetterHelper(cTLayoutNodeArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setPresOfArray(CTPresentationOf[] cTPresentationOfArr) {
        check_orphaned();
        arraySetterHelper(cTPresentationOfArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setPtType(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[12]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[12]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setRef(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setRuleLstArray(CTRules[] cTRulesArr) {
        check_orphaned();
        arraySetterHelper(cTRulesArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setShapeArray(CTShape[] cTShapeArr) {
        check_orphaned();
        arraySetterHelper(cTShapeArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setSt(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[14]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[14]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setStep(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[16]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[16]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public int sizeOfAlgArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public int sizeOfChooseArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public int sizeOfConstrLstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public int sizeOfExtLstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public int sizeOfForEachArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public int sizeOfLayoutNodeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public int sizeOfPresOfArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public int sizeOfRuleLstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public int sizeOfShapeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void unsetAxis() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[11]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void unsetCnt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[15]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void unsetHideLastTrans() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[13]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void unsetPtType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[12]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void unsetRef() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void unsetSt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[14]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void unsetStep() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[16]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public STAxisTypes xgetAxis() {
        STAxisTypes sTAxisTypes;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTAxisTypes = (STAxisTypes) typeStore.find_attribute_user(qNameArr[11]);
            if (sTAxisTypes == null) {
                sTAxisTypes = (STAxisTypes) get_default_attribute_value(qNameArr[11]);
            }
        }
        return sTAxisTypes;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public STUnsignedInts xgetCnt() {
        STUnsignedInts sTUnsignedInts;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTUnsignedInts = (STUnsignedInts) typeStore.find_attribute_user(qNameArr[15]);
            if (sTUnsignedInts == null) {
                sTUnsignedInts = (STUnsignedInts) get_default_attribute_value(qNameArr[15]);
            }
        }
        return sTUnsignedInts;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public STBooleans xgetHideLastTrans() {
        STBooleans sTBooleans;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTBooleans = (STBooleans) typeStore.find_attribute_user(qNameArr[13]);
            if (sTBooleans == null) {
                sTBooleans = (STBooleans) get_default_attribute_value(qNameArr[13]);
            }
        }
        return sTBooleans;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public STElementTypes xgetPtType() {
        STElementTypes sTElementTypes;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTElementTypes = (STElementTypes) typeStore.find_attribute_user(qNameArr[12]);
            if (sTElementTypes == null) {
                sTElementTypes = (STElementTypes) get_default_attribute_value(qNameArr[12]);
            }
        }
        return sTElementTypes;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public XmlString xgetRef() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlString = (XmlString) typeStore.find_attribute_user(qNameArr[10]);
            if (xmlString == null) {
                xmlString = (XmlString) get_default_attribute_value(qNameArr[10]);
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public STInts xgetSt() {
        STInts sTInts;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTInts = (STInts) typeStore.find_attribute_user(qNameArr[14]);
            if (sTInts == null) {
                sTInts = (STInts) get_default_attribute_value(qNameArr[14]);
            }
        }
        return sTInts;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public STInts xgetStep() {
        STInts sTInts;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTInts = (STInts) typeStore.find_attribute_user(qNameArr[16]);
            if (sTInts == null) {
                sTInts = (STInts) get_default_attribute_value(qNameArr[16]);
            }
        }
        return sTInts;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void xsetAxis(STAxisTypes sTAxisTypes) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAxisTypes sTAxisTypes2 = (STAxisTypes) typeStore.find_attribute_user(qNameArr[11]);
            if (sTAxisTypes2 == null) {
                sTAxisTypes2 = (STAxisTypes) get_store().add_attribute_user(qNameArr[11]);
            }
            sTAxisTypes2.set(sTAxisTypes);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void xsetCnt(STUnsignedInts sTUnsignedInts) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STUnsignedInts sTUnsignedInts2 = (STUnsignedInts) typeStore.find_attribute_user(qNameArr[15]);
            if (sTUnsignedInts2 == null) {
                sTUnsignedInts2 = (STUnsignedInts) get_store().add_attribute_user(qNameArr[15]);
            }
            sTUnsignedInts2.set(sTUnsignedInts);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void xsetHideLastTrans(STBooleans sTBooleans) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBooleans sTBooleans2 = (STBooleans) typeStore.find_attribute_user(qNameArr[13]);
            if (sTBooleans2 == null) {
                sTBooleans2 = (STBooleans) get_store().add_attribute_user(qNameArr[13]);
            }
            sTBooleans2.set(sTBooleans);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void xsetPtType(STElementTypes sTElementTypes) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STElementTypes sTElementTypes2 = (STElementTypes) typeStore.find_attribute_user(qNameArr[12]);
            if (sTElementTypes2 == null) {
                sTElementTypes2 = (STElementTypes) get_store().add_attribute_user(qNameArr[12]);
            }
            sTElementTypes2.set(sTElementTypes);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void xsetRef(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[10]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[10]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void xsetSt(STInts sTInts) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STInts sTInts2 = (STInts) typeStore.find_attribute_user(qNameArr[14]);
            if (sTInts2 == null) {
                sTInts2 = (STInts) get_store().add_attribute_user(qNameArr[14]);
            }
            sTInts2.set(sTInts);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void xsetStep(STInts sTInts) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STInts sTInts2 = (STInts) typeStore.find_attribute_user(qNameArr[16]);
            if (sTInts2 == null) {
                sTInts2 = (STInts) get_store().add_attribute_user(qNameArr[16]);
            }
            sTInts2.set(sTInts);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setAlgArray(int i, CTAlgorithm cTAlgorithm) {
        generatedSetterHelperImpl(cTAlgorithm, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setChooseArray(int i, CTChoose cTChoose) {
        generatedSetterHelperImpl(cTChoose, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setConstrLstArray(int i, CTConstraints cTConstraints) {
        generatedSetterHelperImpl(cTConstraints, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setExtLstArray(int i, CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setForEachArray(int i, CTForEach cTForEach) {
        generatedSetterHelperImpl(cTForEach, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setLayoutNodeArray(int i, CTLayoutNode cTLayoutNode) {
        generatedSetterHelperImpl(cTLayoutNode, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setPresOfArray(int i, CTPresentationOf cTPresentationOf) {
        generatedSetterHelperImpl(cTPresentationOf, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setRuleLstArray(int i, CTRules cTRules) {
        generatedSetterHelperImpl(cTRules, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTForEach
    public void setShapeArray(int i, CTShape cTShape) {
        generatedSetterHelperImpl(cTShape, PROPERTY_QNAME[1], i, (short) 2);
    }
}
