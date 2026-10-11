.class public interface abstract Lcom/microsoft/schemas/office/office/STBWMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/office/STBWMode$Enum;
    }
.end annotation


# static fields
.field public static final AUTO:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

.field public static final BLACK:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

.field public static final BLACK_TEXT_AND_LINES:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

.field public static final COLOR:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/office/STBWMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRAY_OUTLINE:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

.field public static final GRAY_SCALE:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

.field public static final HIDE:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

.field public static final HIGH_CONTRAST:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

.field public static final INT_AUTO:I = 0x2

.field public static final INT_BLACK:I = 0x8

.field public static final INT_BLACK_TEXT_AND_LINES:I = 0xc

.field public static final INT_COLOR:I = 0x1

.field public static final INT_GRAY_OUTLINE:I = 0x6

.field public static final INT_GRAY_SCALE:I = 0x3

.field public static final INT_HIDE:I = 0xa

.field public static final INT_HIGH_CONTRAST:I = 0x7

.field public static final INT_INVERSE_GRAY:I = 0x5

.field public static final INT_LIGHT_GRAYSCALE:I = 0x4

.field public static final INT_UNDRAWN:I = 0xb

.field public static final INT_WHITE:I = 0x9

.field public static final INVERSE_GRAY:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

.field public static final LIGHT_GRAYSCALE:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

.field public static final UNDRAWN:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

.field public static final WHITE:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stbwmode77abtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "color"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->COLOR:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v0, "auto"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->AUTO:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v0, "grayScale"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->GRAY_SCALE:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v0, "lightGrayscale"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->LIGHT_GRAYSCALE:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v0, "inverseGray"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->INVERSE_GRAY:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v0, "grayOutline"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->GRAY_OUTLINE:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v0, "highContrast"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->HIGH_CONTRAST:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v0, "black"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->BLACK:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v0, "white"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->WHITE:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v0, "hide"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->HIDE:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v0, "undrawn"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->UNDRAWN:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    const-string v0, "blackTextAndLines"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STBWMode$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STBWMode;->BLACK_TEXT_AND_LINES:Lcom/microsoft/schemas/office/office/STBWMode$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
