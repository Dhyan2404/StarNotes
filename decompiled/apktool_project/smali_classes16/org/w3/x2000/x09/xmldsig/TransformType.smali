.class public interface abstract Lorg/w3/x2000/x09/xmldsig/TransformType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/w3/x2000/x09/xmldsig/TransformType;",
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

    const-string v2, "transformtype550btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/TransformType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/TransformType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewXPath()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract addXPath(Ljava/lang/String;)V
.end method

.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getXPathArray(I)Ljava/lang/String;
.end method

.method public abstract getXPathArray()[Ljava/lang/String;
.end method

.method public abstract getXPathList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewXPath(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract insertXPath(ILjava/lang/String;)V
.end method

.method public abstract removeXPath(I)V
.end method

.method public abstract setAlgorithm(Ljava/lang/String;)V
.end method

.method public abstract setXPathArray(ILjava/lang/String;)V
.end method

.method public abstract setXPathArray([Ljava/lang/String;)V
.end method

.method public abstract sizeOfXPathArray()I
.end method

.method public abstract xgetAlgorithm()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetXPathArray(I)Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetXPathArray()[Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetXPathList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/XmlString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xsetAlgorithm(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetXPathArray(ILorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetXPathArray([Lorg/apache/xmlbeans/XmlString;)V
.end method
