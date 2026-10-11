package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import com.sunia.HTREnginev2.ft4;
import com.sunia.HTREnginev2.ht4;
import com.sunia.HTREnginev2.ld1;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import javax.xml.namespace.QName;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.JavaListObject;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders;
import org.openxmlformats.schemas.drawingml.x2006.main.impl.CTHeadersImpl;

/* loaded from: classes14.dex */
public class CTHeadersImpl extends XmlComplexContentImpl implements CTHeaders {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, Constants.NAME_HEADER)};
    private static final long serialVersionUID = 1;

    public CTHeadersImpl(SchemaType schemaType) {
        super(schemaType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$getHeaderArray$0(int i) {
        return new String[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XmlString[] lambda$xgetHeaderArray$1(int i) {
        return new XmlString[i];
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public void addHeader(String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().add_element_user(PROPERTY_QNAME[0])).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public XmlString addNewHeader() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public String[] getHeaderArray() {
        return (String[]) getObjectArray(PROPERTY_QNAME[0], new ld1(), new IntFunction() { // from class: com.sunia.HTREnginev2.it4
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$getHeaderArray$0;
                lambda$getHeaderArray$0 = CTHeadersImpl.lambda$getHeaderArray$0(i);
                return lambda$getHeaderArray$0;
            }
        });
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public List<String> getHeaderList() {
        JavaListObject javaListObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListObject = new JavaListObject(new Function() { // from class: com.sunia.HTREnginev2.zs4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTHeadersImpl.this.getHeaderArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.bt4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTHeadersImpl.this.setHeaderArray(((Integer) obj).intValue(), (String) obj2);
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.dt4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTHeadersImpl.this.insertHeader(((Integer) obj).intValue(), (String) obj2);
                }
            }, new ft4(this), new ht4(this));
        }
        return javaListObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public void insertHeader(int i, String str) {
        synchronized (monitor()) {
            check_orphaned();
            ((SimpleValue) get_store().insert_element_user(PROPERTY_QNAME[0], i)).setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public XmlString insertNewHeader(int i) {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public void removeHeader(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public void setHeaderArray(String[] strArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(strArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public int sizeOfHeaderArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public XmlString[] xgetHeaderArray() {
        return (XmlString[]) xgetArray(PROPERTY_QNAME[0], new IntFunction() { // from class: com.sunia.HTREnginev2.mt4
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                XmlString[] lambda$xgetHeaderArray$1;
                lambda$xgetHeaderArray$1 = CTHeadersImpl.lambda$xgetHeaderArray$1(i);
                return lambda$xgetHeaderArray$1;
            }
        });
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public List<XmlString> xgetHeaderList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.jt4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTHeadersImpl.this.xgetHeaderArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.kt4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTHeadersImpl.this.xsetHeaderArray(((Integer) obj).intValue(), (XmlString) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.lt4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTHeadersImpl.this.insertNewHeader(((Integer) obj).intValue());
                }
            }, new ft4(this), new ht4(this));
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public void xsetHeaderArray(XmlString[] xmlStringArr) {
        synchronized (monitor()) {
            check_orphaned();
            arraySetterHelper(xmlStringArr, PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public String getHeaderArray(int i) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public XmlString xgetHeaderArray(int i) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public void setHeaderArray(int i, String str) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTHeaders
    public void xsetHeaderArray(int i, XmlString xmlString) {
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
