.class public interface abstract Lorg/etsi/uri/x01903/v14/ValidationDataType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v14/ValidationDataType;",
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

    const-string v2, "validationdatatype2c11type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v14/ValidationDataType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v14/ValidationDataType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCertificateValues()Lorg/etsi/uri/x01903/v13/CertificateValuesType;
.end method

.method public abstract addNewRevocationValues()Lorg/etsi/uri/x01903/v13/RevocationValuesType;
.end method

.method public abstract getCertificateValues()Lorg/etsi/uri/x01903/v13/CertificateValuesType;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getRevocationValues()Lorg/etsi/uri/x01903/v13/RevocationValuesType;
.end method

.method public abstract getURI()Ljava/lang/String;
.end method

.method public abstract isSetCertificateValues()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetRevocationValues()Z
.end method

.method public abstract isSetURI()Z
.end method

.method public abstract setCertificateValues(Lorg/etsi/uri/x01903/v13/CertificateValuesType;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setRevocationValues(Lorg/etsi/uri/x01903/v13/RevocationValuesType;)V
.end method

.method public abstract setURI(Ljava/lang/String;)V
.end method

.method public abstract unsetCertificateValues()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetRevocationValues()V
.end method

.method public abstract unsetURI()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xgetURI()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method

.method public abstract xsetURI(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
