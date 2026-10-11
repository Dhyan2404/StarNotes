.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;",
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

    const-string v2, "ctpivotcaches4f32type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCaches;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewPivotCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
.end method

.method public abstract getPivotCacheArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
.end method

.method public abstract getPivotCacheArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
.end method

.method public abstract getPivotCacheList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewPivotCache(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;
.end method

.method public abstract removePivotCache(I)V
.end method

.method public abstract setPivotCacheArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;)V
.end method

.method public abstract setPivotCacheArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCache;)V
.end method

.method public abstract sizeOfPivotCacheArray()I
.end method
