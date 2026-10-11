package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import io.opencensus.contrib.http.util.HttpMeasureConstants;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxKPI;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxMemeberProp;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxSet;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdxTuple;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STMdxFunctionType;

/* loaded from: classes15.dex */
public class CTMdxImpl extends XmlComplexContentImpl implements CTMdx {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "t"), new QName(XSSFRelation.NS_SPREADSHEETML, HttpMeasureConstants.f94668b), new QName(XSSFRelation.NS_SPREADSHEETML, "p"), new QName(XSSFRelation.NS_SPREADSHEETML, C4921e.f26537n), new QName("", GoogleApiAvailabilityLight.f29016b), new QName("", C6997f.f39671c)};
    private static final long serialVersionUID = 1;

    public CTMdxImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public CTMdxKPI addNewK() {
        CTMdxKPI cTMdxKPI;
        synchronized (monitor()) {
            check_orphaned();
            cTMdxKPI = (CTMdxKPI) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTMdxKPI;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public CTMdxSet addNewMs() {
        CTMdxSet cTMdxSet;
        synchronized (monitor()) {
            check_orphaned();
            cTMdxSet = (CTMdxSet) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTMdxSet;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public CTMdxMemeberProp addNewP() {
        CTMdxMemeberProp cTMdxMemeberProp;
        synchronized (monitor()) {
            check_orphaned();
            cTMdxMemeberProp = (CTMdxMemeberProp) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTMdxMemeberProp;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public CTMdxTuple addNewT() {
        CTMdxTuple cTMdxTuple;
        synchronized (monitor()) {
            check_orphaned();
            cTMdxTuple = (CTMdxTuple) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMdxTuple;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public STMdxFunctionType.Enum getF() {
        STMdxFunctionType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            r3 = simpleValue == null ? null : (STMdxFunctionType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public CTMdxKPI getK() {
        CTMdxKPI cTMdxKPI;
        synchronized (monitor()) {
            check_orphaned();
            cTMdxKPI = (CTMdxKPI) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTMdxKPI == null) {
                cTMdxKPI = null;
            }
        }
        return cTMdxKPI;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public CTMdxSet getMs() {
        CTMdxSet cTMdxSet;
        synchronized (monitor()) {
            check_orphaned();
            cTMdxSet = (CTMdxSet) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTMdxSet == null) {
                cTMdxSet = null;
            }
        }
        return cTMdxSet;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public long getN() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public CTMdxMemeberProp getP() {
        CTMdxMemeberProp cTMdxMemeberProp;
        synchronized (monitor()) {
            check_orphaned();
            cTMdxMemeberProp = (CTMdxMemeberProp) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTMdxMemeberProp == null) {
                cTMdxMemeberProp = null;
            }
        }
        return cTMdxMemeberProp;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public CTMdxTuple getT() {
        CTMdxTuple cTMdxTuple;
        synchronized (monitor()) {
            check_orphaned();
            cTMdxTuple = (CTMdxTuple) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTMdxTuple == null) {
                cTMdxTuple = null;
            }
        }
        return cTMdxTuple;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public boolean isSetK() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public boolean isSetMs() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public boolean isSetP() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public boolean isSetT() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public void setF(STMdxFunctionType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public void setK(CTMdxKPI cTMdxKPI) {
        generatedSetterHelperImpl(cTMdxKPI, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public void setMs(CTMdxSet cTMdxSet) {
        generatedSetterHelperImpl(cTMdxSet, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public void setN(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public void setP(CTMdxMemeberProp cTMdxMemeberProp) {
        generatedSetterHelperImpl(cTMdxMemeberProp, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public void setT(CTMdxTuple cTMdxTuple) {
        generatedSetterHelperImpl(cTMdxTuple, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public void unsetK() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public void unsetMs() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public void unsetP() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public void unsetT() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public STMdxFunctionType xgetF() {
        STMdxFunctionType sTMdxFunctionType;
        synchronized (monitor()) {
            check_orphaned();
            sTMdxFunctionType = (STMdxFunctionType) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTMdxFunctionType;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public XmlUnsignedInt xgetN() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public void xsetF(STMdxFunctionType sTMdxFunctionType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STMdxFunctionType sTMdxFunctionType2 = (STMdxFunctionType) typeStore.find_attribute_user(qNameArr[5]);
            if (sTMdxFunctionType2 == null) {
                sTMdxFunctionType2 = (STMdxFunctionType) get_store().add_attribute_user(qNameArr[5]);
            }
            sTMdxFunctionType2.set(sTMdxFunctionType);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMdx
    public void xsetN(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }
}
