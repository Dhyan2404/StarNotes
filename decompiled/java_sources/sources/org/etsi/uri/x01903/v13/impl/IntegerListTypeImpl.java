package org.etsi.uri.x01903.v13.impl;

import com.sunia.HTREnginev2.dni;
import com.sunia.HTREnginev2.eni;
import com.sunia.HTREnginev2.ol1;
import java.math.BigInteger;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import org.apache.poi.poifs.crypt.dsig.facets.SignatureFacet;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.etsi.uri.x01903.v13.IntegerListType;
import org.etsi.uri.x01903.v13.impl.IntegerListTypeImpl;

/* loaded from: classes13.dex */
public class IntegerListTypeImpl extends XmlComplexContentImpl implements IntegerListType {
    private static final QName[] PROPERTY_QNAME = {new QName(SignatureFacet.XADES_132_NS, "int")};
    private static final long serialVersionUID = 1;

    public IntegerListTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ BigInteger[] lambda$getIntArray$0(int i) {
        return new BigInteger[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlInteger[] lambda$xgetIntArray$1(int i) {
        return new XmlInteger[i];
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public void addInt(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[0])).setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public XmlInteger addNewInt() {
        XmlInteger xmlInteger;
        synchronized (monitor()) {
            check_orphaned();
            xmlInteger = (XmlInteger) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return xmlInteger;
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public BigInteger[] getIntArray() {
        return (BigInteger[]) getObjectArray(PROPERTY_QNAME[0], new ol1(), new IntFunction() { // from class: com.sunia.HTREnginev2.fni
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                BigInteger[] lambda$getIntArray$0;
                lambda$getIntArray$0 = IntegerListTypeImpl.lambda$getIntArray$0(i);
                return lambda$getIntArray$0;
            }
        });
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public List<BigInteger> getIntList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.ani
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return IntegerListTypeImpl.this.getIntArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bni
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    IntegerListTypeImpl.this.setIntArray(((Integer) obj).intValue(), (BigInteger) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.cni
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    IntegerListTypeImpl.this.insertInt(((Integer) obj).intValue(), (BigInteger) obj2);
                }
            }, new dni(this), new eni(this));
        }
        return javaListObject;
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public void insertInt(int i, BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[0], i)).setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public XmlInteger insertNewInt(int i) {
        XmlInteger xmlInteger;
        synchronized (monitor()) {
            check_orphaned();
            xmlInteger = (XmlInteger) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return xmlInteger;
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public void removeInt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public void setIntArray(BigInteger[] bigIntegerArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(bigIntegerArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public int sizeOfIntArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public XmlInteger[] xgetIntArray() {
        return (XmlInteger[]) xgetArray(PROPERTY_QNAME[0], new IntFunction() { // from class: com.sunia.HTREnginev2.jni
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlInteger[] lambda$xgetIntArray$1;
                lambda$xgetIntArray$1 = IntegerListTypeImpl.lambda$xgetIntArray$1(i);
                return lambda$xgetIntArray$1;
            }
        });
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public List<XmlInteger> xgetIntList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.gni
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return IntegerListTypeImpl.this.xgetIntArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.hni
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    IntegerListTypeImpl.this.xsetIntArray(((Integer) obj).intValue(), (XmlInteger) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.ini
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return IntegerListTypeImpl.this.insertNewInt(((Integer) obj).intValue());
                }
            }, new dni(this), new eni(this));
        }
        return javaListXmlObject;
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public void xsetIntArray(XmlInteger[] xmlIntegerArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlIntegerArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public BigInteger getIntArray(int i) {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (simpleValue != null) {
                bigIntegerValue = simpleValue.getBigIntegerValue();
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
        return bigIntegerValue;
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public XmlInteger xgetIntArray(int i) {
        XmlInteger xmlInteger;
        synchronized (monitor()) {
            check_orphaned();
            xmlInteger = (XmlInteger) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (xmlInteger == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return xmlInteger;
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public void setIntArray(int i, BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (simpleValue != null) {
                simpleValue.setBigIntegerValue(bigInteger);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }

    @Override // org.etsi.uri.x01903.v13.IntegerListType
    public void xsetIntArray(int i, XmlInteger xmlInteger) {
        synchronized (monitor()) {
            check_orphaned();
            XmlInteger xmlInteger2 = (XmlInteger) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (xmlInteger2 != null) {
                xmlInteger2.set(xmlInteger);
            } else {
                throw new IndexOutOfBoundsException();
            }
        }
    }
}
