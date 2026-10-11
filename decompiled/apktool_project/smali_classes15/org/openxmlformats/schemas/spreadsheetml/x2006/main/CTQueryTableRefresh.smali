.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableRefresh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableRefresh;",
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

    const-string v2, "ctquerytablerefreshac74type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableRefresh;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableRefresh;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewQueryTableDeletedFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableDeletedFields;
.end method

.method public abstract addNewQueryTableFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableFields;
.end method

.method public abstract addNewSortState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFieldIdWrapped()Z
.end method

.method public abstract getHeadersInLastRefresh()Z
.end method

.method public abstract getMinimumVersion()S
.end method

.method public abstract getNextId()J
.end method

.method public abstract getPreserveSortFilterLayout()Z
.end method

.method public abstract getQueryTableDeletedFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableDeletedFields;
.end method

.method public abstract getQueryTableFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableFields;
.end method

.method public abstract getSortState()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;
.end method

.method public abstract getUnboundColumnsLeft()J
.end method

.method public abstract getUnboundColumnsRight()J
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFieldIdWrapped()Z
.end method

.method public abstract isSetHeadersInLastRefresh()Z
.end method

.method public abstract isSetMinimumVersion()Z
.end method

.method public abstract isSetNextId()Z
.end method

.method public abstract isSetPreserveSortFilterLayout()Z
.end method

.method public abstract isSetQueryTableDeletedFields()Z
.end method

.method public abstract isSetSortState()Z
.end method

.method public abstract isSetUnboundColumnsLeft()Z
.end method

.method public abstract isSetUnboundColumnsRight()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFieldIdWrapped(Z)V
.end method

.method public abstract setHeadersInLastRefresh(Z)V
.end method

.method public abstract setMinimumVersion(S)V
.end method

.method public abstract setNextId(J)V
.end method

.method public abstract setPreserveSortFilterLayout(Z)V
.end method

.method public abstract setQueryTableDeletedFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableDeletedFields;)V
.end method

.method public abstract setQueryTableFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryTableFields;)V
.end method

.method public abstract setSortState(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;)V
.end method

.method public abstract setUnboundColumnsLeft(J)V
.end method

.method public abstract setUnboundColumnsRight(J)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFieldIdWrapped()V
.end method

.method public abstract unsetHeadersInLastRefresh()V
.end method

.method public abstract unsetMinimumVersion()V
.end method

.method public abstract unsetNextId()V
.end method

.method public abstract unsetPreserveSortFilterLayout()V
.end method

.method public abstract unsetQueryTableDeletedFields()V
.end method

.method public abstract unsetSortState()V
.end method

.method public abstract unsetUnboundColumnsLeft()V
.end method

.method public abstract unsetUnboundColumnsRight()V
.end method

.method public abstract xgetFieldIdWrapped()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHeadersInLastRefresh()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMinimumVersion()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetNextId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetPreserveSortFilterLayout()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUnboundColumnsLeft()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetUnboundColumnsRight()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetFieldIdWrapped(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHeadersInLastRefresh(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMinimumVersion(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetNextId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetPreserveSortFilterLayout(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUnboundColumnsLeft(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetUnboundColumnsRight(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
