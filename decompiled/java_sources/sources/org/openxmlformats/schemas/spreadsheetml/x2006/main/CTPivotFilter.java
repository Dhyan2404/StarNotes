package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STPivotFilterType;

/* loaded from: classes15.dex */
public interface CTPivotFilter extends XmlObject {
    public static final DocumentFactory<CTPivotFilter> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPivotFilter> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpivotfilter22b9type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAutoFilter addNewAutoFilter();

    CTExtensionList addNewExtLst();

    CTAutoFilter getAutoFilter();

    String getDescription();

    int getEvalOrder();

    CTExtensionList getExtLst();

    long getFld();

    long getIMeasureFld();

    long getIMeasureHier();

    long getId();

    long getMpFld();

    String getName();

    String getStringValue1();

    String getStringValue2();

    STPivotFilterType.Enum getType();

    boolean isSetDescription();

    boolean isSetEvalOrder();

    boolean isSetExtLst();

    boolean isSetIMeasureFld();

    boolean isSetIMeasureHier();

    boolean isSetMpFld();

    boolean isSetName();

    boolean isSetStringValue1();

    boolean isSetStringValue2();

    void setAutoFilter(CTAutoFilter cTAutoFilter);

    void setDescription(String str);

    void setEvalOrder(int i);

    void setExtLst(CTExtensionList cTExtensionList);

    void setFld(long j);

    void setIMeasureFld(long j);

    void setIMeasureHier(long j);

    void setId(long j);

    void setMpFld(long j);

    void setName(String str);

    void setStringValue1(String str);

    void setStringValue2(String str);

    void setType(STPivotFilterType.Enum r1);

    void unsetDescription();

    void unsetEvalOrder();

    void unsetExtLst();

    void unsetIMeasureFld();

    void unsetIMeasureHier();

    void unsetMpFld();

    void unsetName();

    void unsetStringValue1();

    void unsetStringValue2();

    STXstring xgetDescription();

    XmlInt xgetEvalOrder();

    XmlUnsignedInt xgetFld();

    XmlUnsignedInt xgetIMeasureFld();

    XmlUnsignedInt xgetIMeasureHier();

    XmlUnsignedInt xgetId();

    XmlUnsignedInt xgetMpFld();

    STXstring xgetName();

    STXstring xgetStringValue1();

    STXstring xgetStringValue2();

    STPivotFilterType xgetType();

    void xsetDescription(STXstring sTXstring);

    void xsetEvalOrder(XmlInt xmlInt);

    void xsetFld(XmlUnsignedInt xmlUnsignedInt);

    void xsetIMeasureFld(XmlUnsignedInt xmlUnsignedInt);

    void xsetIMeasureHier(XmlUnsignedInt xmlUnsignedInt);

    void xsetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetMpFld(XmlUnsignedInt xmlUnsignedInt);

    void xsetName(STXstring sTXstring);

    void xsetStringValue1(STXstring sTXstring);

    void xsetStringValue2(STXstring sTXstring);

    void xsetType(STPivotFilterType sTPivotFilterType);
}
