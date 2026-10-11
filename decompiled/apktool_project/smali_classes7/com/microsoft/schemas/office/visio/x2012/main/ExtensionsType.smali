.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/ExtensionsType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/ExtensionsType;",
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

    const-string v2, "extensionstype1ca5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/ExtensionsType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/ExtensionsType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCellDef()Lcom/microsoft/schemas/office/visio/x2012/main/CellDefType;
.end method

.method public abstract addNewFunctionDef()Lcom/microsoft/schemas/office/visio/x2012/main/FunctionDefType;
.end method

.method public abstract addNewSectionDef()Lcom/microsoft/schemas/office/visio/x2012/main/SectionDefType;
.end method

.method public abstract getCellDefArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/CellDefType;
.end method

.method public abstract getCellDefArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellDefType;
.end method

.method public abstract getCellDefList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/CellDefType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFunctionDefArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/FunctionDefType;
.end method

.method public abstract getFunctionDefArray()[Lcom/microsoft/schemas/office/visio/x2012/main/FunctionDefType;
.end method

.method public abstract getFunctionDefList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/FunctionDefType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSectionDefArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/SectionDefType;
.end method

.method public abstract getSectionDefArray()[Lcom/microsoft/schemas/office/visio/x2012/main/SectionDefType;
.end method

.method public abstract getSectionDefList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/SectionDefType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCellDef(I)Lcom/microsoft/schemas/office/visio/x2012/main/CellDefType;
.end method

.method public abstract insertNewFunctionDef(I)Lcom/microsoft/schemas/office/visio/x2012/main/FunctionDefType;
.end method

.method public abstract insertNewSectionDef(I)Lcom/microsoft/schemas/office/visio/x2012/main/SectionDefType;
.end method

.method public abstract removeCellDef(I)V
.end method

.method public abstract removeFunctionDef(I)V
.end method

.method public abstract removeSectionDef(I)V
.end method

.method public abstract setCellDefArray(ILcom/microsoft/schemas/office/visio/x2012/main/CellDefType;)V
.end method

.method public abstract setCellDefArray([Lcom/microsoft/schemas/office/visio/x2012/main/CellDefType;)V
.end method

.method public abstract setFunctionDefArray(ILcom/microsoft/schemas/office/visio/x2012/main/FunctionDefType;)V
.end method

.method public abstract setFunctionDefArray([Lcom/microsoft/schemas/office/visio/x2012/main/FunctionDefType;)V
.end method

.method public abstract setSectionDefArray(ILcom/microsoft/schemas/office/visio/x2012/main/SectionDefType;)V
.end method

.method public abstract setSectionDefArray([Lcom/microsoft/schemas/office/visio/x2012/main/SectionDefType;)V
.end method

.method public abstract sizeOfCellDefArray()I
.end method

.method public abstract sizeOfFunctionDefArray()I
.end method

.method public abstract sizeOfSectionDefArray()I
.end method
