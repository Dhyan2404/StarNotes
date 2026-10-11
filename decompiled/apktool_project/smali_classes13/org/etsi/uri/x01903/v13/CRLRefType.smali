.class public interface abstract Lorg/etsi/uri/x01903/v13/CRLRefType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/CRLRefType;",
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

    const-string v2, "crlreftype4444type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/CRLRefType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/CRLRefType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCRLIdentifier()Lorg/etsi/uri/x01903/v13/CRLIdentifierType;
.end method

.method public abstract addNewDigestAlgAndValue()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
.end method

.method public abstract getCRLIdentifier()Lorg/etsi/uri/x01903/v13/CRLIdentifierType;
.end method

.method public abstract getDigestAlgAndValue()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
.end method

.method public abstract isSetCRLIdentifier()Z
.end method

.method public abstract setCRLIdentifier(Lorg/etsi/uri/x01903/v13/CRLIdentifierType;)V
.end method

.method public abstract setDigestAlgAndValue(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;)V
.end method

.method public abstract unsetCRLIdentifier()V
.end method
