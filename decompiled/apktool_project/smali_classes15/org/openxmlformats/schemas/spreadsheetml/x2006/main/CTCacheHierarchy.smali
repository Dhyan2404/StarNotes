.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchy;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctcachehierarchy761ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchy;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchy;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewFieldsUsage()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFieldsUsage;
.end method

.method public abstract addNewGroupLevels()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGroupLevels;
.end method

.method public abstract getAllCaption()Ljava/lang/String;
.end method

.method public abstract getAllUniqueName()Ljava/lang/String;
.end method

.method public abstract getAttribute()Z
.end method

.method public abstract getCaption()Ljava/lang/String;
.end method

.method public abstract getCount()J
.end method

.method public abstract getDefaultMemberUniqueName()Ljava/lang/String;
.end method

.method public abstract getDimensionUniqueName()Ljava/lang/String;
.end method

.method public abstract getDisplayFolder()Ljava/lang/String;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFieldsUsage()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFieldsUsage;
.end method

.method public abstract getGroupLevels()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGroupLevels;
.end method

.method public abstract getHidden()Z
.end method

.method public abstract getIconSet()I
.end method

.method public abstract getKeyAttribute()Z
.end method

.method public abstract getMeasure()Z
.end method

.method public abstract getMeasureGroup()Ljava/lang/String;
.end method

.method public abstract getMeasures()Z
.end method

.method public abstract getMemberValueDatatype()I
.end method

.method public abstract getOneField()Z
.end method

.method public abstract getParentSet()J
.end method

.method public abstract getSet()Z
.end method

.method public abstract getTime()Z
.end method

.method public abstract getUnbalanced()Z
.end method

.method public abstract getUnbalancedGroup()Z
.end method

.method public abstract getUniqueName()Ljava/lang/String;
.end method

.method public abstract isSetAllCaption()Z
.end method

.method public abstract isSetAllUniqueName()Z
.end method

.method public abstract isSetAttribute()Z
.end method

.method public abstract isSetCaption()Z
.end method

.method public abstract isSetDefaultMemberUniqueName()Z
.end method

.method public abstract isSetDimensionUniqueName()Z
.end method

.method public abstract isSetDisplayFolder()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFieldsUsage()Z
.end method

.method public abstract isSetGroupLevels()Z
.end method

.method public abstract isSetHidden()Z
.end method

.method public abstract isSetIconSet()Z
.end method

.method public abstract isSetKeyAttribute()Z
.end method

.method public abstract isSetMeasure()Z
.end method

.method public abstract isSetMeasureGroup()Z
.end method

.method public abstract isSetMeasures()Z
.end method

.method public abstract isSetMemberValueDatatype()Z
.end method

.method public abstract isSetOneField()Z
.end method

.method public abstract isSetParentSet()Z
.end method

.method public abstract isSetSet()Z
.end method

.method public abstract isSetTime()Z
.end method

.method public abstract isSetUnbalanced()Z
.end method

.method public abstract isSetUnbalancedGroup()Z
.end method

.method public abstract setAllCaption(Ljava/lang/String;)V
.end method

.method public abstract setAllUniqueName(Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Z)V
.end method

.method public abstract setCaption(Ljava/lang/String;)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setDefaultMemberUniqueName(Ljava/lang/String;)V
.end method

.method public abstract setDimensionUniqueName(Ljava/lang/String;)V
.end method

.method public abstract setDisplayFolder(Ljava/lang/String;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFieldsUsage(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFieldsUsage;)V
.end method

.method public abstract setGroupLevels(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTGroupLevels;)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setIconSet(I)V
.end method

.method public abstract setKeyAttribute(Z)V
.end method

.method public abstract setMeasure(Z)V
.end method

.method public abstract setMeasureGroup(Ljava/lang/String;)V
.end method

.method public abstract setMeasures(Z)V
.end method

.method public abstract setMemberValueDatatype(I)V
.end method

.method public abstract setOneField(Z)V
.end method

.method public abstract setParentSet(J)V
.end method

.method public abstract setSet(Z)V
.end method

.method public abstract setTime(Z)V
.end method

.method public abstract setUnbalanced(Z)V
.end method

.method public abstract setUnbalancedGroup(Z)V
.end method

.method public abstract setUniqueName(Ljava/lang/String;)V
.end method

.method public abstract unsetAllCaption()V
.end method

.method public abstract unsetAllUniqueName()V
.end method

.method public abstract unsetAttribute()V
.end method

.method public abstract unsetCaption()V
.end method

.method public abstract unsetDefaultMemberUniqueName()V
.end method

.method public abstract unsetDimensionUniqueName()V
.end method

.method public abstract unsetDisplayFolder()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFieldsUsage()V
.end method

.method public abstract unsetGroupLevels()V
.end method

.method public abstract unsetHidden()V
.end method

.method public abstract unsetIconSet()V
.end method

.method public abstract unsetKeyAttribute()V
.end method

.method public abstract unsetMeasure()V
.end method

.method public abstract unsetMeasureGroup()V
.end method

.method public abstract unsetMeasures()V
.end method

.method public abstract unsetMemberValueDatatype()V
.end method

.method public abstract unsetOneField()V
.end method

.method public abstract unsetParentSet()V
.end method

.method public abstract unsetSet()V
.end method

.method public abstract unsetTime()V
.end method

.method public abstract unsetUnbalanced()V
.end method

.method public abstract unsetUnbalancedGroup()V
.end method

.method public abstract xgetAllCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetAllUniqueName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetAttribute()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCaption()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDefaultMemberUniqueName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDimensionUniqueName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDisplayFolder()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetHidden()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIconSet()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetKeyAttribute()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMeasure()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMeasureGroup()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetMeasures()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMemberValueDatatype()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetOneField()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetParentSet()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetSet()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTime()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUnbalanced()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUnbalancedGroup()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUniqueName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetAllCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetAllUniqueName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetAttribute(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCaption(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDefaultMemberUniqueName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDimensionUniqueName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDisplayFolder(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetHidden(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIconSet(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetKeyAttribute(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMeasure(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMeasureGroup(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetMeasures(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMemberValueDatatype(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetOneField(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetParentSet(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetSet(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTime(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUnbalanced(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUnbalancedGroup(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUniqueName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
