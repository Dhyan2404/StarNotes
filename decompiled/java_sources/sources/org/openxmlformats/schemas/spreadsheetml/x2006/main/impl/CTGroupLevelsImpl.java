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
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevel;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.impl.CTGroupLevelsImpl;

/* loaded from: classes15.dex */
public class CTGroupLevelsImpl extends XmlComplexContentImpl implements CTGroupLevels {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "groupLevel"), new QName("", "count")};
    private static final long serialVersionUID = 1;

    public CTGroupLevelsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
    public CTGroupLevel addNewGroupLevel() {
        CTGroupLevel cTGroupLevel;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupLevel = (CTGroupLevel) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTGroupLevel;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
    public long getCount() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
    public CTGroupLevel[] getGroupLevelArray() {
        return (CTGroupLevel[]) getXmlObjectArray(PROPERTY_QNAME[0], new CTGroupLevel[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
    public List<CTGroupLevel> getGroupLevelList() {
        JavaListXmlObject javaListXmlObject;
        synchronized (monitor()) {
            check_orphaned();
            javaListXmlObject = new JavaListXmlObject(new Function() { // from class: com.sunia.HTREnginev2.ph4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupLevelsImpl.this.getGroupLevelArray(((Integer) obj).intValue());
                }
            }, new BiConsumer() { // from class: com.sunia.HTREnginev2.qh4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    CTGroupLevelsImpl.this.setGroupLevelArray(((Integer) obj).intValue(), (CTGroupLevel) obj2);
                }
            }, new Function() { // from class: com.sunia.HTREnginev2.rh4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return CTGroupLevelsImpl.this.insertNewGroupLevel(((Integer) obj).intValue());
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.sh4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    CTGroupLevelsImpl.this.removeGroupLevel(((Integer) obj).intValue());
                }
            }, new Supplier() { // from class: com.sunia.HTREnginev2.th4
                @Override // java.util.function.Supplier
                public final Object get() {
                    return Integer.valueOf(CTGroupLevelsImpl.this.sizeOfGroupLevelArray());
                }
            });
        }
        return javaListXmlObject;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
    public CTGroupLevel insertNewGroupLevel(int i) {
        CTGroupLevel cTGroupLevel;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupLevel = (CTGroupLevel) get_store().insert_element_user(PROPERTY_QNAME[0], i);
        }
        return cTGroupLevel;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
    public void removeGroupLevel(int i) {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], i);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
    public void setGroupLevelArray(CTGroupLevel[] cTGroupLevelArr) {
        check_orphaned();
        arraySetterHelper(cTGroupLevelArr, PROPERTY_QNAME[0]);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
    public int sizeOfGroupLevelArray() {
        int count_elements;
        synchronized (monitor()) {
            check_orphaned();
            count_elements = get_store().count_elements(PROPERTY_QNAME[0]);
        }
        return count_elements;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
    public void unsetCount() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
    public XmlUnsignedInt xgetCount() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
    public CTGroupLevel getGroupLevelArray(int i) {
        CTGroupLevel cTGroupLevel;
        synchronized (monitor()) {
            check_orphaned();
            cTGroupLevel = (CTGroupLevel) get_store().find_element_user(PROPERTY_QNAME[0], i);
            if (cTGroupLevel == null) {
                throw new IndexOutOfBoundsException();
            }
        }
        return cTGroupLevel;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTGroupLevels
    public void setGroupLevelArray(int i, CTGroupLevel cTGroupLevel) {
        generatedSetterHelperImpl(cTGroupLevel, PROPERTY_QNAME[0], i, (short) 2);
    }
}
