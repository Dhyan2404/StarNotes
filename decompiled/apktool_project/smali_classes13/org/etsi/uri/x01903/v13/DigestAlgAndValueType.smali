.class public interface abstract Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;",
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

    const-string v2, "digestalgandvaluetype234etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewDigestMethod()Lorg/w3/x2000/x09/xmldsig/DigestMethodType;
.end method

.method public abstract getDigestMethod()Lorg/w3/x2000/x09/xmldsig/DigestMethodType;
.end method

.method public abstract getDigestValue()[B
.end method

.method public abstract setDigestMethod(Lorg/w3/x2000/x09/xmldsig/DigestMethodType;)V
.end method

.method public abstract setDigestValue([B)V
.end method

.method public abstract xgetDigestValue()Lorg/w3/x2000/x09/xmldsig/DigestValueType;
.end method

.method public abstract xsetDigestValue(Lorg/w3/x2000/x09/xmldsig/DigestValueType;)V
.end method
