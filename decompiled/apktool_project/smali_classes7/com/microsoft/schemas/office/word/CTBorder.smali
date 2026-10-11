.class public interface abstract Lcom/microsoft/schemas/office/word/CTBorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/word/CTBorder;",
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

    const-string v2, "ctborderc15dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/word/CTBorder;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/CTBorder;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getShadow()Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;
.end method

.method public abstract getType()Lcom/microsoft/schemas/office/word/STBorderType$Enum;
.end method

.method public abstract getWidth()Ljava/math/BigInteger;
.end method

.method public abstract isSetShadow()Z
.end method

.method public abstract isSetType()Z
.end method

.method public abstract isSetWidth()Z
.end method

.method public abstract setShadow(Lcom/microsoft/schemas/office/word/STBorderShadow$Enum;)V
.end method

.method public abstract setType(Lcom/microsoft/schemas/office/word/STBorderType$Enum;)V
.end method

.method public abstract setWidth(Ljava/math/BigInteger;)V
.end method

.method public abstract unsetShadow()V
.end method

.method public abstract unsetType()V
.end method

.method public abstract unsetWidth()V
.end method

.method public abstract xgetShadow()Lcom/microsoft/schemas/office/word/STBorderShadow;
.end method

.method public abstract xgetType()Lcom/microsoft/schemas/office/word/STBorderType;
.end method

.method public abstract xgetWidth()Lorg/apache/xmlbeans/XmlPositiveInteger;
.end method

.method public abstract xsetShadow(Lcom/microsoft/schemas/office/word/STBorderShadow;)V
.end method

.method public abstract xsetType(Lcom/microsoft/schemas/office/word/STBorderType;)V
.end method

.method public abstract xsetWidth(Lorg/apache/xmlbeans/XmlPositiveInteger;)V
.end method
