.class public interface abstract Lorg/w3/x2000/x09/xmldsig/SignaturePropertiesType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/w3/x2000/x09/xmldsig/SignaturePropertiesType;",
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

    const-string v2, "signaturepropertiestype884ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/SignaturePropertiesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/SignaturePropertiesType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSignatureProperty()Lorg/w3/x2000/x09/xmldsig/SignaturePropertyType;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getSignaturePropertyArray(I)Lorg/w3/x2000/x09/xmldsig/SignaturePropertyType;
.end method

.method public abstract getSignaturePropertyArray()[Lorg/w3/x2000/x09/xmldsig/SignaturePropertyType;
.end method

.method public abstract getSignaturePropertyList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/w3/x2000/x09/xmldsig/SignaturePropertyType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewSignatureProperty(I)Lorg/w3/x2000/x09/xmldsig/SignaturePropertyType;
.end method

.method public abstract isSetId()Z
.end method

.method public abstract removeSignatureProperty(I)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setSignaturePropertyArray(ILorg/w3/x2000/x09/xmldsig/SignaturePropertyType;)V
.end method

.method public abstract setSignaturePropertyArray([Lorg/w3/x2000/x09/xmldsig/SignaturePropertyType;)V
.end method

.method public abstract sizeOfSignaturePropertyArray()I
.end method

.method public abstract unsetId()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method
