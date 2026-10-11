.class public interface abstract Lorg/w3/x2000/x09/xmldsig/RetrievalMethodType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/w3/x2000/x09/xmldsig/RetrievalMethodType;",
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

    const-string v2, "retrievalmethodtype2862type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/RetrievalMethodType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/RetrievalMethodType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTransforms()Lorg/w3/x2000/x09/xmldsig/TransformsType;
.end method

.method public abstract getTransforms()Lorg/w3/x2000/x09/xmldsig/TransformsType;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getURI()Ljava/lang/String;
.end method

.method public abstract isSetTransforms()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetURI()Z
.end method

.method public abstract setTransforms(Lorg/w3/x2000/x09/xmldsig/TransformsType;)V
.end method

.method public abstract setType(Ljava/lang/String;)V
.end method

.method public abstract setURI(Ljava/lang/String;)V
.end method

.method public abstract unsetTransforms()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetURI()V
.end method

.method public abstract xgetType()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xgetURI()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xsetType(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method

.method public abstract xsetURI(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
