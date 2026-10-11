package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProof;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STProof;

/* loaded from: classes16.dex */
public class CTProofImpl extends XmlComplexContentImpl implements CTProof {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "spelling"), new QName(XSSFRelation.NS_WORDPROCESSINGML, "grammar")};
    private static final long serialVersionUID = 1;

    public CTProofImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProof
    public STProof.Enum getGrammar() {
        STProof.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STProof.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProof
    public STProof.Enum getSpelling() {
        STProof.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STProof.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProof
    public boolean isSetGrammar() {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProof
    public boolean isSetSpelling() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProof
    public void setGrammar(STProof.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProof
    public void setSpelling(STProof.Enum r6) {
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

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProof
    public void unsetGrammar() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProof
    public void unsetSpelling() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProof
    public STProof xgetGrammar() {
        STProof sTProof;
        synchronized (monitor()) {
            check_orphaned();
            sTProof = (STProof) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTProof;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProof
    public STProof xgetSpelling() {
        STProof sTProof;
        synchronized (monitor()) {
            check_orphaned();
            sTProof = (STProof) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTProof;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProof
    public void xsetGrammar(STProof sTProof) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STProof sTProof2 = (STProof) typeStore.find_attribute_user(qNameArr[1]);
            if (sTProof2 == null) {
                sTProof2 = (STProof) get_store().add_attribute_user(qNameArr[1]);
            }
            sTProof2.set(sTProof);
        }
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTProof
    public void xsetSpelling(STProof sTProof) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STProof sTProof2 = (STProof) typeStore.find_attribute_user(qNameArr[0]);
            if (sTProof2 == null) {
                sTProof2 = (STProof) get_store().add_attribute_user(qNameArr[0]);
            }
            sTProof2.set(sTProof);
        }
    }
}
