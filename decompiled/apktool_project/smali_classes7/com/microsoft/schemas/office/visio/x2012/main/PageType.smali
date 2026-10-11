.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/PageType;",
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

    const-string v2, "pagetype2fcatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/PageType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/PageType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewPageSheet()Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;
.end method

.method public abstract addNewRel()Lcom/microsoft/schemas/office/visio/x2012/main/RelType;
.end method

.method public abstract getAssociatedPage()J
.end method

.method public abstract getBackPage()J
.end method

.method public abstract getBackground()Z
.end method

.method public abstract getID()J
.end method

.method public abstract getIsCustomName()Z
.end method

.method public abstract getIsCustomNameU()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameU()Ljava/lang/String;
.end method

.method public abstract getPageSheet()Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;
.end method

.method public abstract getRel()Lcom/microsoft/schemas/office/visio/x2012/main/RelType;
.end method

.method public abstract getReviewerID()J
.end method

.method public abstract getViewCenterX()D
.end method

.method public abstract getViewCenterY()D
.end method

.method public abstract getViewScale()D
.end method

.method public abstract isSetAssociatedPage()Z
.end method

.method public abstract isSetBackPage()Z
.end method

.method public abstract isSetBackground()Z
.end method

.method public abstract isSetIsCustomName()Z
.end method

.method public abstract isSetIsCustomNameU()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNameU()Z
.end method

.method public abstract isSetPageSheet()Z
.end method

.method public abstract isSetReviewerID()Z
.end method

.method public abstract isSetViewCenterX()Z
.end method

.method public abstract isSetViewCenterY()Z
.end method

.method public abstract isSetViewScale()Z
.end method

.method public abstract setAssociatedPage(J)V
.end method

.method public abstract setBackPage(J)V
.end method

.method public abstract setBackground(Z)V
.end method

.method public abstract setID(J)V
.end method

.method public abstract setIsCustomName(Z)V
.end method

.method public abstract setIsCustomNameU(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNameU(Ljava/lang/String;)V
.end method

.method public abstract setPageSheet(Lcom/microsoft/schemas/office/visio/x2012/main/PageSheetType;)V
.end method

.method public abstract setRel(Lcom/microsoft/schemas/office/visio/x2012/main/RelType;)V
.end method

.method public abstract setReviewerID(J)V
.end method

.method public abstract setViewCenterX(D)V
.end method

.method public abstract setViewCenterY(D)V
.end method

.method public abstract setViewScale(D)V
.end method

.method public abstract unsetAssociatedPage()V
.end method

.method public abstract unsetBackPage()V
.end method

.method public abstract unsetBackground()V
.end method

.method public abstract unsetIsCustomName()V
.end method

.method public abstract unsetIsCustomNameU()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNameU()V
.end method

.method public abstract unsetPageSheet()V
.end method

.method public abstract unsetReviewerID()V
.end method

.method public abstract unsetViewCenterX()V
.end method

.method public abstract unsetViewCenterY()V
.end method

.method public abstract unsetViewScale()V
.end method

.method public abstract xgetAssociatedPage()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetBackPage()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetBackground()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetIsCustomName()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIsCustomNameU()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetNameU()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetReviewerID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetViewCenterX()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetViewCenterY()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetViewScale()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xsetAssociatedPage(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetBackPage(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetBackground(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetIsCustomName(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIsCustomNameU(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetNameU(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetReviewerID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetViewCenterX(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetViewCenterY(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetViewScale(Lorg/apache/xmlbeans/XmlDouble;)V
.end method
