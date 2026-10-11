package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xslf.usermodel.XSLFDiagram;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTNumericRule;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTRules;
import org.openxmlformats.schemas.drawingml.x2006.diagram.impl.CTRulesImpl;

/* loaded from: classes14.dex */
public class CTRulesImpl extends XmlComplexContentImpl implements CTRules {
    private static final QName[] PROPERTY_QNAME = {new QName(XSLFDiagram.DRAWINGML_DIAGRAM_URI, "rule")};
    private static final long serialVersionUID = 1;

    public CTRulesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTRules
    public CTNumericRule addNewRule() {
        CTNumericRule cTNumericRule;
        synchronized (monitor()) {
            check_orphaned();
            cTNumericRule = (CTNumericRule) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTNumericRule;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTRules
    public CTNumericRule[] getRuleArray() {
        return (CTNumericRule[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTNumericRule[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTRules
    public List<CTNumericRule> getRuleList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.qb9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRulesImpl.this.getRuleArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.sb9
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTRulesImpl.this.setRuleArray(((Integer) obj).intValue(), (CTNumericRule) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ub9
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTRulesImpl.this.insertNewRule(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.wb9
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTRulesImpl.this.removeRule(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.yb9
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTRulesImpl.this.sizeOfRuleArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTRules
    public CTNumericRule insertNewRule(int i) {
        CTNumericRule cTNumericRule;
        synchronized (monitor()) {
            check_orphaned();
            cTNumericRule = (CTNumericRule) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTNumericRule;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTRules
    public void removeRule(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTRules
    public void setRuleArray(CTNumericRule[] cTNumericRuleArr) {
        check_orphaned();
        arraySetterHelper(cTNumericRuleArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTRules
    public int sizeOfRuleArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTRules
    public CTNumericRule getRuleArray(int i) {
        CTNumericRule cTNumericRule;
        synchronized (monitor()) {
            check_orphaned();
            cTNumericRule = (CTNumericRule) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTNumericRule == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTNumericRule;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTRules
    public void setRuleArray(int i, CTNumericRule cTNumericRule) {
        generatedSetterHelperImpl(cTNumericRule, PROPERTY_QNAME[0], i, (short) 2);
    }
}
