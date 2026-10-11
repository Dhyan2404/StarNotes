.class public interface abstract Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;",
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

    const-string v2, "signaturepolicyidentifiertype80aftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/SignaturePolicyIdentifierType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSignaturePolicyId()Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;
.end method

.method public abstract addNewSignaturePolicyImplied()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getSignaturePolicyId()Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;
.end method

.method public abstract getSignaturePolicyImplied()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract isSetSignaturePolicyId()Z
.end method

.method public abstract isSetSignaturePolicyImplied()Z
.end method

.method public abstract setSignaturePolicyId(Lorg/etsi/uri/x01903/v13/SignaturePolicyIdType;)V
.end method

.method public abstract setSignaturePolicyImplied(Lorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract unsetSignaturePolicyId()V
.end method

.method public abstract unsetSignaturePolicyImplied()V
.end method
