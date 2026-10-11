.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/RowType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/RowType;",
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

    const-string v2, "rowtype03d1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/RowType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCell()Lcom/microsoft/schemas/office/visio/x2012/main/CellType;
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

.method public abstract getDel()Z
.end method

.method public abstract getIX()J
.end method

.method public abstract getLocalName()Ljava/lang/String;
.end method

.method public abstract getN()Ljava/lang/String;
.end method

.method public abstract getT()Ljava/lang/String;
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

.method public abstract insertNewTrigger(I)Lcom/microsoft/schemas/office/visio/x2012/main/TriggerType;
.end method

.method public abstract isSetDel()Z
.end method

.method public abstract isSetIX()Z
.end method

.method public abstract isSetLocalName()Z
.end method

.method public abstract isSetN()Z
.end method

.method public abstract isSetT()Z
.end method

.method public abstract removeCell(I)V
.end method

.method public abstract removeTrigger(I)V
.end method

.method public abstract setCellArray(ILcom/microsoft/schemas/office/visio/x2012/main/CellType;)V
.end method

.method public abstract setCellArray([Lcom/microsoft/schemas/office/visio/x2012/main/CellType;)V
.end method

.method public abstract setDel(Z)V
.end method

.method public abstract setIX(J)V
.end method

.method public abstract setLocalName(Ljava/lang/String;)V
.end method

.method public abstract setN(Ljava/lang/String;)V
.end method

.method public abstract setT(Ljava/lang/String;)V
.end method

.method public abstract setTriggerArray(ILcom/microsoft/schemas/office/visio/x2012/main/TriggerType;)V
.end method

.method public abstract setTriggerArray([Lcom/microsoft/schemas/office/visio/x2012/main/TriggerType;)V
.end method

.method public abstract sizeOfCellArray()I
.end method

.method public abstract sizeOfTriggerArray()I
.end method

.method public abstract unsetDel()V
.end method

.method public abstract unsetIX()V
.end method

.method public abstract unsetLocalName()V
.end method

.method public abstract unsetN()V
.end method

.method public abstract unsetT()V
.end method

.method public abstract xgetDel()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIX()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetLocalName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetN()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetT()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetDel(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIX(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetLocalName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetN(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetT(Lorg/apache/xmlbeans/XmlString;)V
.end method
