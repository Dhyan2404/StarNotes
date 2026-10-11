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
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STAxisTypes;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STBooleans;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STElementTypes;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STFunctionArgument;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STFunctionOperator;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STFunctionType;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STFunctionValue;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STInts;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STUnsignedInts;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STVariableType;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTWhenImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public class CTWhenImpl extends XmlComplexContentImpl implements CTWhen {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "alg"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "shape"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "presOf"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "constrLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "ruleLst"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "forEach"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "layoutNode"), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, Constants.ELEMNAME_CHOOSE_STRING), new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "extLst"), new QName("", "name"), new QName("", "axis"), new QName("", "ptType"), new QName("", "hideLastTrans"), new QName("", "st"), new QName("", "cnt"), new QName("", "step"), new QName("", "func"), new QName("", Constants.ELEMNAME_ARG_STRING), new QName("", "op"), new QName("", "val")};
    private static final long serialVersionUID = 1;

    public CTWhenImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTAlgorithm addNewAlg() {
        CTAlgorithm cTAlgorithm;
        synchronized (monitor()) {
            check_orphaned();
            cTAlgorithm = (CTAlgorithm) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAlgorithm;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTChoose addNewChoose() {
        CTChoose cTChoose;
        synchronized (monitor()) {
            check_orphaned();
            cTChoose = (CTChoose) get_store().add_element_user(PROPERTY_QNAME[7]);
        }
        return cTChoose;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTConstraints addNewConstrLst() {
        CTConstraints cTConstraints;
        synchronized (monitor()) {
            check_orphaned();
            cTConstraints = (CTConstraints) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTConstraints;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTOfficeArtExtensionList addNewExtLst() {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().add_element_user(PROPERTY_QNAME[8]);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTForEach addNewForEach() {
        CTForEach cTForEach;
        synchronized (monitor()) {
            check_orphaned();
            cTForEach = (CTForEach) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTForEach;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTLayoutNode addNewLayoutNode() {
        CTLayoutNode cTLayoutNode;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutNode = (CTLayoutNode) get_store().add_element_user(PROPERTY_QNAME[6]);
        }
        return cTLayoutNode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTPresentationOf addNewPresOf() {
        CTPresentationOf cTPresentationOf;
        synchronized (monitor()) {
            check_orphaned();
            cTPresentationOf = (CTPresentationOf) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTPresentationOf;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTRules addNewRuleLst() {
        CTRules cTRules;
        synchronized (monitor()) {
            check_orphaned();
            cTRules = (CTRules) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTRules;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTShape addNewShape() {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTAlgorithm[] getAlgArray() {
        return (CTAlgorithm[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTAlgorithm[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List<CTAlgorithm> getAlgList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.mid
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.getAlgArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.nid
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWhenImpl.this.setAlgArray(((Integer) obj).intValue(), (CTAlgorithm) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.oid
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.insertNewAlg(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.pid
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWhenImpl.this.removeAlg(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.qid
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWhenImpl.this.sizeOfAlgArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public STVariableType.Enum getArg() {
        STVariableType.Enum r5;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[17]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[17]);
            }
            r5 = simpleValue == null ? null : (STVariableType.Enum) simpleValue.getEnumValue();
        }
        return r5;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List getAxis() {
        List<?> listValue;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_default_attribute_value(qNameArr[10]);
            }
            listValue = simpleValue == null ? null : simpleValue.getListValue();
        }
        return listValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTChoose[] getChooseArray() {
        return (CTChoose[]) getXmlObjectArray(PROPERTY_QNAME[7], new CTChoose[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List<CTChoose> getChooseList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.cjd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.getChooseArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.djd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWhenImpl.this.setChooseArray(((Integer) obj).intValue(), (CTChoose) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ejd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.insertNewChoose(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.fjd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWhenImpl.this.removeChoose(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.gjd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWhenImpl.this.sizeOfChooseArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List getCnt() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTConstraints[] getConstrLstArray() {
        return (CTConstraints[]) getXmlObjectArray(PROPERTY_QNAME[3], new CTConstraints[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List<CTConstraints> getConstrLstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.xid
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.getConstrLstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.yid
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWhenImpl.this.setConstrLstArray(((Integer) obj).intValue(), (CTConstraints) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.zid
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.insertNewConstrLst(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ajd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWhenImpl.this.removeConstrLst(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.bjd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWhenImpl.this.sizeOfConstrLstArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTOfficeArtExtensionList[] getExtLstArray() {
        return (CTOfficeArtExtensionList[]) getXmlObjectArray(PROPERTY_QNAME[8], new CTOfficeArtExtensionList[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List<CTOfficeArtExtensionList> getExtLstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ojd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.getExtLstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.pjd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWhenImpl.this.setExtLstArray(((Integer) obj).intValue(), (CTOfficeArtExtensionList) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.qjd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.insertNewExtLst(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.rjd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWhenImpl.this.removeExtLst(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.sjd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWhenImpl.this.sizeOfExtLstArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTForEach[] getForEachArray() {
        return (CTForEach[]) getXmlObjectArray(PROPERTY_QNAME[5], new CTForEach[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List<CTForEach> getForEachList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ijd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.getForEachArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jjd
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWhenImpl.this.setForEachArray(((Integer) obj).intValue(), (CTForEach) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.kjd
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.insertNewForEach(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.ljd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWhenImpl.this.removeForEach(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.mjd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWhenImpl.this.sizeOfForEachArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public STFunctionType.Enum getFunc() {
        STFunctionType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[16]);
            r3 = simpleValue == null ? null : (STFunctionType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List getHideLastTrans() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTLayoutNode[] getLayoutNodeArray() {
        return (CTLayoutNode[]) getXmlObjectArray(PROPERTY_QNAME[6], new CTLayoutNode[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List<CTLayoutNode> getLayoutNodeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.aid
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.getLayoutNodeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.lid
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWhenImpl.this.setLayoutNodeArray(((Integer) obj).intValue(), (CTLayoutNode) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.wid
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.insertNewLayoutNode(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.hjd
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWhenImpl.this.removeLayoutNode(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.njd
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWhenImpl.this.sizeOfLayoutNodeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public STFunctionOperator.Enum getOp() {
        STFunctionOperator.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[18]);
            r3 = simpleValue == null ? null : (STFunctionOperator.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTPresentationOf[] getPresOfArray() {
        return (CTPresentationOf[]) getXmlObjectArray(PROPERTY_QNAME[2], new CTPresentationOf[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List<CTPresentationOf> getPresOfList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.bid
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.getPresOfArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cid
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWhenImpl.this.setPresOfArray(((Integer) obj).intValue(), (CTPresentationOf) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.did
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.insertNewPresOf(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.eid
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWhenImpl.this.removePresOf(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.fid
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWhenImpl.this.sizeOfPresOfArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List getPtType() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTRules[] getRuleLstArray() {
        return (CTRules[]) getXmlObjectArray(PROPERTY_QNAME[4], new CTRules[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List<CTRules> getRuleLstList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gid
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.getRuleLstArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hid
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWhenImpl.this.setRuleLstArray(((Integer) obj).intValue(), (CTRules) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.iid
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.insertNewRuleLst(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.jid
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWhenImpl.this.removeRuleLst(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.kid
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWhenImpl.this.sizeOfRuleLstArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTShape[] getShapeArray() {
        return (CTShape[]) getXmlObjectArray(PROPERTY_QNAME[1], new CTShape[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List<CTShape> getShapeList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.rid
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.getShapeArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sid
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTWhenImpl.this.setShapeArray(((Integer) obj).intValue(), (CTShape) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.tid
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTWhenImpl.this.insertNewShape(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.uid
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTWhenImpl.this.removeShape(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.vid
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTWhenImpl.this.sizeOfShapeArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List getSt() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public List getStep() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public Object getVal() {
        Object objectValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[19]);
            objectValue = simpleValue == null ? null : simpleValue.getObjectValue();
        }
        return objectValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTAlgorithm insertNewAlg(int i) {
        CTAlgorithm cTAlgorithm;
        synchronized (monitor()) {
            check_orphaned();
            cTAlgorithm = (CTAlgorithm) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTAlgorithm;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTChoose insertNewChoose(int i) {
        CTChoose cTChoose;
        synchronized (monitor()) {
            check_orphaned();
            cTChoose = (CTChoose) get_store().insert_element_user(PROPERTY_QNAME[7], i);
        }
        return cTChoose;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTConstraints insertNewConstrLst(int i) {
        CTConstraints cTConstraints;
        synchronized (monitor()) {
            check_orphaned();
            cTConstraints = (CTConstraints) get_store().insert_element_user(PROPERTY_QNAME[3], i);
        }
        return cTConstraints;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTOfficeArtExtensionList insertNewExtLst(int i) {
        CTOfficeArtExtensionList cTOfficeArtExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTOfficeArtExtensionList = (CTOfficeArtExtensionList) get_store().insert_element_user(PROPERTY_QNAME[8], i);
        }
        return cTOfficeArtExtensionList;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTForEach insertNewForEach(int i) {
        CTForEach cTForEach;
        synchronized (monitor()) {
            check_orphaned();
            cTForEach = (CTForEach) get_store().insert_element_user(PROPERTY_QNAME[5], i);
        }
        return cTForEach;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTLayoutNode insertNewLayoutNode(int i) {
        CTLayoutNode cTLayoutNode;
        synchronized (monitor()) {
            check_orphaned();
            cTLayoutNode = (CTLayoutNode) get_store().insert_element_user(PROPERTY_QNAME[6], i);
        }
        return cTLayoutNode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTPresentationOf insertNewPresOf(int i) {
        CTPresentationOf cTPresentationOf;
        synchronized (monitor()) {
            check_orphaned();
            cTPresentationOf = (CTPresentationOf) get_store().insert_element_user(PROPERTY_QNAME[2], i);
        }
        return cTPresentationOf;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTRules insertNewRuleLst(int i) {
        CTRules cTRules;
        synchronized (monitor()) {
            check_orphaned();
            cTRules = (CTRules) get_store().insert_element_user(PROPERTY_QNAME[4], i);
        }
        return cTRules;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public CTShape insertNewShape(int i) {
        CTShape cTShape;
        synchronized (monitor()) {
            check_orphaned();
            cTShape = (CTShape) get_store().insert_element_user(PROPERTY_QNAME[1], i);
        }
        return cTShape;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public boolean isSetArg() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[17]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public boolean isSetAxis() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public boolean isSetCnt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[14]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public boolean isSetHideLastTrans() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[12]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public boolean isSetName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public boolean isSetPtType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[11]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public boolean isSetSt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[13]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public boolean isSetStep() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[15]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void removeAlg(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void removeChoose(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void removeConstrLst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void removeExtLst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void removeForEach(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void removeLayoutNode(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void removePresOf(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void removeRuleLst(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void removeShape(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setAlgArray(CTAlgorithm[] cTAlgorithmArr) {
        check_orphaned();
        arraySetterHelper(cTAlgorithmArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setArg(STVariableType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[17]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[17]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setAxis(List list) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setListValue(list);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setChooseArray(CTChoose[] cTChooseArr) {
        check_orphaned();
        arraySetterHelper(cTChooseArr, PROPERTY_QNAME[7]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setCnt(List list) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setConstrLstArray(CTConstraints[] cTConstraintsArr) {
        check_orphaned();
        arraySetterHelper(cTConstraintsArr, PROPERTY_QNAME[3]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setExtLstArray(CTOfficeArtExtensionList[] cTOfficeArtExtensionListArr) {
        check_orphaned();
        arraySetterHelper(cTOfficeArtExtensionListArr, PROPERTY_QNAME[8]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setForEachArray(CTForEach[] cTForEachArr) {
        check_orphaned();
        arraySetterHelper(cTForEachArr, PROPERTY_QNAME[5]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setFunc(STFunctionType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[16]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[16]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setHideLastTrans(List list) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setLayoutNodeArray(CTLayoutNode[] cTLayoutNodeArr) {
        check_orphaned();
        arraySetterHelper(cTLayoutNodeArr, PROPERTY_QNAME[6]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setOp(STFunctionOperator.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[18]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[18]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setPresOfArray(CTPresentationOf[] cTPresentationOfArr) {
        check_orphaned();
        arraySetterHelper(cTPresentationOfArr, PROPERTY_QNAME[2]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setPtType(List list) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setRuleLstArray(CTRules[] cTRulesArr) {
        check_orphaned();
        arraySetterHelper(cTRulesArr, PROPERTY_QNAME[4]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setShapeArray(CTShape[] cTShapeArr) {
        check_orphaned();
        arraySetterHelper(cTShapeArr, PROPERTY_QNAME[1]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setSt(List list) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setStep(List list) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setVal(Object obj) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[19]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[19]);
            }
            simpleValue.setObjectValue(obj);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public int sizeOfAlgArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public int sizeOfChooseArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[7]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public int sizeOfConstrLstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[3]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public int sizeOfExtLstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[8]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public int sizeOfForEachArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[5]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public int sizeOfLayoutNodeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[6]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public int sizeOfPresOfArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[2]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public int sizeOfRuleLstArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[4]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public int sizeOfShapeArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[1]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void unsetArg() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[17]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void unsetAxis() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void unsetCnt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[14]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void unsetHideLastTrans() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[12]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void unsetPtType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[11]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void unsetSt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[13]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void unsetStep() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[15]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public STFunctionArgument xgetArg() {
        STFunctionArgument sTFunctionArgument;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTFunctionArgument = (STFunctionArgument) typeStore.find_attribute_user(qNameArr[17]);
            if (sTFunctionArgument == null) {
                sTFunctionArgument = (STFunctionArgument) get_default_attribute_value(qNameArr[17]);
            }
        }
        return sTFunctionArgument;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public STAxisTypes xgetAxis() {
        STAxisTypes sTAxisTypes;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTAxisTypes = (STAxisTypes) typeStore.find_attribute_user(qNameArr[10]);
            if (sTAxisTypes == null) {
                sTAxisTypes = (STAxisTypes) get_default_attribute_value(qNameArr[10]);
            }
        }
        return sTAxisTypes;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public STUnsignedInts xgetCnt() {
        STUnsignedInts sTUnsignedInts;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTUnsignedInts = (STUnsignedInts) typeStore.find_attribute_user(qNameArr[14]);
            if (sTUnsignedInts == null) {
                sTUnsignedInts = (STUnsignedInts) get_default_attribute_value(qNameArr[14]);
            }
        }
        return sTUnsignedInts;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public STFunctionType xgetFunc() {
        STFunctionType sTFunctionType;
        synchronized (monitor()) {
            check_orphaned();
            sTFunctionType = (STFunctionType) get_store().find_attribute_user(PROPERTY_QNAME[16]);
        }
        return sTFunctionType;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public STBooleans xgetHideLastTrans() {
        STBooleans sTBooleans;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTBooleans = (STBooleans) typeStore.find_attribute_user(qNameArr[12]);
            if (sTBooleans == null) {
                sTBooleans = (STBooleans) get_default_attribute_value(qNameArr[12]);
            }
        }
        return sTBooleans;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public STFunctionOperator xgetOp() {
        STFunctionOperator sTFunctionOperator;
        synchronized (monitor()) {
            check_orphaned();
            sTFunctionOperator = (STFunctionOperator) get_store().find_attribute_user(PROPERTY_QNAME[18]);
        }
        return sTFunctionOperator;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public STElementTypes xgetPtType() {
        STElementTypes sTElementTypes;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTElementTypes = (STElementTypes) typeStore.find_attribute_user(qNameArr[11]);
            if (sTElementTypes == null) {
                sTElementTypes = (STElementTypes) get_default_attribute_value(qNameArr[11]);
            }
        }
        return sTElementTypes;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public STInts xgetSt() {
        STInts sTInts;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTInts = (STInts) typeStore.find_attribute_user(qNameArr[13]);
            if (sTInts == null) {
                sTInts = (STInts) get_default_attribute_value(qNameArr[13]);
            }
        }
        return sTInts;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public STInts xgetStep() {
        STInts sTInts;
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            sTInts = (STInts) typeStore.find_attribute_user(qNameArr[15]);
            if (sTInts == null) {
                sTInts = (STInts) get_default_attribute_value(qNameArr[15]);
            }
        }
        return sTInts;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public STFunctionValue xgetVal() {
        STFunctionValue sTFunctionValue;
        synchronized (monitor()) {
            check_orphaned();
            sTFunctionValue = (STFunctionValue) get_store().find_attribute_user(PROPERTY_QNAME[19]);
        }
        return sTFunctionValue;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void xsetArg(STFunctionArgument sTFunctionArgument) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFunctionArgument sTFunctionArgument2 = (STFunctionArgument) typeStore.find_attribute_user(qNameArr[17]);
            if (sTFunctionArgument2 == null) {
                sTFunctionArgument2 = (STFunctionArgument) get_store().add_attribute_user(qNameArr[17]);
            }
            sTFunctionArgument2.set(sTFunctionArgument);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void xsetAxis(STAxisTypes sTAxisTypes) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STAxisTypes sTAxisTypes2 = (STAxisTypes) typeStore.find_attribute_user(qNameArr[10]);
            if (sTAxisTypes2 == null) {
                sTAxisTypes2 = (STAxisTypes) get_store().add_attribute_user(qNameArr[10]);
            }
            sTAxisTypes2.set(sTAxisTypes);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void xsetCnt(STUnsignedInts sTUnsignedInts) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STUnsignedInts sTUnsignedInts2 = (STUnsignedInts) typeStore.find_attribute_user(qNameArr[14]);
            if (sTUnsignedInts2 == null) {
                sTUnsignedInts2 = (STUnsignedInts) get_store().add_attribute_user(qNameArr[14]);
            }
            sTUnsignedInts2.set(sTUnsignedInts);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void xsetFunc(STFunctionType sTFunctionType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFunctionType sTFunctionType2 = (STFunctionType) typeStore.find_attribute_user(qNameArr[16]);
            if (sTFunctionType2 == null) {
                sTFunctionType2 = (STFunctionType) get_store().add_attribute_user(qNameArr[16]);
            }
            sTFunctionType2.set(sTFunctionType);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void xsetHideLastTrans(STBooleans sTBooleans) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBooleans sTBooleans2 = (STBooleans) typeStore.find_attribute_user(qNameArr[12]);
            if (sTBooleans2 == null) {
                sTBooleans2 = (STBooleans) get_store().add_attribute_user(qNameArr[12]);
            }
            sTBooleans2.set(sTBooleans);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void xsetOp(STFunctionOperator sTFunctionOperator) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFunctionOperator sTFunctionOperator2 = (STFunctionOperator) typeStore.find_attribute_user(qNameArr[18]);
            if (sTFunctionOperator2 == null) {
                sTFunctionOperator2 = (STFunctionOperator) get_store().add_attribute_user(qNameArr[18]);
            }
            sTFunctionOperator2.set(sTFunctionOperator);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void xsetPtType(STElementTypes sTElementTypes) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STElementTypes sTElementTypes2 = (STElementTypes) typeStore.find_attribute_user(qNameArr[11]);
            if (sTElementTypes2 == null) {
                sTElementTypes2 = (STElementTypes) get_store().add_attribute_user(qNameArr[11]);
            }
            sTElementTypes2.set(sTElementTypes);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void xsetSt(STInts sTInts) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STInts sTInts2 = (STInts) typeStore.find_attribute_user(qNameArr[13]);
            if (sTInts2 == null) {
                sTInts2 = (STInts) get_store().add_attribute_user(qNameArr[13]);
            }
            sTInts2.set(sTInts);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void xsetStep(STInts sTInts) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STInts sTInts2 = (STInts) typeStore.find_attribute_user(qNameArr[15]);
            if (sTInts2 == null) {
                sTInts2 = (STInts) get_store().add_attribute_user(qNameArr[15]);
            }
            sTInts2.set(sTInts);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void xsetVal(STFunctionValue sTFunctionValue) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFunctionValue sTFunctionValue2 = (STFunctionValue) typeStore.find_attribute_user(qNameArr[19]);
            if (sTFunctionValue2 == null) {
                sTFunctionValue2 = (STFunctionValue) get_store().add_attribute_user(qNameArr[19]);
            }
            sTFunctionValue2.set(sTFunctionValue);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setAlgArray(int i, CTAlgorithm cTAlgorithm) {
        generatedSetterHelperImpl(cTAlgorithm, PROPERTY_QNAME[0], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setChooseArray(int i, CTChoose cTChoose) {
        generatedSetterHelperImpl(cTChoose, PROPERTY_QNAME[7], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setConstrLstArray(int i, CTConstraints cTConstraints) {
        generatedSetterHelperImpl(cTConstraints, PROPERTY_QNAME[3], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setExtLstArray(int i, CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        generatedSetterHelperImpl(cTOfficeArtExtensionList, PROPERTY_QNAME[8], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setForEachArray(int i, CTForEach cTForEach) {
        generatedSetterHelperImpl(cTForEach, PROPERTY_QNAME[5], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setLayoutNodeArray(int i, CTLayoutNode cTLayoutNode) {
        generatedSetterHelperImpl(cTLayoutNode, PROPERTY_QNAME[6], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setPresOfArray(int i, CTPresentationOf cTPresentationOf) {
        generatedSetterHelperImpl(cTPresentationOf, PROPERTY_QNAME[2], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setRuleLstArray(int i, CTRules cTRules) {
        generatedSetterHelperImpl(cTRules, PROPERTY_QNAME[4], i, (short) 2);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTWhen
    public void setShapeArray(int i, CTShape cTShape) {
        generatedSetterHelperImpl(cTShape, PROPERTY_QNAME[1], i, (short) 2);
    }
}
