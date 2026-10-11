.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/MasterShortcutType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/MasterShortcutType;",
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

    const-string v2, "mastershortcuttype1ef1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/MasterShortcutType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/MasterShortcutType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewIcon()Lcom/microsoft/schemas/office/visio/x2012/main/IconType;
.end method

.method public abstract getAlignName()I
.end method

.method public abstract getID()J
.end method

.method public abstract getIcon()Lcom/microsoft/schemas/office/visio/x2012/main/IconType;
.end method

.method public abstract getIconSize()I
.end method

.method public abstract getIsCustomName()Z
.end method

.method public abstract getIsCustomNameU()Z
.end method

.method public abstract getMasterType()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameU()Ljava/lang/String;
.end method

.method public abstract getPatternFlags()I
.end method

.method public abstract getPrompt()Ljava/lang/String;
.end method

.method public abstract getShortcutHelp()Ljava/lang/String;
.end method

.method public abstract getShortcutURL()Ljava/lang/String;
.end method

.method public abstract isSetAlignName()Z
.end method

.method public abstract isSetIcon()Z
.end method

.method public abstract isSetIconSize()Z
.end method

.method public abstract isSetIsCustomName()Z
.end method

.method public abstract isSetIsCustomNameU()Z
.end method

.method public abstract isSetMasterType()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNameU()Z
.end method

.method public abstract isSetPatternFlags()Z
.end method

.method public abstract isSetPrompt()Z
.end method

.method public abstract isSetShortcutHelp()Z
.end method

.method public abstract isSetShortcutURL()Z
.end method

.method public abstract setAlignName(I)V
.end method

.method public abstract setID(J)V
.end method

.method public abstract setIcon(Lcom/microsoft/schemas/office/visio/x2012/main/IconType;)V
.end method

.method public abstract setIconSize(I)V
.end method

.method public abstract setIsCustomName(Z)V
.end method

.method public abstract setIsCustomNameU(Z)V
.end method

.method public abstract setMasterType(I)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNameU(Ljava/lang/String;)V
.end method

.method public abstract setPatternFlags(I)V
.end method

.method public abstract setPrompt(Ljava/lang/String;)V
.end method

.method public abstract setShortcutHelp(Ljava/lang/String;)V
.end method

.method public abstract setShortcutURL(Ljava/lang/String;)V
.end method

.method public abstract unsetAlignName()V
.end method

.method public abstract unsetIcon()V
.end method

.method public abstract unsetIconSize()V
.end method

.method public abstract unsetIsCustomName()V
.end method

.method public abstract unsetIsCustomNameU()V
.end method

.method public abstract unsetMasterType()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNameU()V
.end method

.method public abstract unsetPatternFlags()V
.end method

.method public abstract unsetPrompt()V
.end method

.method public abstract unsetShortcutHelp()V
.end method

.method public abstract unsetShortcutURL()V
.end method

.method public abstract xgetAlignName()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetIconSize()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetIsCustomName()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIsCustomNameU()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMasterType()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetNameU()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPatternFlags()Lorg/apache/xmlbeans/XmlUnsignedShort;
.end method

.method public abstract xgetPrompt()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetShortcutHelp()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetShortcutURL()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetAlignName(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetIconSize(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetIsCustomName(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIsCustomNameU(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMasterType(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetNameU(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPatternFlags(Lorg/apache/xmlbeans/XmlUnsignedShort;)V
.end method

.method public abstract xsetPrompt(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetShortcutHelp(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetShortcutURL(Lorg/apache/xmlbeans/XmlString;)V
.end method
