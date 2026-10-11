.class public interface abstract Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;",
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

    const-string v2, "signedsignaturepropertiestype06abtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/SignedSignaturePropertiesType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSignaturePolicyIdentifier()Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;
.end method

.method public abstract addNewSignatureProductionPlace()Lorg/etsi/uri/x01903/v13/SignatureProductionPlaceType;
.end method

.method public abstract addNewSignerRole()Lorg/etsi/uri/x01903/v13/SignerRoleType;
.end method

.method public abstract addNewSigningCertificate()Lorg/etsi/uri/x01903/v13/CertIDListType;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getSignaturePolicyIdentifier()Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;
.end method

.method public abstract getSignatureProductionPlace()Lorg/etsi/uri/x01903/v13/SignatureProductionPlaceType;
.end method

.method public abstract getSignerRole()Lorg/etsi/uri/x01903/v13/SignerRoleType;
.end method

.method public abstract getSigningCertificate()Lorg/etsi/uri/x01903/v13/CertIDListType;
.end method

.method public abstract getSigningTime()Ljava/util/Calendar;
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetSignaturePolicyIdentifier()Z
.end method

.method public abstract isSetSignatureProductionPlace()Z
.end method

.method public abstract isSetSignerRole()Z
.end method

.method public abstract isSetSigningCertificate()Z
.end method

.method public abstract isSetSigningTime()Z
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setSignaturePolicyIdentifier(Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;)V
.end method

.method public abstract setSignatureProductionPlace(Lorg/etsi/uri/x01903/v13/SignatureProductionPlaceType;)V
.end method

.method public abstract setSignerRole(Lorg/etsi/uri/x01903/v13/SignerRoleType;)V
.end method

.method public abstract setSigningCertificate(Lorg/etsi/uri/x01903/v13/CertIDListType;)V
.end method

.method public abstract setSigningTime(Ljava/util/Calendar;)V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetSignaturePolicyIdentifier()V
.end method

.method public abstract unsetSignatureProductionPlace()V
.end method

.method public abstract unsetSignerRole()V
.end method

.method public abstract unsetSigningCertificate()V
.end method

.method public abstract unsetSigningTime()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xgetSigningTime()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method

.method public abstract xsetSigningTime(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method
