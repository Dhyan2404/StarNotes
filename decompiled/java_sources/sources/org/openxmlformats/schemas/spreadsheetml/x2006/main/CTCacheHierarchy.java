package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTCacheHierarchy extends XmlObject {
    public static final DocumentFactory<CTCacheHierarchy> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCacheHierarchy> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcachehierarchy761ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTFieldsUsage addNewFieldsUsage();

    CTGroupLevels addNewGroupLevels();

    String getAllCaption();

    String getAllUniqueName();

    boolean getAttribute();

    String getCaption();

    long getCount();

    String getDefaultMemberUniqueName();

    String getDimensionUniqueName();

    String getDisplayFolder();

    CTExtensionList getExtLst();

    CTFieldsUsage getFieldsUsage();

    CTGroupLevels getGroupLevels();

    boolean getHidden();

    int getIconSet();

    boolean getKeyAttribute();

    boolean getMeasure();

    String getMeasureGroup();

    boolean getMeasures();

    int getMemberValueDatatype();

    boolean getOneField();

    long getParentSet();

    boolean getSet();

    boolean getTime();

    boolean getUnbalanced();

    boolean getUnbalancedGroup();

    String getUniqueName();

    boolean isSetAllCaption();

    boolean isSetAllUniqueName();

    boolean isSetAttribute();

    boolean isSetCaption();

    boolean isSetDefaultMemberUniqueName();

    boolean isSetDimensionUniqueName();

    boolean isSetDisplayFolder();

    boolean isSetExtLst();

    boolean isSetFieldsUsage();

    boolean isSetGroupLevels();

    boolean isSetHidden();

    boolean isSetIconSet();

    boolean isSetKeyAttribute();

    boolean isSetMeasure();

    boolean isSetMeasureGroup();

    boolean isSetMeasures();

    boolean isSetMemberValueDatatype();

    boolean isSetOneField();

    boolean isSetParentSet();

    boolean isSetSet();

    boolean isSetTime();

    boolean isSetUnbalanced();

    boolean isSetUnbalancedGroup();

    void setAllCaption(String str);

    void setAllUniqueName(String str);

    void setAttribute(boolean z);

    void setCaption(String str);

    void setCount(long j);

    void setDefaultMemberUniqueName(String str);

    void setDimensionUniqueName(String str);

    void setDisplayFolder(String str);

    void setExtLst(CTExtensionList cTExtensionList);

    void setFieldsUsage(CTFieldsUsage cTFieldsUsage);

    void setGroupLevels(CTGroupLevels cTGroupLevels);

    void setHidden(boolean z);

    void setIconSet(int i);

    void setKeyAttribute(boolean z);

    void setMeasure(boolean z);

    void setMeasureGroup(String str);

    void setMeasures(boolean z);

    void setMemberValueDatatype(int i);

    void setOneField(boolean z);

    void setParentSet(long j);

    void setSet(boolean z);

    void setTime(boolean z);

    void setUnbalanced(boolean z);

    void setUnbalancedGroup(boolean z);

    void setUniqueName(String str);

    void unsetAllCaption();

    void unsetAllUniqueName();

    void unsetAttribute();

    void unsetCaption();

    void unsetDefaultMemberUniqueName();

    void unsetDimensionUniqueName();

    void unsetDisplayFolder();

    void unsetExtLst();

    void unsetFieldsUsage();

    void unsetGroupLevels();

    void unsetHidden();

    void unsetIconSet();

    void unsetKeyAttribute();

    void unsetMeasure();

    void unsetMeasureGroup();

    void unsetMeasures();

    void unsetMemberValueDatatype();

    void unsetOneField();

    void unsetParentSet();

    void unsetSet();

    void unsetTime();

    void unsetUnbalanced();

    void unsetUnbalancedGroup();

    STXstring xgetAllCaption();

    STXstring xgetAllUniqueName();

    XmlBoolean xgetAttribute();

    STXstring xgetCaption();

    XmlUnsignedInt xgetCount();

    STXstring xgetDefaultMemberUniqueName();

    STXstring xgetDimensionUniqueName();

    STXstring xgetDisplayFolder();

    XmlBoolean xgetHidden();

    XmlInt xgetIconSet();

    XmlBoolean xgetKeyAttribute();

    XmlBoolean xgetMeasure();

    STXstring xgetMeasureGroup();

    XmlBoolean xgetMeasures();

    XmlUnsignedShort xgetMemberValueDatatype();

    XmlBoolean xgetOneField();

    XmlUnsignedInt xgetParentSet();

    XmlBoolean xgetSet();

    XmlBoolean xgetTime();

    XmlBoolean xgetUnbalanced();

    XmlBoolean xgetUnbalancedGroup();

    STXstring xgetUniqueName();

    void xsetAllCaption(STXstring sTXstring);

    void xsetAllUniqueName(STXstring sTXstring);

    void xsetAttribute(XmlBoolean xmlBoolean);

    void xsetCaption(STXstring sTXstring);

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);

    void xsetDefaultMemberUniqueName(STXstring sTXstring);

    void xsetDimensionUniqueName(STXstring sTXstring);

    void xsetDisplayFolder(STXstring sTXstring);

    void xsetHidden(XmlBoolean xmlBoolean);

    void xsetIconSet(XmlInt xmlInt);

    void xsetKeyAttribute(XmlBoolean xmlBoolean);

    void xsetMeasure(XmlBoolean xmlBoolean);

    void xsetMeasureGroup(STXstring sTXstring);

    void xsetMeasures(XmlBoolean xmlBoolean);

    void xsetMemberValueDatatype(XmlUnsignedShort xmlUnsignedShort);

    void xsetOneField(XmlBoolean xmlBoolean);

    void xsetParentSet(XmlUnsignedInt xmlUnsignedInt);

    void xsetSet(XmlBoolean xmlBoolean);

    void xsetTime(XmlBoolean xmlBoolean);

    void xsetUnbalanced(XmlBoolean xmlBoolean);

    void xsetUnbalancedGroup(XmlBoolean xmlBoolean);

    void xsetUniqueName(STXstring sTXstring);
}
