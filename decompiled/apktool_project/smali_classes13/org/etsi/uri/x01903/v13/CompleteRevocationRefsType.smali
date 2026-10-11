.class public interface abstract Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;",
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

    const-string v2, "completerevocationrefstyped8a5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/CompleteRevocationRefsType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCRLRefs()Lorg/etsi/uri/x01903/v13/CRLRefsType;
.end method

.method public abstract addNewOCSPRefs()Lorg/etsi/uri/x01903/v13/OCSPRefsType;
.end method

.method public abstract addNewOtherRefs()Lorg/etsi/uri/x01903/v13/OtherCertStatusRefsType;
.end method

.method public abstract getCRLRefs()Lorg/etsi/uri/x01903/v13/CRLRefsType;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getOCSPRefs()Lorg/etsi/uri/x01903/v13/OCSPRefsType;
.end method

.method public abstract getOtherRefs()Lorg/etsi/uri/x01903/v13/OtherCertStatusRefsType;
.end method

.method public abstract isSetCRLRefs()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetOCSPRefs()Z
.end method

.method public abstract isSetOtherRefs()Z
.end method

.method public abstract setCRLRefs(Lorg/etsi/uri/x01903/v13/CRLRefsType;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setOCSPRefs(Lorg/etsi/uri/x01903/v13/OCSPRefsType;)V
.end method

.method public abstract setOtherRefs(Lorg/etsi/uri/x01903/v13/OtherCertStatusRefsType;)V
.end method

.method public abstract unsetCRLRefs()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetOCSPRefs()V
.end method

.method public abstract unsetOtherRefs()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method
