.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryCache;",
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

    const-string v2, "ctquerycache88a3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryCache;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQueryCache;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewQuery()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQuery;
.end method

.method public abstract getCount()J
.end method

.method public abstract getQueryArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQuery;
.end method

.method public abstract getQueryArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQuery;
.end method

.method public abstract getQueryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQuery;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewQuery(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQuery;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract removeQuery(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setQueryArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQuery;)V
.end method

.method public abstract setQueryArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTQuery;)V
.end method

.method public abstract sizeOfQueryArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
