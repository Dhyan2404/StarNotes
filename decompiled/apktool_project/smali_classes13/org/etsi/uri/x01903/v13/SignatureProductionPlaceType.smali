.class public interface abstract Lorg/etsi/uri/x01903/v13/SignatureProductionPlaceType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/SignatureProductionPlaceType;",
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

    const-string v2, "signatureproductionplacetype9684type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/SignatureProductionPlaceType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/SignatureProductionPlaceType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getCity()Ljava/lang/String;
.end method

.method public abstract getCountryName()Ljava/lang/String;
.end method

.method public abstract getPostalCode()Ljava/lang/String;
.end method

.method public abstract getStateOrProvince()Ljava/lang/String;
.end method

.method public abstract isSetCity()Z
.end method

.method public abstract isSetCountryName()Z
.end method

.method public abstract isSetPostalCode()Z
.end method

.method public abstract isSetStateOrProvince()Z
.end method

.method public abstract setCity(Ljava/lang/String;)V
.end method

.method public abstract setCountryName(Ljava/lang/String;)V
.end method

.method public abstract setPostalCode(Ljava/lang/String;)V
.end method

.method public abstract setStateOrProvince(Ljava/lang/String;)V
.end method

.method public abstract unsetCity()V
.end method

.method public abstract unsetCountryName()V
.end method

.method public abstract unsetPostalCode()V
.end method

.method public abstract unsetStateOrProvince()V
.end method

.method public abstract xgetCity()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCountryName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPostalCode()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetStateOrProvince()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetCity(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCountryName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPostalCode(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetStateOrProvince(Lorg/apache/xmlbeans/XmlString;)V
.end method
