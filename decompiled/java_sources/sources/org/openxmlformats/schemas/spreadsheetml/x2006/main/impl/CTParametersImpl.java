package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.JavaListXmlObject;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameter;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTParametersImpl;

/* loaded from: classes15.dex */
public class CTParametersImpl extends XmlComplexContentImpl implements CTParameters {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "parameter"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTParametersImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public CTParameter addNewParameter() {
        CTParameter cTParameter;
        synchronized (monitor()) {
            check_orphaned();
            cTParameter = (CTParameter) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTParameter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public CTParameter[] getParameterArray() {
        return (CTParameter[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTParameter[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public List<CTParameter> getParameterList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.a47
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParametersImpl.this.getParameterArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.b47
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTParametersImpl.this.setParameterArray(((Integer) obj).intValue(), (CTParameter) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.c47
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTParametersImpl.this.insertNewParameter(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d47
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTParametersImpl.this.removeParameter(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.e47
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTParametersImpl.this.sizeOfParameterArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public CTParameter insertNewParameter(int i) {
        CTParameter cTParameter;
        synchronized (monitor()) {
            check_orphaned();
            cTParameter = (CTParameter) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTParameter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public boolean isSetCount() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public void removeParameter(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public void setCount(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public void setParameterArray(CTParameter[] cTParameterArr) {
        check_orphaned();
        arraySetterHelper(cTParameterArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public int sizeOfParameterArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public void xsetCount(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public CTParameter getParameterArray(int i) {
        CTParameter cTParameter;
        synchronized (monitor()) {
            check_orphaned();
            cTParameter = (CTParameter) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTParameter == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTParameter;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTParameters
    public void setParameterArray(int i, CTParameter cTParameter) {
        generatedSetterHelperImpl(cTParameter, PROPERTY_QNAME[0], i, (short) 2);
    }
}
