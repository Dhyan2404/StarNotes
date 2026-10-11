.class public interface abstract Lorg/etsi/uri/x01903/v13/IdentifierType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlAnyURI;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/IdentifierType;",
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

    const-string v2, "identifiertype2cb7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/IdentifierType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/IdentifierType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getQualifier()Lorg/etsi/uri/x01903/v13/QualifierType$Enum;
.end method

.method public abstract isSetQualifier()Z
.end method

.method public abstract setQualifier(Lorg/etsi/uri/x01903/v13/QualifierType$Enum;)V
.end method

.method public abstract unsetQualifier()V
.end method

.method public abstract xgetQualifier()Lorg/etsi/uri/x01903/v13/QualifierType;
.end method

.method public abstract xsetQualifier(Lorg/etsi/uri/x01903/v13/QualifierType;)V
.end method
