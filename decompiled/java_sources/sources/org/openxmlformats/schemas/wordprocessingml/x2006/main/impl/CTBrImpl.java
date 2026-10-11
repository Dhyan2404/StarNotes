package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STBrClear;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STBrType;

/* loaded from: classes16.dex */
public class CTBrImpl extends XmlComplexContentImpl implements CTBr {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "type"), new QName(XSSFRelation.NS_WORDPROCESSINGML, Constants.CLEAR_ATTRIBUTES)};
    private static final long serialVersionUID = 1;

    public CTBrImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr
    public STBrClear.Enum getClear() {
        STBrClear.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STBrClear.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr
    public STBrType.Enum getType() {
        STBrType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STBrType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr
    public boolean isSetClear() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr
    public boolean isSetType() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr
    public void setClear(STBrClear.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr
    public void setType(STBrType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr
    public void unsetClear() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr
    public void unsetType() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr
    public STBrClear xgetClear() {
        STBrClear sTBrClear;
        synchronized (monitor()) {
            check_orphaned();
            sTBrClear = (STBrClear) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTBrClear;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr
    public STBrType xgetType() {
        STBrType sTBrType;
        synchronized (monitor()) {
            check_orphaned();
            sTBrType = (STBrType) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTBrType;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr
    public void xsetClear(STBrClear sTBrClear) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBrClear sTBrClear2 = (STBrClear) typeStore.find_attribute_user(qNameArr[1]);
            if (sTBrClear2 == null) {
                sTBrClear2 = (STBrClear) get_store().add_attribute_user(qNameArr[1]);
            }
            sTBrClear2.set(sTBrClear);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr
    public void xsetType(STBrType sTBrType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBrType sTBrType2 = (STBrType) typeStore.find_attribute_user(qNameArr[0]);
            if (sTBrType2 == null) {
                sTBrType2 = (STBrType) get_store().add_attribute_user(qNameArr[0]);
            }
            sTBrType2.set(sTBrType);
        }
    }
}
