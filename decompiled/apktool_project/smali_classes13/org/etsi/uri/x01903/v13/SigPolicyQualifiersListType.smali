.class public interface abstract Lorg/etsi/uri/x01903/v13/SigPolicyQualifiersListType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/SigPolicyQualifiersListType;",
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

    const-string v2, "sigpolicyqualifierslisttype3266type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/SigPolicyQualifiersListType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/SigPolicyQualifiersListType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSigPolicyQualifier()Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract getSigPolicyQualifierArray(I)Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract getSigPolicyQualifierArray()[Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract getSigPolicyQualifierList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/AnyType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewSigPolicyQualifier(I)Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract removeSigPolicyQualifier(I)V
.end method

.method public abstract setSigPolicyQualifierArray(ILorg/etsi/uri/x01903/v13/AnyType;)V
.end method

.method public abstract setSigPolicyQualifierArray([Lorg/etsi/uri/x01903/v13/AnyType;)V
.end method

.method public abstract sizeOfSigPolicyQualifierArray()I
.end method
