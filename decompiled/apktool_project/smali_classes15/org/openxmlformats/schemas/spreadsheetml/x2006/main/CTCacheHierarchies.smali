.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchies;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchies;",
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

    const-string v2, "ctcachehierarchies373atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchies;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchies;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCacheHierarchy()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchy;
.end method

.method public abstract getCacheHierarchyArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchy;
.end method

.method public abstract getCacheHierarchyArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchy;
.end method

.method public abstract getCacheHierarchyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCount()J
.end method

.method public abstract insertNewCacheHierarchy(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchy;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract removeCacheHierarchy(I)V
.end method

.method public abstract setCacheHierarchyArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchy;)V
.end method

.method public abstract setCacheHierarchyArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchy;)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract sizeOfCacheHierarchyArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
