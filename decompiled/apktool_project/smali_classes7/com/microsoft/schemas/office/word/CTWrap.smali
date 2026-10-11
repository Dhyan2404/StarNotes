.class public interface abstract Lcom/microsoft/schemas/office/word/CTWrap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/word/CTWrap;",
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

    const-string v2, "ctwrapbc3btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/word/CTWrap;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/CTWrap;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAnchorx()Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;
.end method

.method public abstract getAnchory()Lcom/microsoft/schemas/office/word/STVerticalAnchor$Enum;
.end method

.method public abstract getSide()Lcom/microsoft/schemas/office/word/STWrapSide$Enum;
.end method

.method public abstract getType()Lcom/microsoft/schemas/office/word/STWrapType$Enum;
.end method

.method public abstract isSetAnchorx()Z
.end method

.method public abstract isSetAnchory()Z
.end method

.method public abstract isSetSide()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract setAnchorx(Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;)V
.end method

.method public abstract setAnchory(Lcom/microsoft/schemas/office/word/STVerticalAnchor$Enum;)V
.end method

.method public abstract setSide(Lcom/microsoft/schemas/office/word/STWrapSide$Enum;)V
.end method

.method public abstract setType(Lcom/microsoft/schemas/office/word/STWrapType$Enum;)V
.end method

.method public abstract unsetAnchorx()V
.end method

.method public abstract unsetAnchory()V
.end method

.method public abstract unsetSide()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract xgetAnchorx()Lcom/microsoft/schemas/office/word/STHorizontalAnchor;
.end method

.method public abstract xgetAnchory()Lcom/microsoft/schemas/office/word/STVerticalAnchor;
.end method

.method public abstract xgetSide()Lcom/microsoft/schemas/office/word/STWrapSide;
.end method

.method public abstract xgetType()Lcom/microsoft/schemas/office/word/STWrapType;
.end method

.method public abstract xsetAnchorx(Lcom/microsoft/schemas/office/word/STHorizontalAnchor;)V
.end method

.method public abstract xsetAnchory(Lcom/microsoft/schemas/office/word/STVerticalAnchor;)V
.end method

.method public abstract xsetSide(Lcom/microsoft/schemas/office/word/STWrapSide;)V
.end method

.method public abstract xsetType(Lcom/microsoft/schemas/office/word/STWrapType;)V
.end method
