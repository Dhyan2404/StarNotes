.class public interface abstract Lcom/microsoft/schemas/vml/CTHandles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/vml/CTHandles;",
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

    const-string v2, "cthandles5c1ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/CTHandles;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/CTHandles;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewH()Lcom/microsoft/schemas/vml/CTH;
.end method

.method public abstract getHArray(I)Lcom/microsoft/schemas/vml/CTH;
.end method

.method public abstract getHArray()[Lcom/microsoft/schemas/vml/CTH;
.end method

.method public abstract getHList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/vml/CTH;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewH(I)Lcom/microsoft/schemas/vml/CTH;
.end method

.method public abstract removeH(I)V
.end method

.method public abstract setHArray(ILcom/microsoft/schemas/vml/CTH;)V
.end method

.method public abstract setHArray([Lcom/microsoft/schemas/vml/CTH;)V
.end method

.method public abstract sizeOfHArray()I
.end method
