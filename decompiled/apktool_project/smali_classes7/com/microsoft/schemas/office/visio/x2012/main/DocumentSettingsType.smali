.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;",
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

    const-string v2, "documentsettingstype945btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAttachedToolbars()Lcom/microsoft/schemas/office/visio/x2012/main/AttachedToolbarsType;
.end method

.method public abstract addNewCustomMenusFile()Lcom/microsoft/schemas/office/visio/x2012/main/CustomMenusFileType;
.end method

.method public abstract addNewCustomToolbarsFile()Lcom/microsoft/schemas/office/visio/x2012/main/CustomToolbarsFileType;
.end method

.method public abstract addNewDynamicGridEnabled()Lcom/microsoft/schemas/office/visio/x2012/main/DynamicGridEnabledType;
.end method

.method public abstract addNewGlueSettings()Lcom/microsoft/schemas/office/visio/x2012/main/GlueSettingsType;
.end method

.method public abstract addNewProtectBkgnds()Lcom/microsoft/schemas/office/visio/x2012/main/ProtectBkgndsType;
.end method

.method public abstract addNewProtectMasters()Lcom/microsoft/schemas/office/visio/x2012/main/ProtectMastersType;
.end method

.method public abstract addNewProtectShapes()Lcom/microsoft/schemas/office/visio/x2012/main/ProtectShapesType;
.end method

.method public abstract addNewProtectStyles()Lcom/microsoft/schemas/office/visio/x2012/main/ProtectStylesType;
.end method

.method public abstract addNewSnapAngles()Lcom/microsoft/schemas/office/visio/x2012/main/SnapAnglesType;
.end method

.method public abstract addNewSnapExtensions()Lcom/microsoft/schemas/office/visio/x2012/main/SnapExtensionsType;
.end method

.method public abstract addNewSnapSettings()Lcom/microsoft/schemas/office/visio/x2012/main/SnapSettingsType;
.end method

.method public abstract getAttachedToolbars()Lcom/microsoft/schemas/office/visio/x2012/main/AttachedToolbarsType;
.end method

.method public abstract getCustomMenusFile()Lcom/microsoft/schemas/office/visio/x2012/main/CustomMenusFileType;
.end method

.method public abstract getCustomToolbarsFile()Lcom/microsoft/schemas/office/visio/x2012/main/CustomToolbarsFileType;
.end method

.method public abstract getDefaultFillStyle()J
.end method

.method public abstract getDefaultGuideStyle()J
.end method

.method public abstract getDefaultLineStyle()J
.end method

.method public abstract getDefaultTextStyle()J
.end method

.method public abstract getDynamicGridEnabled()Lcom/microsoft/schemas/office/visio/x2012/main/DynamicGridEnabledType;
.end method

.method public abstract getGlueSettings()Lcom/microsoft/schemas/office/visio/x2012/main/GlueSettingsType;
.end method

.method public abstract getProtectBkgnds()Lcom/microsoft/schemas/office/visio/x2012/main/ProtectBkgndsType;
.end method

.method public abstract getProtectMasters()Lcom/microsoft/schemas/office/visio/x2012/main/ProtectMastersType;
.end method

.method public abstract getProtectShapes()Lcom/microsoft/schemas/office/visio/x2012/main/ProtectShapesType;
.end method

.method public abstract getProtectStyles()Lcom/microsoft/schemas/office/visio/x2012/main/ProtectStylesType;
.end method

.method public abstract getSnapAngles()Lcom/microsoft/schemas/office/visio/x2012/main/SnapAnglesType;
.end method

.method public abstract getSnapExtensions()Lcom/microsoft/schemas/office/visio/x2012/main/SnapExtensionsType;
.end method

.method public abstract getSnapSettings()Lcom/microsoft/schemas/office/visio/x2012/main/SnapSettingsType;
.end method

.method public abstract getTopPage()J
.end method

.method public abstract isSetAttachedToolbars()Z
.end method

.method public abstract isSetCustomMenusFile()Z
.end method

.method public abstract isSetCustomToolbarsFile()Z
.end method

.method public abstract isSetDefaultFillStyle()Z
.end method

