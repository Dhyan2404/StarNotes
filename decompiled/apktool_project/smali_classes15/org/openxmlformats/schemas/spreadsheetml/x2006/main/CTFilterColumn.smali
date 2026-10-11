.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;",
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

    const-string v2, "ctfiltercolumn0fb7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilterColumn;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewColorFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorFilter;
.end method

.method public abstract addNewCustomFilters()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilters;
.end method

.method public abstract addNewDynamicFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDynamicFilter;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewFilters()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilters;
.end method

.method public abstract addNewIconFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconFilter;
.end method

.method public abstract addNewTop10()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTop10;
.end method

.method public abstract getColId()J
.end method

.method public abstract getColorFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorFilter;
.end method

.method public abstract getCustomFilters()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilters;
.end method

.method public abstract getDynamicFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDynamicFilter;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFilters()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilters;
.end method

.method public abstract getHiddenButton()Z
.end method

.method public abstract getIconFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconFilter;
.end method

.method public abstract getShowButton()Z
.end method

.method public abstract getTop10()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTop10;
.end method

.method public abstract isSetColorFilter()Z
.end method

.method public abstract isSetCustomFilters()Z
.end method

.method public abstract isSetDynamicFilter()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFilters()Z
.end method

.method public abstract isSetHiddenButton()Z
.end method

.method public abstract isSetIconFilter()Z
.end method

.method public abstract isSetShowButton()Z
.end method

.method public abstract isSetTop10()Z
.end method

.method public abstract setColId(J)V
.end method

.method public abstract setColorFilter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColorFilter;)V
.end method

.method public abstract setCustomFilters(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilters;)V
.end method

.method public abstract setDynamicFilter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDynamicFilter;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFilters(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilters;)V
.end method

.method public abstract setHiddenButton(Z)V
.end method

.method public abstract setIconFilter(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIconFilter;)V
.end method

.method public abstract setShowButton(Z)V
.end method

.method public abstract setTop10(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTop10;)V
.end method

.method public abstract unsetColorFilter()V
.end method

.method public abstract unsetCustomFilters()V
.end method

.method public abstract unsetDynamicFilter()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFilters()V
.end method

.method public abstract unsetHiddenButton()V
.end method

.method public abstract unsetIconFilter()V
.end method

.method public abstract unsetShowButton()V
.end method

.method public abstract unsetTop10()V
.end method

.method public abstract xgetColId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetHiddenButton()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowButton()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetColId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetHiddenButton(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowButton(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
