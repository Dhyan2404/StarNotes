.class public interface abstract Lorg/etsi/uri/x01903/v13/CertIDListType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/CertIDListType;",
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

    const-string v2, "certidlisttype488btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/CertIDListType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/CertIDListType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCert()Lorg/etsi/uri/x01903/v13/CertIDType;
.end method

.method public abstract getCertArray(I)Lorg/etsi/uri/x01903/v13/CertIDType;
.end method

.method public abstract getCertArray()[Lorg/etsi/uri/x01903/v13/CertIDType;
.end method

.method public abstract getCertList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/CertIDType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCert(I)Lorg/etsi/uri/x01903/v13/CertIDType;
.end method

.method public abstract removeCert(I)V
.end method

.method public abstract setCertArray(ILorg/etsi/uri/x01903/v13/CertIDType;)V
.end method

.method public abstract setCertArray([Lorg/etsi/uri/x01903/v13/CertIDType;)V
.end method

.method public abstract sizeOfCertArray()I
.end method
