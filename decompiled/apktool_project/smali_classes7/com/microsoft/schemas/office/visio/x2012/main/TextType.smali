.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/TextType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/TextType;",
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

    const-string v2, "texttyped2ectype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/TextType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/TextType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCp()Lcom/microsoft/schemas/office/visio/x2012/main/CpType;
.end method

.method public abstract addNewFld()Lcom/microsoft/schemas/office/visio/x2012/main/FldType;
.end method

.method public abstract addNewPp()Lcom/microsoft/schemas/office/visio/x2012/main/PpType;
.end method

.method public abstract addNewTp()Lcom/microsoft/schemas/office/visio/x2012/main/TpType;
.end method

.method public abstract getCpArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/CpType;
.end method

.method public abstract getCpArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CpType;
.end method

.method public abstract getCpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/CpType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFldArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/FldType;
.end method

.method public abstract getFldArray()[Lcom/microsoft/schemas/office/visio/x2012/main/FldType;
.end method

.method public abstract getFldList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/FldType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPpArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/PpType;
.end method

.method public abstract getPpArray()[Lcom/microsoft/schemas/office/visio/x2012/main/PpType;
.end method

.method public abstract getPpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/PpType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTpArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/TpType;
.end method

.method public abstract getTpArray()[Lcom/microsoft/schemas/office/visio/x2012/main/TpType;
.end method

.method public abstract getTpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/TpType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCp(I)Lcom/microsoft/schemas/office/visio/x2012/main/CpType;
.end method

.method public abstract insertNewFld(I)Lcom/microsoft/schemas/office/visio/x2012/main/FldType;
.end method

.method public abstract insertNewPp(I)Lcom/microsoft/schemas/office/visio/x2012/main/PpType;
.end method

.method public abstract insertNewTp(I)Lcom/microsoft/schemas/office/visio/x2012/main/TpType;
.end method

.method public abstract removeCp(I)V
.end method

.method public abstract removeFld(I)V
.end method

.method public abstract removePp(I)V
.end method

.method public abstract removeTp(I)V
.end method

.method public abstract setCpArray(ILcom/microsoft/schemas/office/visio/x2012/main/CpType;)V
.end method

.method public abstract setCpArray([Lcom/microsoft/schemas/office/visio/x2012/main/CpType;)V
.end method

.method public abstract setFldArray(ILcom/microsoft/schemas/office/visio/x2012/main/FldType;)V
.end method

.method public abstract setFldArray([Lcom/microsoft/schemas/office/visio/x2012/main/FldType;)V
.end method

.method public abstract setPpArray(ILcom/microsoft/schemas/office/visio/x2012/main/PpType;)V
.end method

.method public abstract setPpArray([Lcom/microsoft/schemas/office/visio/x2012/main/PpType;)V
.end method

.method public abstract setTpArray(ILcom/microsoft/schemas/office/visio/x2012/main/TpType;)V
.end method

.method public abstract setTpArray([Lcom/microsoft/schemas/office/visio/x2012/main/TpType;)V
.end method

.method public abstract sizeOfCpArray()I
.end method

.method public abstract sizeOfFldArray()I
.end method

.method public abstract sizeOfPpArray()I
.end method

.method public abstract sizeOfTpArray()I
.end method