.method public abstract isSetDefaultGuideStyle()Z
.end method

.method public abstract isSetDefaultLineStyle()Z
.end method

.method public abstract isSetDefaultTextStyle()Z
.end method

.method public abstract isSetDynamicGridEnabled()Z
.end method

.method public abstract isSetGlueSettings()Z
.end method

.method public abstract isSetProtectBkgnds()Z
.end method

.method public abstract isSetProtectMasters()Z
.end method

.method public abstract isSetProtectShapes()Z
.end method

.method public abstract isSetProtectStyles()Z
.end method

.method public abstract isSetSnapAngles()Z
.end method

.method public abstract isSetSnapExtensions()Z
.end method

.method public abstract isSetSnapSettings()Z
.end method

.method public abstract isSetTopPage()Z
.end method

.method public abstract setAttachedToolbars(Lcom/microsoft/schemas/office/visio/x2012/main/AttachedToolbarsType;)V
.end method

.method public abstract setCustomMenusFile(Lcom/microsoft/schemas/office/visio/x2012/main/CustomMenusFileType;)V
.end method

.method public abstract setCustomToolbarsFile(Lcom/microsoft/schemas/office/visio/x2012/main/CustomToolbarsFileType;)V
.end method

.method public abstract setDefaultFillStyle(J)V
.end method

.method public abstract setDefaultGuideStyle(J)V
.end method

.method public abstract setDefaultLineStyle(J)V
.end method

.method public abstract setDefaultTextStyle(J)V
.end method

.method public abstract setDynamicGridEnabled(Lcom/microsoft/schemas/office/visio/x2012/main/DynamicGridEnabledType;)V
.end method

.method public abstract setGlueSettings(Lcom/microsoft/schemas/office/visio/x2012/main/GlueSettingsType;)V
.end method

.method public abstract setProtectBkgnds(Lcom/microsoft/schemas/office/visio/x2012/main/ProtectBkgndsType;)V
.end method

.method public abstract setProtectMasters(Lcom/microsoft/schemas/office/visio/x2012/main/ProtectMastersType;)V
.end method

.method public abstract setProtectShapes(Lcom/microsoft/schemas/office/visio/x2012/main/ProtectShapesType;)V
.end method

.method public abstract setProtectStyles(Lcom/microsoft/schemas/office/visio/x2012/main/ProtectStylesType;)V
.end method

.method public abstract setSnapAngles(Lcom/microsoft/schemas/office/visio/x2012/main/SnapAnglesType;)V
.end method

.method public abstract setSnapExtensions(Lcom/microsoft/schemas/office/visio/x2012/main/SnapExtensionsType;)V
.end method

.method public abstract setSnapSettings(Lcom/microsoft/schemas/office/visio/x2012/main/SnapSettingsType;)V
.end method

.method public abstract setTopPage(J)V
.end method

.method public abstract unsetAttachedToolbars()V
.end method

.method public abstract unsetCustomMenusFile()V
.end method

.method public abstract unsetCustomToolbarsFile()V
.end method

.method public abstract unsetDefaultFillStyle()V
.end method

.method public abstract unsetDefaultGuideStyle()V
.end method

.method public abstract unsetDefaultLineStyle()V
.end method

.method public abstract unsetDefaultTextStyle()V
.end method

.method public abstract unsetDynamicGridEnabled()V
.end method

.method public abstract unsetGlueSettings()V
.end method

.method public abstract unsetProtectBkgnds()V
.end method

.method public abstract unsetProtectMasters()V
.end method

.method public abstract unsetProtectShapes()V
.end method

.method public abstract unsetProtectStyles()V
.end method

.method public abstract unsetSnapAngles()V
.end method

.method public abstract unsetSnapExtensions()V
.end method

.method public abstract unsetSnapSettings()V
.end method

.method public abstract unsetTopPage()V
.end method

.method public abstract xgetDefaultFillStyle()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDefaultGuideStyle()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDefaultLineStyle()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDefaultTextStyle()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetTopPage()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetDefaultFillStyle(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDefaultGuideStyle(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDefaultLineStyle(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDefaultTextStyle(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetTopPage(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
