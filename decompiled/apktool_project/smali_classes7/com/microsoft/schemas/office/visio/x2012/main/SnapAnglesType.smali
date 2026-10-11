.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/SnapAnglesType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/SnapAnglesType;",
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

    const-string v2, "snapanglestype8f0ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/SnapAnglesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/SnapAnglesType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSnapAngle()Lcom/microsoft/schemas/office/visio/x2012/main/SnapAngleType;
.end method

.method public abstract getSnapAngleArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/SnapAngleType;
.end method

.method public abstract getSnapAngleArray()[Lcom/microsoft/schemas/office/visio/x2012/main/SnapAngleType;
.end method

.method public abstract getSnapAngleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/SnapAngleType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewSnapAngle(I)Lcom/microsoft/schemas/office/visio/x2012/main/SnapAngleType;
.end method

.method public abstract removeSnapAngle(I)V
.end method

.method public abstract setSnapAngleArray(ILcom/microsoft/schemas/office/visio/x2012/main/SnapAngleType;)V
.end method

.method public abstract setSnapAngleArray([Lcom/microsoft/schemas/office/visio/x2012/main/SnapAngleType;)V
.end method

.method public abstract sizeOfSnapAngleArray()I
.end method
