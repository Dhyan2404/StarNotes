.class public interface abstract Lorg/etsi/uri/x01903/v13/CertificateValuesType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/CertificateValuesType;",
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

    const-string v2, "certificatevaluestype5c75type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/CertificateValuesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/CertificateValuesType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewEncapsulatedX509Certificate()Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
.end method

.method public abstract addNewOtherCertificate()Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract getEncapsulatedX509CertificateArray(I)Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
.end method

.method public abstract getEncapsulatedX509CertificateArray()[Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
.end method

.method public abstract getEncapsulatedX509CertificateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getOtherCertificateArray(I)Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract getOtherCertificateArray()[Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract getOtherCertificateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/AnyType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewEncapsulatedX509Certificate(I)Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;
.end method

.method public abstract insertNewOtherCertificate(I)Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract isSetId()Z
.end method

.method public abstract removeEncapsulatedX509Certificate(I)V
.end method

.method public abstract removeOtherCertificate(I)V
.end method

.method public abstract setEncapsulatedX509CertificateArray(ILorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;)V
.end method

.method public abstract setEncapsulatedX509CertificateArray([Lorg/etsi/uri/x01903/v13/EncapsulatedPKIDataType;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setOtherCertificateArray(ILorg/etsi/uri/x01903/v13/AnyType;)V
.end method

.method public abstract setOtherCertificateArray([Lorg/etsi/uri/x01903/v13/AnyType;)V
.end method

.method public abstract sizeOfEncapsulatedX509CertificateArray()I
.end method

.method public abstract sizeOfOtherCertificateArray()I
.end method

.method public abstract unsetId()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method
