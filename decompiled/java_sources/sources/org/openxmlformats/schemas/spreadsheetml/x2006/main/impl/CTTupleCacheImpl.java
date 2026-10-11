package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPCDSDTCEntries;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTQueryCache;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTServerFormats;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTSets;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache;

/* loaded from: classes15.dex */
public class CTTupleCacheImpl extends XmlComplexContentImpl implements CTTupleCache {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "entries"), new QName(XSSFRelation.NS_SPREADSHEETML, "sets"), new QName(XSSFRelation.NS_SPREADSHEETML, "queryCache"), new QName(XSSFRelation.NS_SPREADSHEETML, "serverFormats"), new QName(XSSFRelation.NS_SPREADSHEETML, "extLst")};
    private static final long serialVersionUID = 1;

    public CTTupleCacheImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public CTPCDSDTCEntries addNewEntries() {
        CTPCDSDTCEntries cTPCDSDTCEntries;
        synchronized (monitor()) {
            check_orphaned();
            cTPCDSDTCEntries = (CTPCDSDTCEntries) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPCDSDTCEntries;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public CTExtensionList addNewExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public CTQueryCache addNewQueryCache() {
        CTQueryCache cTQueryCache;
        synchronized (monitor()) {
            check_orphaned();
            cTQueryCache = (CTQueryCache) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTQueryCache;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public CTServerFormats addNewServerFormats() {
        CTServerFormats cTServerFormats;
        synchronized (monitor()) {
            check_orphaned();
            cTServerFormats = (CTServerFormats) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTServerFormats;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public CTSets addNewSets() {
        CTSets cTSets;
        synchronized (monitor()) {
            check_orphaned();
            cTSets = (CTSets) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTSets;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public CTPCDSDTCEntries getEntries() {
        CTPCDSDTCEntries cTPCDSDTCEntries;
        synchronized (monitor()) {
            check_orphaned();
            cTPCDSDTCEntries = (CTPCDSDTCEntries) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPCDSDTCEntries == null) {
                cTPCDSDTCEntries = null;
            }
        }
        return cTPCDSDTCEntries;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public CTExtensionList getExtLst() {
        CTExtensionList cTExtensionList;
        synchronized (monitor()) {
            check_orphaned();
            cTExtensionList = (CTExtensionList) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTExtensionList == null) {
                cTExtensionList = null;
            }
        }
        return cTExtensionList;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public CTQueryCache getQueryCache() {
        CTQueryCache cTQueryCache;
        synchronized (monitor()) {
            check_orphaned();
            cTQueryCache = (CTQueryCache) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTQueryCache == null) {
                cTQueryCache = null;
            }
        }
        return cTQueryCache;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public CTServerFormats getServerFormats() {
        CTServerFormats cTServerFormats;
        synchronized (monitor()) {
            check_orphaned();
            cTServerFormats = (CTServerFormats) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTServerFormats == null) {
                cTServerFormats = null;
            }
        }
        return cTServerFormats;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public CTSets getSets() {
        CTSets cTSets;
        synchronized (monitor()) {
            check_orphaned();
            cTSets = (CTSets) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTSets == null) {
                cTSets = null;
            }
        }
        return cTSets;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public boolean isSetEntries() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public boolean isSetExtLst() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public boolean isSetQueryCache() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public boolean isSetServerFormats() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public boolean isSetSets() {
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

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public void setEntries(CTPCDSDTCEntries cTPCDSDTCEntries) {
        generatedSetterHelperImpl(cTPCDSDTCEntries, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public void setExtLst(CTExtensionList cTExtensionList) {
        generatedSetterHelperImpl(cTExtensionList, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public void setQueryCache(CTQueryCache cTQueryCache) {
        generatedSetterHelperImpl(cTQueryCache, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public void setServerFormats(CTServerFormats cTServerFormats) {
        generatedSetterHelperImpl(cTServerFormats, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public void setSets(CTSets cTSets) {
        generatedSetterHelperImpl(cTSets, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public void unsetEntries() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public void unsetExtLst() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public void unsetQueryCache() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public void unsetServerFormats() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTTupleCache
    public void unsetSets() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
