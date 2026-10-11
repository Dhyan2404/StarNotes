.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/FaceNamesType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/FaceNamesType;",
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

    const-string v2, "facenamestypeb920type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/FaceNamesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/FaceNamesType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewFaceName()Lcom/microsoft/schemas/office/visio/x2012/main/FaceNameType;
.end method

.method public abstract getFaceNameArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/FaceNameType;
.end method

.method public abstract getFaceNameArray()[Lcom/microsoft/schemas/office/visio/x2012/main/FaceNameType;
.end method

.method public abstract getFaceNameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/FaceNameType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewFaceName(I)Lcom/microsoft/schemas/office/visio/x2012/main/FaceNameType;
.end method

.method public abstract removeFaceName(I)V
.end method

.method public abstract setFaceNameArray(ILcom/microsoft/schemas/office/visio/x2012/main/FaceNameType;)V
.end method

.method public abstract setFaceNameArray([Lcom/microsoft/schemas/office/visio/x2012/main/FaceNameType;)V
.end method

.method public abstract sizeOfFaceNameArray()I
.end method
