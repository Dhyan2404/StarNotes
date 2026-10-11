.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;",
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

    const-string v2, "mastertype2d97type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/MasterType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewIcon()Lcom/microsoft/schemas/office/visio/x2012/main/IconType;
.end method

.method public abstract addNewPageSheet()Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;
.end method

.method public abstract addNewRel()Lcom/microsoft/schemas/office/visio/x2012/main/RelType;
.end method

.method public abstract getAlignName()I
.end method

.method public abstract getBaseID()Ljava/lang/String;
.end method

.method public abstract getHidden()Z
.end method

.method public abstract getID()J
.end method

.method public abstract getIcon()Lcom/microsoft/schemas/office/visio/x2012/main/IconType;
.end method

.method public abstract getIconSize()I
.end method

.method public abstract getIconUpdate()Z
.end method

.method public abstract getIsCustomName()Z
.end method

.method public abstract getIsCustomNameU()Z
.end method

.method public abstract getMasterType()I
.end method

.method public abstract getMatchByName()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameU()Ljava/lang/String;
.end method

.method public abstract getPageSheet()Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;
.end method

.method public abstract getPatternFlags()I
.end method

.method public abstract getPrompt()Ljava/lang/String;
.end method

.method public abstract getRel()Lcom/microsoft/schemas/office/visio/x2012/main/RelType;
.end method

.method public abstract getUniqueID()Ljava/lang/String;
.end method

.method public abstract isSetAlignName()Z
.end method

.method public abstract isSetBaseID()Z
.end method

.method public abstract isSetHidden()Z
.end method

.method public abstract isSetIcon()Z
.end method

.method public abstract isSetIconSize()Z
.end method

.method public abstract isSetIconUpdate()Z
.end method

.method public abstract isSetIsCustomName()Z
.end method

.method public abstract isSetIsCustomNameU()Z
.end method

.method public abstract isSetMasterType()Z
.end method

.method public abstract isSetMatchByName()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNameU()Z
.end method

.method public abstract isSetPageSheet()Z
.end method

.method public abstract isSetPatternFlags()Z
.end method

.method public abstract isSetPrompt()Z
.end method

.method public abstract isSetUniqueID()Z
.end method

.method public abstract setAlignName(I)V
.end method

.method public abstract setBaseID(Ljava/lang/String;)V
.end method

.method public abstract setHidden(Z)V
.end method

.method public abstract setID(J)V
.end method

.method public abstract setIcon(Lcom/microsoft/schemas/office/visio/x2012/main/IconType;)V
.end method

.method public abstract setIconSize(I)V
.end method

.method public abstract setIconUpdate(Z)V
.end method

.method public abstract setIsCustomName(Z)V
.end method

.method public abstract setIsCustomNameU(Z)V
.end method

.method public abstract setMasterType(I)V
.end method

.method public abstract setMatchByName(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNameU(Ljava/lang/String;)V
.end method

.method public abstract setPageSheet(Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;)V
.end method

.method public abstract setPatternFlags(I)V
.end method

.method public abstract setPrompt(Ljava/lang/String;)V
.end method

.method public abstract setRel(Lcom/microsoft/schemas/office/visio/x2012/main/RelType;)V
.end method

.method public abstract setUniqueID(Ljava/lang/String;)V
.end method

.method public abstract unsetAlignName()V
.end method

.method public abstract unsetBaseID()V
.end method

.method public abstract unsetHidden()V
.end method

.method public abstract unsetIcon()V
.end method

.method public abstract unsetIconSize()V
.end method

.method public abstract unsetIconUpdate()V
.end method

.method public abstract unsetIsCustomName()V
.end method

.method public abstract unsetIsCustomNameU()V
.end method

.method public abstract unsetMasterType()V
.end method

.method public abstract unsetMatchByName()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNameU()V
.end method

.method public abstract unsetPageSheet()V
.end method

.method public abstract unsetPatternFlags()V
.end method

.method public abstract unsetPrompt()V
.end method

.method public abstract unsetUniqueID()V
.end method

.method public abstract xgetAlignName()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetBaseID()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetHidden()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetIconSize()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetIconUpdate()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIsCustomName()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIsCustomNameU()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMasterType()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetMatchByName()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetNameU()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPatternFlags()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetPrompt()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetUniqueID()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAlignName(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetBaseID(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetHidden(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetIconSize(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetIconUpdate(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIsCustomName(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIsCustomNameU(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMasterType(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetMatchByName(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetNameU(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPatternFlags(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetPrompt(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetUniqueID(Lorg/apache/xmlbeans/XmlString;)V
.end method
