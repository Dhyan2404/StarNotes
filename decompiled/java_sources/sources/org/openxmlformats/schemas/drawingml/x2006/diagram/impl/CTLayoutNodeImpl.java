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
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutVariablePropertySet;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTPresentationOf;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTRules;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTShape;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STChildOrderType;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTLayoutNodeImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTLayoutNodeImpl extends XmlComplexContentImpl implements CTLayoutNode {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "alg"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "shape"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "presOf"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "constrLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "ruleLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "varLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "forEach"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "layoutNode"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, Constants.ELEMNAME_CHOOSE_STRING), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", "name"), new QName("", "styleLbl"), new QName("", "chOrder"), new QName("", "moveWith")};
    private static final long serialVersionUID = 1;

    public CTLayoutNodeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTAlgorithm addNewAlg() {
        CTAlgorithm cTAlgorithm;
        synchronized (monitor()) {
            check_orphaned();
            cTAlgorithm = (CTAlgorithm) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAlgorithm;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTChoose addNewChoose() {
        CTChoose cTChoose;
        synchronized (monitor()) {
            check_orphaned();
            cTChoose = (CTChoose) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTChoose;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTConstraints addNewConstrLst() {
        CTConstraints cTConstraints;
        synchronized (monitor()) {
            check_orphaned();
            cTConstraints = (CTConstraints) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTConstraints;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[9]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTForEach addNewForEach() {
        CTForEach cTForEach;
        synchronized (monitor()) {
            check_orphaned();
            cTForEach = (CTForEach) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTForEach;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTLayoutNode addNewLayoutNode() {
        CTLayoutNode cTLayoutNode;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutNode = (CTLayoutNode) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTLayoutNode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTPresentationOf addNewPresOf() {
        CTPresentationOf cTPresentationOf;
        synchronized (monitor()) {
            check_orphaned();
            cTPresentationOf = (CTPresentationOf) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTPresentationOf;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTRules addNewRuleLst() {
        CTRules cTRules;
        synchronized (monitor()) {
            check_orphaned();
            cTRules = (CTRules) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTRules;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTShape addNewShape() {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTLayoutVariablePropertySet addNewVarLst() {
        CTLayoutVariablePropertySet cTLayoutVariablePropertySet;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutVariablePropertySet = (CTLayoutVariablePropertySet) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTLayoutVariablePropertySet;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTAlgorithm[] getAlgArray() {
        return (CTAlgorithm[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTAlgorithm[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public List<CTAlgorithm> getAlgList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hc5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.getAlgArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.ic5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLayoutNodeImpl.this.setAlgArray(((Integer) obj).intValue(), (CTAlgorithm) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jc5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.insertNewAlg(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.kc5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLayoutNodeImpl.this.removeAlg(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.lc5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLayoutNodeImpl.this.sizeOfAlgArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public STChildOrderType.Enum getChOrder() {
        STChildOrderType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[12]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[12]);
            }
            r5 = simpleValue == null ? null : (STChildOrderType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTChoose[] getChooseArray() {
        return (CTChoose[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTChoose[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public List<CTChoose> getChooseList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.lb5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.getChooseArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.mb5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLayoutNodeImpl.this.setChooseArray(((Integer) obj).intValue(), (CTChoose) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.nb5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.insertNewChoose(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ob5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLayoutNodeImpl.this.removeChoose(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.pb5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLayoutNodeImpl.this.sizeOfChooseArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTConstraints[] getConstrLstArray() {
        return (CTConstraints[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTConstraints[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public List<CTConstraints> getConstrLstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cc5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.getConstrLstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dc5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLayoutNodeImpl.this.setConstrLstArray(((Integer) obj).intValue(), (CTConstraints) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ec5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.insertNewConstrLst(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fc5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLayoutNodeImpl.this.removeConstrLst(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gc5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLayoutNodeImpl.this.sizeOfConstrLstArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTOfficeArtExtensionList[] getExtLstArray() {
        return (CTOfficeArtExtensionList[]) getXmlObjectArray(PROPERTY_QNAME[9], new CTOfficeArtExtensionList[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public List<CTOfficeArtExtensionList> getExtLstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.sc5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.getExtLstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.tc5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLayoutNodeImpl.this.setExtLstArray(((Integer) obj).intValue(), (CTOfficeArtExtensionList) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.uc5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.insertNewExtLst(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.vc5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLayoutNodeImpl.this.removeExtLst(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.wc5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLayoutNodeImpl.this.sizeOfExtLstArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTForEach[] getForEachArray() {
        return (CTForEach[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTForEach[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public List<CTForEach> getForEachList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rb5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.getForEachArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sb5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLayoutNodeImpl.this.setForEachArray(((Integer) obj).intValue(), (CTForEach) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tb5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.insertNewForEach(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ub5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLayoutNodeImpl.this.removeForEach(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vb5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLayoutNodeImpl.this.sizeOfForEachArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTLayoutNode[] getLayoutNodeArray() {
        return (CTLayoutNode[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTLayoutNode[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public List<CTLayoutNode> getLayoutNodeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.yc5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.getLayoutNodeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.zc5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLayoutNodeImpl.this.setLayoutNodeArray(((Integer) obj).intValue(), (CTLayoutNode) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ad5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.insertNewLayoutNode(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.bd5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLayoutNodeImpl.this.removeLayoutNode(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.cd5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLayoutNodeImpl.this.sizeOfLayoutNodeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public String getMoveWith() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[13]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public String getName() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTPresentationOf[] getPresOfArray() {
        return (CTPresentationOf[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTPresentationOf[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public List<CTPresentationOf> getPresOfList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gb5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.getPresOfArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hb5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLayoutNodeImpl.this.setPresOfArray(((Integer) obj).intValue(), (CTPresentationOf) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ib5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.insertNewPresOf(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jb5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLayoutNodeImpl.this.removePresOf(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kb5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLayoutNodeImpl.this.sizeOfPresOfArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTRules[] getRuleLstArray() {
        return (CTRules[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTRules[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public List<CTRules> getRuleLstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.wb5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.getRuleLstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.xb5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLayoutNodeImpl.this.setRuleLstArray(((Integer) obj).intValue(), (CTRules) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.yb5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.insertNewRuleLst(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.zb5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLayoutNodeImpl.this.removeRuleLst(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.ac5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLayoutNodeImpl.this.sizeOfRuleLstArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTShape[] getShapeArray() {
        return (CTShape[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTShape[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public List<CTShape> getShapeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.nc5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.getShapeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.oc5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLayoutNodeImpl.this.setShapeArray(((Integer) obj).intValue(), (CTShape) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.pc5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.insertNewShape(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.qc5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLayoutNodeImpl.this.removeShape(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.rc5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLayoutNodeImpl.this.sizeOfShapeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public String getStyleLbl() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[11]);
            }
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTLayoutVariablePropertySet[] getVarLstArray() {
        return (CTLayoutVariablePropertySet[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTLayoutVariablePropertySet[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public List<CTLayoutVariablePropertySet> getVarLstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.fb5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.getVarLstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qb5
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTLayoutNodeImpl.this.setVarLstArray(((Integer) obj).intValue(), (CTLayoutVariablePropertySet) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.bc5
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTLayoutNodeImpl.this.insertNewVarLst(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.mc5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTLayoutNodeImpl.this.removeVarLst(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.xc5
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTLayoutNodeImpl.this.sizeOfVarLstArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTAlgorithm insertNewAlg(int i) {
        CTAlgorithm cTAlgorithm;
        synchronized (monitor()) {
            check_orphaned();
            cTAlgorithm = (CTAlgorithm) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTAlgorithm;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTChoose insertNewChoose(int i) {
        CTChoose cTChoose;
        synchronized (monitor()) {
            check_orphaned();
            cTChoose = (CTChoose) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTChoose;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTConstraints insertNewConstrLst(int i) {
        CTConstraints cTConstraints;
        synchronized (monitor()) {
            check_orphaned();
            cTConstraints = (CTConstraints) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTConstraints;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTOfficeArtExtensionList insertNewExtLst(int i) {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().insert_element_user(PROPERTY_QNAME[9], i);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTForEach insertNewForEach(int i) {
        CTForEach cTForEach;
        synchronized (monitor()) {
            check_orphaned();
            cTForEach = (CTForEach) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTForEach;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTLayoutNode insertNewLayoutNode(int i) {
        CTLayoutNode cTLayoutNode;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutNode = (CTLayoutNode) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTLayoutNode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTPresentationOf insertNewPresOf(int i) {
        CTPresentationOf cTPresentationOf;
        synchronized (monitor()) {
            check_orphaned();
            cTPresentationOf = (CTPresentationOf) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTPresentationOf;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTRules insertNewRuleLst(int i) {
        CTRules cTRules;
        synchronized (monitor()) {
            check_orphaned();
            cTRules = (CTRules) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTRules;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTShape insertNewShape(int i) {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTLayoutVariablePropertySet insertNewVarLst(int i) {
        CTLayoutVariablePropertySet cTLayoutVariablePropertySet;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutVariablePropertySet = (CTLayoutVariablePropertySet) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTLayoutVariablePropertySet;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public boolean isSetChOrder() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[12]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public boolean isSetMoveWith() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[13]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public boolean isSetName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public boolean isSetStyleLbl() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[11]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void removeAlg(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void removeChoose(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void removeConstrLst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void removeExtLst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void removeForEach(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void removeLayoutNode(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void removePresOf(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void removeRuleLst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void removeShape(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void removeVarLst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setAlgArray(CTAlgorithm[] cTAlgorithmArr) {
        check_orphaned();
        arraySetterHelper(cTAlgorithmArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setChOrder(STChildOrderType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[12]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[12]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setChooseArray(CTChoose[] cTChooseArr) {
        check_orphaned();
        arraySetterHelper(cTChooseArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setConstrLstArray(CTConstraints[] cTConstraintsArr) {
        check_orphaned();
        arraySetterHelper(cTConstraintsArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setExtLstArray(CTOfficeArtExtensionList[] cTOfficeArtExtensionListArr) {
        check_orphaned();
        arraySetterHelper(cTOfficeArtExtensionListArr, PROPERTY_QNAME[9]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setForEachArray(CTForEach[] cTForEachArr) {
        check_orphaned();
        arraySetterHelper(cTForEachArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setLayoutNodeArray(CTLayoutNode[] cTLayoutNodeArr) {
        check_orphaned();
        arraySetterHelper(cTLayoutNodeArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setMoveWith(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[13]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setName(String str) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setPresOfArray(CTPresentationOf[] cTPresentationOfArr) {
        check_orphaned();
        arraySetterHelper(cTPresentationOfArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setRuleLstArray(CTRules[] cTRulesArr) {
        check_orphaned();
        arraySetterHelper(cTRulesArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setShapeArray(CTShape[] cTShapeArr) {
        check_orphaned();
        arraySetterHelper(cTShapeArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setStyleLbl(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[11]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setVarLstArray(CTLayoutVariablePropertySet[] cTLayoutVariablePropertySetArr) {
        check_orphaned();
        arraySetterHelper(cTLayoutVariablePropertySetArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public int sizeOfAlgArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public int sizeOfChooseArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public int sizeOfConstrLstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public int sizeOfExtLstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[9]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public int sizeOfForEachArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public int sizeOfLayoutNodeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public int sizeOfPresOfArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public int sizeOfRuleLstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public int sizeOfShapeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public int sizeOfVarLstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void unsetChOrder() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[12]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void unsetMoveWith() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[13]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void unsetStyleLbl() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[11]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public STChildOrderType xgetChOrder() {
        STChildOrderType sTChildOrderType;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTChildOrderType = (STChildOrderType) typeStore.find_attribute_user(qNameArr[12]);
            if (sTChildOrderType == null) {
                sTChildOrderType = (STChildOrderType) get_default_attribute_value(qNameArr[12]);
            }
        }
        return sTChildOrderType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public XmlString xgetMoveWith() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlString = (XmlString) typeStore.find_attribute_user(qNameArr[13]);
            if (xmlString == null) {
                xmlString = (XmlString) get_default_attribute_value(qNameArr[13]);
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public XmlString xgetName() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public XmlString xgetStyleLbl() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            xmlString = (XmlString) typeStore.find_attribute_user(qNameArr[11]);
            if (xmlString == null) {
                xmlString = (XmlString) get_default_attribute_value(qNameArr[11]);
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void xsetChOrder(STChildOrderType sTChildOrderType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STChildOrderType sTChildOrderType2 = (STChildOrderType) typeStore.find_attribute_user(qNameArr[12]);
            if (sTChildOrderType2 == null) {
                sTChildOrderType2 = (STChildOrderType) get_store().add_attribute_user(qNameArr[12]);
            }
            sTChildOrderType2.set(sTChildOrderType);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void xsetMoveWith(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[13]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[13]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void xsetName(XmlString xmlString) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void xsetStyleLbl(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[11]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[11]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTChoose getChooseArray(int i) {
        CTChoose cTChoose;
        synchronized (monitor()) {
            check_orphaned();
            cTChoose = (CTChoose) get_store().find_element_user(PROPERTY_QNAME[8], i);
            if (cTChoose == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTChoose;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTOfficeArtExtensionList getExtLstArray(int i) {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().find_element_user(PROPERTY_QNAME[9], i);
            if (cTOfficeArtExtensionList == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTForEach getForEachArray(int i) {
        CTForEach cTForEach;
        synchronized (monitor()) {
            check_orphaned();
            cTForEach = (CTForEach) get_store().find_element_user(PROPERTY_QNAME[6], i);
            if (cTForEach == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTForEach;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTLayoutNode getLayoutNodeArray(int i) {
        CTLayoutNode cTLayoutNode;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutNode = (CTLayoutNode) get_store().find_element_user(PROPERTY_QNAME[7], i);
            if (cTLayoutNode == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLayoutNode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public CTLayoutVariablePropertySet getVarLstArray(int i) {
        CTLayoutVariablePropertySet cTLayoutVariablePropertySet;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutVariablePropertySet = (CTLayoutVariablePropertySet) get_store().find_element_user(PROPERTY_QNAME[5], i);
            if (cTLayoutVariablePropertySet == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTLayoutVariablePropertySet;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setAlgArray(int i, CTAlgorithm cTAlgorithm) {
        generatedSetterHelperImpl(cTAlgorithm, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setChooseArray(int i, CTChoose cTChoose) {
        generatedSetterHelperImpl(cTChoose, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setConstrLstArray(int i, CTConstraints cTConstraints) {
        generatedSetterHelperImpl(cTConstraints, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setExtLstArray(int i, CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[9], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setForEachArray(int i, CTForEach cTForEach) {
        generatedSetterHelperImpl(cTForEach, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setLayoutNodeArray(int i, CTLayoutNode cTLayoutNode) {
        generatedSetterHelperImpl(cTLayoutNode, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setPresOfArray(int i, CTPresentationOf cTPresentationOf) {
        generatedSetterHelperImpl(cTPresentationOf, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setRuleLstArray(int i, CTRules cTRules) {
        generatedSetterHelperImpl(cTRules, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setShapeArray(int i, CTShape cTShape) {
        generatedSetterHelperImpl(cTShape, PROPERTY_QNAME[1], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTLayoutNode
    public void setVarLstArray(int i, CTLayoutVariablePropertySet cTLayoutVariablePropertySet) {
        generatedSetterHelperImpl(cTLayoutVariablePropertySet, PROPERTY_QNAME[5], i, (short) 2);
    }
}
