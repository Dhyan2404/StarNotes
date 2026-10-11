.class public interface abstract Lorg/etsi/uri/x01903/v13/OtherCertStatusValuesType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/etsi/uri/x01903/v13/OtherCertStatusValuesType;",
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

    const-string v2, "othercertstatusvaluestypebf44type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/OtherCertStatusValuesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/OtherCertStatusValuesType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewOtherValue()Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract getOtherValueArray(I)Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract getOtherValueArray()[Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract getOtherValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/etsi/uri/x01903/v13/AnyType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewOtherValue(I)Lorg/etsi/uri/x01903/v13/AnyType;
.end method

.method public abstract removeOtherValue(I)V
.end method

.method public abstract setOtherValueArray(ILorg/etsi/uri/x01903/v13/AnyType;)V
.end method

.method public abstract setOtherValueArray([Lorg/etsi/uri/x01903/v13/AnyType;)V
.end method

.method public abstract sizeOfOtherValueArray()I
.end method
