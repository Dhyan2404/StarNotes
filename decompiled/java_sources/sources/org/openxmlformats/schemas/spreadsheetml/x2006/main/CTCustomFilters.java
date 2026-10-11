package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTCustomFilters extends XmlObject {
    public static final DocumentFactory<CTCustomFilters> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCustomFilters> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcustomfilters58e9type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCustomFilter addNewCustomFilter();

    boolean getAnd();

    CTCustomFilter getCustomFilterArray(int i);

    CTCustomFilter[] getCustomFilterArray();

    List<CTCustomFilter> getCustomFilterList();

    CTCustomFilter insertNewCustomFilter(int i);

    boolean isSetAnd();

    void removeCustomFilter(int i);

    void setAnd(boolean z);

    void setCustomFilterArray(int i, CTCustomFilter cTCustomFilter);

    void setCustomFilterArray(CTCustomFilter[] cTCustomFilterArr);

    int sizeOfCustomFilterArray();

    void unsetAnd();

    XmlBoolean xgetAnd();

    void xsetAnd(XmlBoolean xmlBoolean);
}
