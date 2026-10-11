package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTTupleCache extends XmlObject {
    public static final DocumentFactory<CTTupleCache> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTupleCache> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttuplecache39a3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPCDSDTCEntries addNewEntries();

    CTExtensionList addNewExtLst();

    CTQueryCache addNewQueryCache();

    CTServerFormats addNewServerFormats();

    CTSets addNewSets();

    CTPCDSDTCEntries getEntries();

    CTExtensionList getExtLst();

    CTQueryCache getQueryCache();

    CTServerFormats getServerFormats();

    CTSets getSets();

    boolean isSetEntries();

    boolean isSetExtLst();

    boolean isSetQueryCache();

    boolean isSetServerFormats();

    boolean isSetSets();

    void setEntries(CTPCDSDTCEntries cTPCDSDTCEntries);

    void setExtLst(CTExtensionList cTExtensionList);

    void setQueryCache(CTQueryCache cTQueryCache);

    void setServerFormats(CTServerFormats cTServerFormats);

    void setSets(CTSets cTSets);

    void unsetEntries();

    void unsetExtLst();

    void unsetQueryCache();

    void unsetServerFormats();

    void unsetSets();
}
