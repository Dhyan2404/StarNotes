.class public interface abstract Lcom/microsoft/schemas/office/office/CTRules;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/office/CTRules;",
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

    const-string v2, "ctrulesf8b0type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/CTRules;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/CTRules;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewR()Lcom/microsoft/schemas/office/office/CTR;
.end method

.method public abstract getExt()Lcom/microsoft/schemas/vml/STExt$Enum;
.end method

.method public abstract getRArray(I)Lcom/microsoft/schemas/office/office/CTR;
.end method

.method public abstract getRArray()[Lcom/microsoft/schemas/office/office/CTR;
.end method

.method public abstract getRList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/office/CTR;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewR(I)Lcom/microsoft/schemas/office/office/CTR;
.end method

.method public abstract isSetExt()Z
.end method

.method public abstract removeR(I)V
.end method

.method public abstract setExt(Lcom/microsoft/schemas/vml/STExt$Enum;)V
.end method

.method public abstract setRArray(ILcom/microsoft/schemas/office/office/CTR;)V
.end method

.method public abstract setRArray([Lcom/microsoft/schemas/office/office/CTR;)V
.end method

.method public abstract sizeOfRArray()I
.end method

.method public abstract unsetExt()V
.end method

.method public abstract xgetExt()Lcom/microsoft/schemas/vml/STExt;
.end method

.method public abstract xsetExt(Lcom/microsoft/schemas/vml/STExt;)V
.end method
