.class public interface abstract Lorg/etsi/uri/x01903/v13/CertIDType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/CertIDType;",
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

    const-string v2, "certidtypee64dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/CertIDType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/CertIDType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCertDigest()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
.end method

.method public abstract addNewIssuerSerial()Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;
.end method

.method public abstract getCertDigest()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
.end method

.method public abstract getIssuerSerial()Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;
.end method

.method public abstract getURI()Ljava/lang/String;
.end method

.method public abstract isSetURI()Z
.end method

.method public abstract setCertDigest(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;)V
.end method

.method public abstract setIssuerSerial(Lorg/w3/x2000/x09/xmldsig/X509IssuerSerialType;)V
.end method

.method public abstract setURI(Ljava/lang/String;)V
.end method

.method public abstract unsetURI()V
.end method

.method public abstract xgetURI()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xsetURI(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
