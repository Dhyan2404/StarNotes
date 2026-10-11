.class public interface abstract Lorg/w3/x2000/x09/xmldsig/SignatureType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/w3/x2000/x09/xmldsig/SignatureType;",
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

    const-string v2, "signaturetype0a3ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/SignatureType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/w3/x2000/x09/xmldsig/SignatureType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewKeyInfo()Lorg/w3/x2000/x09/xmldsig/KeyInfoType;
.end method

.method public abstract addNewObject()Lorg/w3/x2000/x09/xmldsig/ObjectType;
.end method

.method public abstract addNewSignatureValue()Lorg/w3/x2000/x09/xmldsig/SignatureValueType;
.end method

.method public abstract addNewSignedInfo()Lorg/w3/x2000/x09/xmldsig/SignedInfoType;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getKeyInfo()Lorg/w3/x2000/x09/xmldsig/KeyInfoType;
.end method

.method public abstract getObjectArray(I)Lorg/w3/x2000/x09/xmldsig/ObjectType;
.end method

.method public abstract getObjectArray()[Lorg/w3/x2000/x09/xmldsig/ObjectType;
.end method

.method public abstract getObjectList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/w3/x2000/x09/xmldsig/ObjectType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSignatureValue()Lorg/w3/x2000/x09/xmldsig/SignatureValueType;
.end method

.method public abstract getSignedInfo()Lorg/w3/x2000/x09/xmldsig/SignedInfoType;
.end method

.method public abstract insertNewObject(I)Lorg/w3/x2000/x09/xmldsig/ObjectType;
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetKeyInfo()Z
.end method

.method public abstract removeObject(I)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setKeyInfo(Lorg/w3/x2000/x09/xmldsig/KeyInfoType;)V
.end method

.method public abstract setObjectArray(ILorg/w3/x2000/x09/xmldsig/ObjectType;)V
.end method

.method public abstract setObjectArray([Lorg/w3/x2000/x09/xmldsig/ObjectType;)V
.end method

.method public abstract setSignatureValue(Lorg/w3/x2000/x09/xmldsig/SignatureValueType;)V
.end method

.method public abstract setSignedInfo(Lorg/w3/x2000/x09/xmldsig/SignedInfoType;)V
.end method

.method public abstract sizeOfObjectArray()I
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetKeyInfo()V
.end method

.method public abstract xgetId()Lorg/apache/xmlbeans/XmlID;
.end method

.method public abstract xsetId(Lorg/apache/xmlbeans/XmlID;)V
.end method
