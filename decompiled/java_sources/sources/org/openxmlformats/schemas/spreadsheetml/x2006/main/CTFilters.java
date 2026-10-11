package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STCalendarType;

/* loaded from: classes15.dex */
public interface CTFilters extends XmlObject {
    public static final DocumentFactory<CTFilters> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFilters> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfiltersb69atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDateGroupItem addNewDateGroupItem();

    CTFilter addNewFilter();

    boolean getBlank();

    STCalendarType.Enum getCalendarType();

    CTDateGroupItem getDateGroupItemArray(int i);

    CTDateGroupItem[] getDateGroupItemArray();

    List<CTDateGroupItem> getDateGroupItemList();

    CTFilter getFilterArray(int i);

    CTFilter[] getFilterArray();

    List<CTFilter> getFilterList();

    CTDateGroupItem insertNewDateGroupItem(int i);

    CTFilter insertNewFilter(int i);

    boolean isSetBlank();

    boolean isSetCalendarType();

    void removeDateGroupItem(int i);

    void removeFilter(int i);

    void setBlank(boolean z);

    void setCalendarType(STCalendarType.Enum r1);

    void setDateGroupItemArray(int i, CTDateGroupItem cTDateGroupItem);

    void setDateGroupItemArray(CTDateGroupItem[] cTDateGroupItemArr);

    void setFilterArray(int i, CTFilter cTFilter);

    void setFilterArray(CTFilter[] cTFilterArr);

    int sizeOfDateGroupItemArray();

    int sizeOfFilterArray();

    void unsetBlank();

    void unsetCalendarType();

    XmlBoolean xgetBlank();

    STCalendarType xgetCalendarType();

    void xsetBlank(XmlBoolean xmlBoolean);

    void xsetCalendarType(STCalendarType sTCalendarType);
}
