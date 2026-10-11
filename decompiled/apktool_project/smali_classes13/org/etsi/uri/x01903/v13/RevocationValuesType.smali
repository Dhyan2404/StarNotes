.class public interface abstract Lorg/etsi/uri/x01903/v13/RevocationValuesType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/RevocationValuesType;",
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

    const-string v2, "revocationvaluestype9a6etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/RevocationValuesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/RevocationValuesType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCRLValues()Lorg/etsi/uri/x01903/v13/CRLValuesType;
.end method

.method public abstract addNewOCSPValues()Lorg/etsi/uri/x01903/v13/OCSPValuesType;
.end method

.method public abstract addNewOtherValues()Lorg/etsi/uri/x01903/v13/OtherCertStatusValuesType;
.end method

.method public abstract getCRLValues()Lorg/etsi/uri/x01903/v13/CRLValuesType;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getOCSPValues()Lorg/etsi/uri/x01903/v13/OCSPValuesType;
.end method

.method public abstract getOtherValues()Lorg/etsi/uri/x01903/v13/OtherCertStatusValuesType;
.end method

.method public abstract isSetCRLValues()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetOCSPValues()Z
.end method

.method public abstract isSetOtherValues()Z
.end method

.method public abstract setCRLValues(Lorg/etsi/uri/x01903/v13/CRLValuesType;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setOCSPValues(Lorg/etsi/uri/x01903/v13/OCSPValuesType;)V
.end method

.method public abstract setOtherValues(Lorg/etsi/uri/x01903/v13/OtherCertStatusValuesType;)V
.end method

.method public abstract unsetCRLValues()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetOCSPValues()V
.end method

.method public abstract unsetOtherValues()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method
