.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilters;",
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

    const-string v2, "ctcustomfilters58e9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilters;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilters;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCustomFilter()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilter;
.end method

.method public abstract getAnd()Z
.end method

.method public abstract getCustomFilterArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilter;
.end method

.method public abstract getCustomFilterArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilter;
.end method

.method public abstract getCustomFilterList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCustomFilter(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilter;
.end method

.method public abstract isSetAnd()Z
.end method

.method public abstract removeCustomFilter(I)V
.end method

.method public abstract setAnd(Z)V
.end method

.method public abstract setCustomFilterArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilter;)V
.end method

.method public abstract setCustomFilterArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCustomFilter;)V
.end method

.method public abstract sizeOfCustomFilterArray()I
.end method

.method public abstract unsetAnd()V
.end method

.method public abstract xgetAnd()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAnd(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
