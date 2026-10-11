.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterType;",
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

    const-string v2, "headerfootertypec2f1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewFooterCenter()Lcom/microsoft/schemas/office/visio/x2012/main/FooterCenterType;
.end method

.method public abstract addNewFooterLeft()Lcom/microsoft/schemas/office/visio/x2012/main/FooterLeftType;
.end method

.method public abstract addNewFooterMargin()Lcom/microsoft/schemas/office/visio/x2012/main/FooterMarginType;
.end method

.method public abstract addNewFooterRight()Lcom/microsoft/schemas/office/visio/x2012/main/FooterRightType;
.end method

.method public abstract addNewHeaderCenter()Lcom/microsoft/schemas/office/visio/x2012/main/HeaderCenterType;
.end method

.method public abstract addNewHeaderFooterFont()Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterFontType;
.end method

.method public abstract addNewHeaderLeft()Lcom/microsoft/schemas/office/visio/x2012/main/HeaderLeftType;
.end method

.method public abstract addNewHeaderMargin()Lcom/microsoft/schemas/office/visio/x2012/main/HeaderMarginType;
.end method

.method public abstract addNewHeaderRight()Lcom/microsoft/schemas/office/visio/x2012/main/HeaderRightType;
.end method

.method public abstract getFooterCenter()Lcom/microsoft/schemas/office/visio/x2012/main/FooterCenterType;
.end method

.method public abstract getFooterLeft()Lcom/microsoft/schemas/office/visio/x2012/main/FooterLeftType;
.end method

.method public abstract getFooterMargin()Lcom/microsoft/schemas/office/visio/x2012/main/FooterMarginType;
.end method

.method public abstract getFooterRight()Lcom/microsoft/schemas/office/visio/x2012/main/FooterRightType;
.end method

.method public abstract getHeaderCenter()Lcom/microsoft/schemas/office/visio/x2012/main/HeaderCenterType;
.end method

.method public abstract getHeaderFooterColor()Ljava/lang/String;
.end method

.method public abstract getHeaderFooterFont()Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterFontType;
.end method

.method public abstract getHeaderLeft()Lcom/microsoft/schemas/office/visio/x2012/main/HeaderLeftType;
.end method

.method public abstract getHeaderMargin()Lcom/microsoft/schemas/office/visio/x2012/main/HeaderMarginType;
.end method

.method public abstract getHeaderRight()Lcom/microsoft/schemas/office/visio/x2012/main/HeaderRightType;
.end method

.method public abstract isSetFooterCenter()Z
.end method

.method public abstract isSetFooterLeft()Z
.end method

.method public abstract isSetFooterMargin()Z
.end method

.method public abstract isSetFooterRight()Z
.end method

.method public abstract isSetHeaderCenter()Z
.end method

.method public abstract isSetHeaderFooterColor()Z
.end method

.method public abstract isSetHeaderFooterFont()Z
.end method

.method public abstract isSetHeaderLeft()Z
.end method

.method public abstract isSetHeaderMargin()Z
.end method

.method public abstract isSetHeaderRight()Z
.end method

.method public abstract setFooterCenter(Lcom/microsoft/schemas/office/visio/x2012/main/FooterCenterType;)V
.end method

.method public abstract setFooterLeft(Lcom/microsoft/schemas/office/visio/x2012/main/FooterLeftType;)V
.end method

.method public abstract setFooterMargin(Lcom/microsoft/schemas/office/visio/x2012/main/FooterMarginType;)V
.end method

.method public abstract setFooterRight(Lcom/microsoft/schemas/office/visio/x2012/main/FooterRightType;)V
.end method

.method public abstract setHeaderCenter(Lcom/microsoft/schemas/office/visio/x2012/main/HeaderCenterType;)V
.end method

.method public abstract setHeaderFooterColor(Ljava/lang/String;)V
.end method

.method public abstract setHeaderFooterFont(Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterFontType;)V
.end method

.method public abstract setHeaderLeft(Lcom/microsoft/schemas/office/visio/x2012/main/HeaderLeftType;)V
.end method

.method public abstract setHeaderMargin(Lcom/microsoft/schemas/office/visio/x2012/main/HeaderMarginType;)V
.end method

.method public abstract setHeaderRight(Lcom/microsoft/schemas/office/visio/x2012/main/HeaderRightType;)V
.end method

.method public abstract unsetFooterCenter()V
.end method

.method public abstract unsetFooterLeft()V
.end method

.method public abstract unsetFooterMargin()V
.end method

.method public abstract unsetFooterRight()V
.end method

.method public abstract unsetHeaderCenter()V
.end method

.method public abstract unsetHeaderFooterColor()V
.end method

.method public abstract unsetHeaderFooterFont()V
.end method

.method public abstract unsetHeaderLeft()V
.end method

.method public abstract unsetHeaderMargin()V
.end method

.method public abstract unsetHeaderRight()V
.end method

.method public abstract xgetHeaderFooterColor()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetHeaderFooterColor(Lorg/apache/xmlbeans/XmlString;)V
.end method
