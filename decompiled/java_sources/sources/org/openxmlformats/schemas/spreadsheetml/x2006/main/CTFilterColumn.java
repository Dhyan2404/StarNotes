package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTFilterColumn extends XmlObject {
    public static final DocumentFactory<CTFilterColumn> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFilterColumn> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfiltercolumn0fb7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColorFilter addNewColorFilter();

    CTCustomFilters addNewCustomFilters();

    CTDynamicFilter addNewDynamicFilter();

    CTExtensionList addNewExtLst();

    CTFilters addNewFilters();

    CTIconFilter addNewIconFilter();

    CTTop10 addNewTop10();

    long getColId();

    CTColorFilter getColorFilter();

    CTCustomFilters getCustomFilters();

    CTDynamicFilter getDynamicFilter();

    CTExtensionList getExtLst();

    CTFilters getFilters();

    boolean getHiddenButton();

    CTIconFilter getIconFilter();

    boolean getShowButton();

    CTTop10 getTop10();

    boolean isSetColorFilter();

    boolean isSetCustomFilters();

    boolean isSetDynamicFilter();

    boolean isSetExtLst();

    boolean isSetFilters();

    boolean isSetHiddenButton();

    boolean isSetIconFilter();

    boolean isSetShowButton();

    boolean isSetTop10();

    void setColId(long j);

    void setColorFilter(CTColorFilter cTColorFilter);

    void setCustomFilters(CTCustomFilters cTCustomFilters);

    void setDynamicFilter(CTDynamicFilter cTDynamicFilter);

    void setExtLst(CTExtensionList cTExtensionList);

    void setFilters(CTFilters cTFilters);

    void setHiddenButton(boolean z);

    void setIconFilter(CTIconFilter cTIconFilter);

    void setShowButton(boolean z);

    void setTop10(CTTop10 cTTop10);

    void unsetColorFilter();

    void unsetCustomFilters();

    void unsetDynamicFilter();

    void unsetExtLst();

    void unsetFilters();

    void unsetHiddenButton();

    void unsetIconFilter();

    void unsetShowButton();

    void unsetTop10();

    XmlUnsignedInt xgetColId();

    XmlBoolean xgetHiddenButton();

    XmlBoolean xgetShowButton();

    void xsetColId(XmlUnsignedInt xmlUnsignedInt);

    void xsetHiddenButton(XmlBoolean xmlBoolean);

    void xsetShowButton(XmlBoolean xmlBoolean);
}
