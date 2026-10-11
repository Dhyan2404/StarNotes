package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DataColumnType extends XmlObject {
    public static final DocumentFactory<DataColumnType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DataColumnType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "datacolumntypec699type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getCalendar();

    String getColumnNameID();

    int getCurrency();

    int getDataType();

    long getDegree();

    long getDisplayOrder();

    long getDisplayWidth();

    boolean getHyperlink();

    String getLabel();

    long getLangID();

    boolean getMapped();

    String getName();

    String getOrigLabel();

    String getUnitType();

    boolean isSetCalendar();

    boolean isSetCurrency();

    boolean isSetDataType();

    boolean isSetDegree();

    boolean isSetDisplayOrder();

    boolean isSetDisplayWidth();

    boolean isSetHyperlink();

    boolean isSetLangID();

    boolean isSetMapped();

    boolean isSetOrigLabel();

    boolean isSetUnitType();

    void setCalendar(int i);

    void setColumnNameID(String str);

    void setCurrency(int i);

    void setDataType(int i);

    void setDegree(long j);

    void setDisplayOrder(long j);

    void setDisplayWidth(long j);

    void setHyperlink(boolean z);

    void setLabel(String str);

    void setLangID(long j);

    void setMapped(boolean z);

    void setName(String str);

    void setOrigLabel(String str);

    void setUnitType(String str);

    void unsetCalendar();

    void unsetCurrency();

    void unsetDataType();

    void unsetDegree();

    void unsetDisplayOrder();

    void unsetDisplayWidth();

    void unsetHyperlink();

    void unsetLangID();

    void unsetMapped();

    void unsetOrigLabel();

    void unsetUnitType();

    XmlUnsignedShort xgetCalendar();

    XmlString xgetColumnNameID();

    XmlUnsignedShort xgetCurrency();

    XmlUnsignedShort xgetDataType();

    XmlUnsignedInt xgetDegree();

    XmlUnsignedInt xgetDisplayOrder();

    XmlUnsignedInt xgetDisplayWidth();

    XmlBoolean xgetHyperlink();

    XmlString xgetLabel();

    XmlUnsignedInt xgetLangID();

    XmlBoolean xgetMapped();

    XmlString xgetName();

    XmlString xgetOrigLabel();

    XmlString xgetUnitType();

    void xsetCalendar(XmlUnsignedShort xmlUnsignedShort);

    void xsetColumnNameID(XmlString xmlString);

    void xsetCurrency(XmlUnsignedShort xmlUnsignedShort);

    void xsetDataType(XmlUnsignedShort xmlUnsignedShort);

    void xsetDegree(XmlUnsignedInt xmlUnsignedInt);

    void xsetDisplayOrder(XmlUnsignedInt xmlUnsignedInt);

    void xsetDisplayWidth(XmlUnsignedInt xmlUnsignedInt);

    void xsetHyperlink(XmlBoolean xmlBoolean);

    void xsetLabel(XmlString xmlString);

    void xsetLangID(XmlUnsignedInt xmlUnsignedInt);

    void xsetMapped(XmlBoolean xmlBoolean);

    void xsetName(XmlString xmlString);

    void xsetOrigLabel(XmlString xmlString);

    void xsetUnitType(XmlString xmlString);
}
