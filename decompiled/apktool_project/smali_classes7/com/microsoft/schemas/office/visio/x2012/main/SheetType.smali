.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sheettype25actype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->Factory:Lorg/apache/xmlbeans/impl/schema/AbstractDocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCell()Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
.end method

.method public abstract addNewSection()Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
.end method

.method public abstract addNewTrigger()Lcom/microsoft/schemas/office/visio/x2012/main/TriggerType;
.end method

.method public abstract getCellArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
.end method

.method public abstract getCellArray()[Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
.end method

.method public abstract getCellList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/CellType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFillStyle()J
.end method

.method public abstract getLineStyle()J
.end method

.method public abstract getSectionArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
.end method

.method public abstract getSectionArray()[Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
.end method

.method public abstract getSectionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTextStyle()J
.end method

.method public abstract getTriggerArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/TriggerType;
.end method

.method public abstract getTriggerArray()[Lcom/microsoft/schemas/office/visio/x2012/main/TriggerType;
.end method

.method public abstract getTriggerList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/TriggerType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCell(I)Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
.end method

.method public abstract insertNewSection(I)Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;
.end method

.method public abstract insertNewTrigger(I)Lcom/microsoft/schemas/office/visio/x2012/main/TriggerType;
.end method

.method public abstract isSetFillStyle()Z
.end method

.method public abstract isSetLineStyle()Z
.end method

.method public abstract isSetTextStyle()Z
.end method

.method public abstract removeCell(I)V
.end method

.method public abstract removeSection(I)V
.end method

.method public abstract removeTrigger(I)V
.end method

.method public abstract setCellArray(ILcom/microsoft/schemas/office/visio/x2012/main/CellType;)V
.end method

.method public abstract setCellArray([Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)V
.end method

.method public abstract setFillStyle(J)V
.end method

.method public abstract setLineStyle(J)V
.end method

.method public abstract setSectionArray(ILcom/microsoft/schemas/office/visio/x2012/main/SectionType;)V
.end method

.method public abstract setSectionArray([Lcom/microsoft/schemas/office/visio/x2012/main/SectionType;)V
.end method

.method public abstract setTextStyle(J)V
.end method

.method public abstract setTriggerArray(ILcom/microsoft/schemas/office/visio/x2012/main/TriggerType;)V
.end method

.method public abstract setTriggerArray([Lcom/microsoft/schemas/office/visio/x2012/main/TriggerType;)V
.end method

.method public abstract sizeOfCellArray()I
.end method

.method public abstract sizeOfSectionArray()I
.end method

.method public abstract sizeOfTriggerArray()I
.end method

.method public abstract unsetFillStyle()V
.end method

.method public abstract unsetLineStyle()V
.end method

.method public abstract unsetTextStyle()V
.end method

.method public abstract xgetFillStyle()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetLineStyle()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetTextStyle()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetFillStyle(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetLineStyle(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetTextStyle(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
