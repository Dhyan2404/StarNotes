.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHeaders;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHeaders;",
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

    const-string v2, "ctheaders1637type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHeaders;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTHeaders;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addHeader(Ljava/lang/String;)V
.end method

.method public abstract addNewHeader()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract getHeaderArray(I)Ljava/lang/String;
.end method

.method public abstract getHeaderArray()[Ljava/lang/String;
.end method

.method public abstract getHeaderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertHeader(ILjava/lang/String;)V
.end method

.method public abstract insertNewHeader(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract removeHeader(I)V
.end method

.method public abstract setHeaderArray(ILjava/lang/String;)V
.end method

.method public abstract setHeaderArray([Ljava/lang/String;)V
.end method

.method public abstract sizeOfHeaderArray()I
.end method

.method public abstract xgetHeaderArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetHeaderArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetHeaderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xsetHeaderArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetHeaderArray([Lorg/apache/xmlbeans/XmlString;)V
.end method
