.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilters;",
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

    const-string v2, "ctfiltersb69atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilters;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilters;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDateGroupItem()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateGroupItem;
.end method

.method public abstract addNewFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilter;
.end method

.method public abstract getBlank()Z
.end method

.method public abstract getCalendarType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;
.end method

.method public abstract getDateGroupItemArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateGroupItem;
.end method

.method public abstract getDateGroupItemArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateGroupItem;
.end method

.method public abstract getDateGroupItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateGroupItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFilterArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilter;
.end method

.method public abstract getFilterArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilter;
.end method

.method public abstract getFilterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewDateGroupItem(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateGroupItem;
.end method

.method public abstract insertNewFilter(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilter;
.end method

.method public abstract isSetBlank()Z
.end method

.method public abstract isSetCalendarType()Z
.end method

.method public abstract removeDateGroupItem(I)V
.end method

.method public abstract removeFilter(I)V
.end method

.method public abstract setBlank(Z)V
.end method

.method public abstract setCalendarType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;)V
.end method

.method public abstract setDateGroupItemArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateGroupItem;)V
.end method

.method public abstract setDateGroupItemArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDateGroupItem;)V
.end method

.method public abstract setFilterArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilter;)V
.end method

.method public abstract setFilterArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFilter;)V
.end method

.method public abstract sizeOfDateGroupItemArray()I
.end method

.method public abstract sizeOfFilterArray()I
.end method

.method public abstract unsetBlank()V
.end method

.method public abstract unsetCalendarType()V
.end method

.method public abstract xgetBlank()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCalendarType()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;
.end method

.method public abstract xsetBlank(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCalendarType(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;)V
.end method
