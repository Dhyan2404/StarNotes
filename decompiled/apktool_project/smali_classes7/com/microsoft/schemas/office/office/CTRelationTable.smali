.class public interface abstract Lcom/microsoft/schemas/office/office/CTRelationTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTRelationTable;",
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

    const-string v2, "ctrelationtable9cebtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTRelationTable;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTRelationTable;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewRel()Lcom/microsoft/schemas/office/office/CTRelation;
.end method

.method public abstract getExt()Lcom/microsoft/schemas/vml/STExt$Enum;
.end method

.method public abstract getRelArray(I)Lcom/microsoft/schemas/office/office/CTRelation;
.end method

.method public abstract getRelArray()[Lcom/microsoft/schemas/office/office/CTRelation;
.end method

.method public abstract getRelList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/office/CTRelation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewRel(I)Lcom/microsoft/schemas/office/office/CTRelation;
.end method

.method public abstract isSetExt()Z
.end method

.method public abstract removeRel(I)V
.end method

.method public abstract setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V
.end method

.method public abstract setRelArray(ILcom/microsoft/schemas/office/office/CTRelation;)V
.end method

.method public abstract setRelArray([Lcom/microsoft/schemas/office/office/CTRelation;)V
.end method

.method public abstract sizeOfRelArray()I
.end method

.method public abstract unsetExt()V
.end method

.method public abstract xgetExt()Lcom/microsoft/schemas/vml/STExt;
.end method

.method public abstract xsetExt(Lcom/microsoft/schemas/vml/STExt;)V
.end method
