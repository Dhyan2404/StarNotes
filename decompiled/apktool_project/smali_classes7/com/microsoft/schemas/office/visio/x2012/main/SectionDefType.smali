.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/SectionDefType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/SectionDefType;",
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

    const-string v2, "sectiondeftype4f59type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/SectionDefType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/SectionDefType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCellDef()Lcom/microsoft/schemas/office/visio/x2012/main/CellDefType;
.end method

.method public abstract addNewRowDef()Lcom/microsoft/schemas/office/visio/x2012/main/RowDefType;
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

.method public abstract getN()Ljava/lang/String;
.end method

.method public abstract getRowDef()Lcom/microsoft/schemas/office/visio/x2012/main/RowDefType;
.end method

.method public abstract getS()S
.end method

.method public abstract getT()Ljava/lang/String;
.end method

.method public abstract insertNewCellDef(I)Lcom/microsoft/schemas/office/visio/x2012/main/CellDefType;
.end method

.method public abstract isSetRowDef()Z
.end method

.method public abstract isSetS()Z
.end method

.method public abstract isSetT()Z
.end method

.method public abstract removeCellDef(I)V
.end method

.method public abstract setCellDefArray(ILcom/microsoft/schemas/office/visio/x2012/main/CellDefType;)V
.end method

.method public abstract setCellDefArray([Lcom/microsoft/schemas/office/visio/x2012/main/CellDefType;)V
.end method

.method public abstract setN(Ljava/lang/String;)V
.end method

.method public abstract setRowDef(Lcom/microsoft/schemas/office/visio/x2012/main/RowDefType;)V
.end method

.method public abstract setS(S)V
.end method

.method public abstract setT(Ljava/lang/String;)V
.end method

.method public abstract sizeOfCellDefArray()I
.end method

.method public abstract unsetRowDef()V
.end method

.method public abstract unsetS()V
.end method

.method public abstract unsetT()V
.end method

.method public abstract xgetN()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetS()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetT()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetN(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetS(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetT(Lorg/apache/xmlbeans/XmlString;)V
.end method
