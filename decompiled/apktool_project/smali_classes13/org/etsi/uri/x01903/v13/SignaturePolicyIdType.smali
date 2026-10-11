.class public interface abstract Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;",
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

    const-string v2, "signaturepolicyidtype0ca1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSigPolicyHash()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
.end method

.method public abstract addNewSigPolicyId()Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;
.end method

.method public abstract addNewSigPolicyQualifiers()Lorg/etsi/uri/x01903/v13/SigPolicyQualifiersListType;
.end method

.method public abstract addNewTransforms()Lorg/w3/x2000/x09/xmldsig/TransformsType;
.end method

.method public abstract getSigPolicyHash()Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;
.end method

.method public abstract getSigPolicyId()Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;
.end method

.method public abstract getSigPolicyQualifiers()Lorg/etsi/uri/x01903/v13/SigPolicyQualifiersListType;
.end method

.method public abstract getTransforms()Lorg/w3/x2000/x09/xmldsig/TransformsType;
.end method

.method public abstract isSetSigPolicyQualifiers()Z
.end method

.method public abstract isSetTransforms()Z
.end method

.method public abstract setSigPolicyHash(Lorg/etsi/uri/x01903/v13/DigestAlgAndValueType;)V
.end method

.method public abstract setSigPolicyId(Lorg/etsi/uri/x01903/v13/ObjectIdentifierType;)V
.end method

.method public abstract setSigPolicyQualifiers(Lorg/etsi/uri/x01903/v13/SigPolicyQualifiersListType;)V
.end method

.method public abstract setTransforms(Lorg/w3/x2000/x09/xmldsig/TransformsType;)V
.end method

.method public abstract unsetSigPolicyQualifiers()V
.end method

.method public abstract unsetTransforms()V
.end method
