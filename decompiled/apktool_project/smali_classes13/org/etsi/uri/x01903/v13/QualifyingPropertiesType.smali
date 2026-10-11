.class public interface abstract Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;",
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

    const-string v2, "qualifyingpropertiestype9e16type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/QualifyingPropertiesType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSignedProperties()Lorg/etsi/uri/x01903/v13/SignedPropertiesType;
.end method

.method public abstract addNewUnsignedProperties()Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getSignedProperties()Lorg/etsi/uri/x01903/v13/SignedPropertiesType;
.end method

.method public abstract getTarget()Ljava/lang/String;
.end method

.method public abstract getUnsignedProperties()Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetSignedProperties()Z
.end method

.method public abstract isSetUnsignedProperties()Z
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setSignedProperties(Lorg/etsi/uri/x01903/v13/SignedPropertiesType;)V
.end method

.method public abstract setTarget(Ljava/lang/String;)V
.end method

.method public abstract setUnsignedProperties(Lorg/etsi/uri/x01903/v13/UnsignedPropertiesType;)V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetSignedProperties()V
.end method

.method public abstract unsetUnsignedProperties()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xgetTarget()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method

.method public abstract xsetTarget(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
