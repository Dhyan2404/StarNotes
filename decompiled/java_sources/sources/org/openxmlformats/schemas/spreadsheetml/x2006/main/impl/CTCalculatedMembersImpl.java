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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMember;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTCalculatedMembersImpl;

/* loaded from: classes15.dex */
public class CTCalculatedMembersImpl extends XmlComplexContentImpl implements CTCalculatedMembers {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "calculatedMember"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTCalculatedMembersImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
    public CTCalculatedMember addNewCalculatedMember() {
        CTCalculatedMember cTCalculatedMember;
        synchronized (monitor()) {
            check_orphaned();
            cTCalculatedMember = (CTCalculatedMember) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCalculatedMember;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
    public CTCalculatedMember[] getCalculatedMemberArray() {
        return (CTCalculatedMember[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTCalculatedMember[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
    public List<CTCalculatedMember> getCalculatedMemberList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.q51
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCalculatedMembersImpl.this.getCalculatedMemberArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.r51
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTCalculatedMembersImpl.this.setCalculatedMemberArray(((Integer) obj).intValue(), (CTCalculatedMember) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.s51
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTCalculatedMembersImpl.this.insertNewCalculatedMember(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.t51
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTCalculatedMembersImpl.this.removeCalculatedMember(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.u51
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTCalculatedMembersImpl.this.sizeOfCalculatedMemberArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
    public CTCalculatedMember insertNewCalculatedMember(int i) {
        CTCalculatedMember cTCalculatedMember;
        synchronized (monitor()) {
            check_orphaned();
            cTCalculatedMember = (CTCalculatedMember) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTCalculatedMember;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
    public void removeCalculatedMember(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
    public void setCalculatedMemberArray(CTCalculatedMember[] cTCalculatedMemberArr) {
        check_orphaned();
        arraySetterHelper(cTCalculatedMemberArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
    public int sizeOfCalculatedMemberArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
    public CTCalculatedMember getCalculatedMemberArray(int i) {
        CTCalculatedMember cTCalculatedMember;
        synchronized (monitor()) {
            check_orphaned();
            cTCalculatedMember = (CTCalculatedMember) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTCalculatedMember == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTCalculatedMember;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCalculatedMembers
    public void setCalculatedMemberArray(int i, CTCalculatedMember cTCalculatedMember) {
        generatedSetterHelperImpl(cTCalculatedMember, PROPERTY_QNAME[0], i, (short) 2);
    }
}
