package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import com.sunia.HTREnginev2.fcc;
import com.sunia.HTREnginev2.gcc;
import com.sunia.HTREnginev2.ld1;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList;
import org.openxmlformats.schemas.presentationml.x2006.main.impl.CTTLBehaviorAttributeNameListImpl;

/* loaded from: classes14.dex */
public class CTTLBehaviorAttributeNameListImpl extends XmlComplexContentImpl implements CTTLBehaviorAttributeNameList {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "attrName")};
    private static final long serialVersionUID = 1;

    public CTTLBehaviorAttributeNameListImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getAttrNameArray$0(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlString[] lambda$xgetAttrNameArray$1(int i) {
        return new XmlString[i];
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public void addAttrName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[0])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public XmlString addNewAttrName() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public String[] getAttrNameArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[0], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.hcc
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getAttrNameArray$0;
                lambda$getAttrNameArray$0 = CTTLBehaviorAttributeNameListImpl.lambda$getAttrNameArray$0(i);
                return lambda$getAttrNameArray$0;
            }
        });
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public List<String> getAttrNameList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.icc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTLBehaviorAttributeNameListImpl.this.getAttrNameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.jcc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTLBehaviorAttributeNameListImpl.this.setAttrNameArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kcc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTLBehaviorAttributeNameListImpl.this.insertAttrName(((Integer) obj).intValue(), (String) obj2);
                }
            }, new fcc(this), new gcc(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public void insertAttrName(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[0], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public XmlString insertNewAttrName(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public void removeAttrName(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public void setAttrNameArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public int sizeOfAttrNameArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public XmlString[] xgetAttrNameArray() {
        return (XmlString[]) xgetArray(PROPERTY_QNAME[0], new IntFunction() { // from class: com.sunia.HTREnginev2.lcc
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlString[] lambda$xgetAttrNameArray$1;
                lambda$xgetAttrNameArray$1 = CTTLBehaviorAttributeNameListImpl.lambda$xgetAttrNameArray$1(i);
                return lambda$xgetAttrNameArray$1;
            }
        });
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public List<XmlString> xgetAttrNameList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ccc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTLBehaviorAttributeNameListImpl.this.xgetAttrNameArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dcc
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTTLBehaviorAttributeNameListImpl.this.xsetAttrNameArray(((Integer) obj).intValue(), (XmlString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ecc
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTTLBehaviorAttributeNameListImpl.this.insertNewAttrName(((Integer) obj).intValue());
                }
            }, new fcc(this), new gcc(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public void xsetAttrNameArray(XmlString[] xmlStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlStringArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public String getAttrNameArray(int i) {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (simpleValue != null) {
                stringValue = simpleValue.getStringValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public XmlString xgetAttrNameArray(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (xmlString == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public void setAttrNameArray(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (simpleValue != null) {
                simpleValue.setStringValue(str);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLBehaviorAttributeNameList
    public void xsetAttrNameArray(int i, XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            XmlString xmlString2 = (XmlString) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (xmlString2 != null) {
                xmlString2.set(xmlString);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }
}
