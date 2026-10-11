.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/schemas/office/visio/x2012/main/SheetType;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;",
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

    const-string v2, "shapesheettype59bbtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/ShapeSheetType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewData1()Lcom/microsoft/schemas/office/visio/x2012/main/DataType;
.end method

.method public abstract addNewData2()Lcom/microsoft/schemas/office/visio/x2012/main/DataType;
.end method

.method public abstract addNewData3()Lcom/microsoft/schemas/office/visio/x2012/main/DataType;
.end method

.method public abstract addNewForeignData()Lcom/microsoft/schemas/office/visio/x2012/main/ForeignDataType;
.end method

.method public abstract addNewShapes()Lcom/microsoft/schemas/office/visio/x2012/main/ShapesType;
.end method

.method public abstract addNewText()Lcom/microsoft/schemas/office/visio/x2012/main/TextType;
.end method

.method public abstract getData1()Lcom/microsoft/schemas/office/visio/x2012/main/DataType;
.end method

.method public abstract getData2()Lcom/microsoft/schemas/office/visio/x2012/main/DataType;
.end method

.method public abstract getData3()Lcom/microsoft/schemas/office/visio/x2012/main/DataType;
.end method

.method public abstract getDel()Z
.end method

.method public abstract getForeignData()Lcom/microsoft/schemas/office/visio/x2012/main/ForeignDataType;
.end method

.method public abstract getID()J
.end method

.method public abstract getIsCustomName()Z
.end method

.method public abstract getIsCustomNameU()Z
.end method

.method public abstract getMaster()J
.end method

.method public abstract getMasterShape()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameU()Ljava/lang/String;
.end method

.method public abstract getOriginalID()J
.end method

.method public abstract getShapes()Lcom/microsoft/schemas/office/visio/x2012/main/ShapesType;
.end method

.method public abstract getText()Lcom/microsoft/schemas/office/visio/x2012/main/TextType;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUniqueID()Ljava/lang/String;
.end method

.method public abstract isSetData1()Z
.end method

.method public abstract isSetData2()Z
.end method

.method public abstract isSetData3()Z
.end method

.method public abstract isSetDel()Z
.end method

.method public abstract isSetForeignData()Z
.end method

.method public abstract isSetIsCustomName()Z
.end method

.method public abstract isSetIsCustomNameU()Z
.end method

.method public abstract isSetMaster()Z
.end method

.method public abstract isSetMasterShape()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNameU()Z
.end method

.method public abstract isSetOriginalID()Z
.end method

.method public abstract isSetShapes()Z
.end method

.method public abstract isSetText()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetUniqueID()Z
.end method

.method public abstract setData1(Lcom/microsoft/schemas/office/visio/x2012/main/DataType;)V
.end method

.method public abstract setData2(Lcom/microsoft/schemas/office/visio/x2012/main/DataType;)V
.end method

.method public abstract setData3(Lcom/microsoft/schemas/office/visio/x2012/main/DataType;)V
.end method

.method public abstract setDel(Z)V
.end method

.method public abstract setForeignData(Lcom/microsoft/schemas/office/visio/x2012/main/ForeignDataType;)V
.end method

.method public abstract setID(J)V
.end method

.method public abstract setIsCustomName(Z)V
.end method

.method public abstract setIsCustomNameU(Z)V
.end method

.method public abstract setMaster(J)V
.end method

.method public abstract setMasterShape(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNameU(Ljava/lang/String;)V
.end method

.method public abstract setOriginalID(J)V
.end method

.method public abstract setShapes(Lcom/microsoft/schemas/office/visio/x2012/main/ShapesType;)V
.end method

.method public abstract setText(Lcom/microsoft/schemas/office/visio/x2012/main/TextType;)V
.end method

.method public abstract setType(Ljava/lang/String;)V
.end method

.method public abstract setUniqueID(Ljava/lang/String;)V
.end method

.method public abstract unsetData1()V
.end method

.method public abstract unsetData2()V
.end method

.method public abstract unsetData3()V
.end method

.method public abstract unsetDel()V
.end method

.method public abstract unsetForeignData()V
.end method

.method public abstract unsetIsCustomName()V
.end method

.method public abstract unsetIsCustomNameU()V
.end method

.method public abstract unsetMaster()V
.end method

.method public abstract unsetMasterShape()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNameU()V
.end method

.method public abstract unsetOriginalID()V
.end method

.method public abstract unsetShapes()V
.end method

.method public abstract unsetText()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetUniqueID()V
.end method

.method public abstract xgetDel()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetIsCustomName()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIsCustomNameU()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMaster()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMasterShape()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetNameU()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetOriginalID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetType()Lorg/apache/xmlbeans/XmlToken;
.end method

.method public abstract xgetUniqueID()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetDel(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetIsCustomName(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIsCustomNameU(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMaster(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMasterShape(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetNameU(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetOriginalID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetType(Lorg/apache/xmlbeans/XmlToken;)V
.end method

.method public abstract xsetUniqueID(Lorg/apache/xmlbeans/XmlString;)V
.end method
