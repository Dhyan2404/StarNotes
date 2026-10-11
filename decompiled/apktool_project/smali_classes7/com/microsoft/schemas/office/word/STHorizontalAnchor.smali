.class public interface abstract Lcom/microsoft/schemas/office/word/STHorizontalAnchor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;
    }
.end annotation


# static fields
.field public static final CHAR:Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/word/STHorizontalAnchor;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_CHAR:I = 0x4

.field public static final INT_MARGIN:I = 0x1

.field public static final INT_PAGE:I = 0x2

.field public static final INT_TEXT:I = 0x3

.field public static final MARGIN:Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;

.field public static final PAGE:Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;

.field public static final TEXT:Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sthorizontalanchora13atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/word/STHorizontalAnchor;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STHorizontalAnchor;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "margin"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STHorizontalAnchor;->MARGIN:Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;

    const-string v0, "page"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STHorizontalAnchor;->PAGE:Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;

    const-string v0, "text"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STHorizontalAnchor;->TEXT:Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;

    const-string v0, "char"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STHorizontalAnchor;->CHAR:Lcom/microsoft/schemas/office/word/STHorizontalAnchor$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
