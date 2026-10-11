package org.p120w3.x2000.x09.xmldsig.impl;

import com.sunia.HTREnginev2.fmn;
import com.sunia.HTREnginev2.gmn;
import com.sunia.HTREnginev2.ld1;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.p120w3.x2000.x09.xmldsig.TransformType;
import org.p120w3.x2000.x09.xmldsig.impl.TransformTypeImpl;

/* loaded from: classes16.dex */
public class TransformTypeImpl extends XmlComplexContentImpl implements TransformType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XML_DIGSIG_NS, "XPath"), new QName("", "Algorithm")};
    private static final long serialVersionUID = 1;

    public TransformTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getXPathArray$0(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlString[] lambda$xgetXPathArray$1(int i) {
        return new XmlString[i];
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public XmlString addNewXPath() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return xmlString;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public void addXPath(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[0])).setStringValue(str);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public String getAlgorithm() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public String[] getXPathArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[0], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.kmn
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getXPathArray$0;
                lambda$getXPathArray$0 = TransformTypeImpl.lambda$getXPathArray$0(i);
                return lambda$getXPathArray$0;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public List<String> getXPathList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.cmn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TransformTypeImpl.this.getXPathArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dmn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    TransformTypeImpl.this.setXPathArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.emn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    TransformTypeImpl.this.insertXPath(((Integer) obj).intValue(), (String) obj2);
                }
            }, new fmn(this), new gmn(this));
        }
        return javaListObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public XmlString insertNewXPath(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return xmlString;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public void insertXPath(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[0], i)).setStringValue(str);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public void removeXPath(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public void setAlgorithm(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public void setXPathArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public int sizeOfXPathArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public XmlAnyURI xgetAlgorithm() {
        XmlAnyURI xmlAnyURI;
        synchronized (monitor()) {
            check_orphaned();
            xmlAnyURI = (XmlAnyURI) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlAnyURI;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public XmlString[] xgetXPathArray() {
        return (XmlString[]) xgetArray(PROPERTY_QNAME[0], new IntFunction() { // from class: com.sunia.HTREnginev2.bmn
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlString[] lambda$xgetXPathArray$1;
                lambda$xgetXPathArray$1 = TransformTypeImpl.lambda$xgetXPathArray$1(i);
                return lambda$xgetXPathArray$1;
            }
        });
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public List<XmlString> xgetXPathList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.hmn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TransformTypeImpl.this.xgetXPathArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.imn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    TransformTypeImpl.this.xsetXPathArray(((Integer) obj).intValue(), (XmlString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.jmn
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return TransformTypeImpl.this.insertNewXPath(((Integer) obj).intValue());
                }
            }, new fmn(this), new gmn(this));
        }
        return javaListXmlObject;
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public void xsetAlgorithm(XmlAnyURI xmlAnyURI) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlAnyURI xmlAnyURI2 = (XmlAnyURI) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlAnyURI2 == null) {
                xmlAnyURI2 = (XmlAnyURI) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlAnyURI2.set(xmlAnyURI);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public void xsetXPathArray(XmlString[] xmlStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlStringArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public String getXPathArray(int i) {
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

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public XmlString xgetXPathArray(int i) {
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

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public void setXPathArray(int i, String str) {
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

    @Override // org.p120w3.x2000.x09.xmldsig.TransformType
    public void xsetXPathArray(int i, XmlString xmlString) {
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
