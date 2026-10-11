.class public interface abstract Lcom/microsoft/schemas/office/word/STBorderType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/word/STBorderType$Enum;
    }
.end annotation


# static fields
.field public static final DASH:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final DASHED_SMALL:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final DASH_DOT_DOT:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final DASH_DOT_STROKED:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final DOT:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final DOT_DASH:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final DOUBLE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final DOUBLE_WAVE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/word/STBorderType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HAIRLINE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final HTML_INSET:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final HTML_OUTSET:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final INT_DASH:I = 0x7

.field public static final INT_DASHED_SMALL:I = 0x16

.field public static final INT_DASH_DOT_DOT:I = 0x9

.field public static final INT_DASH_DOT_STROKED:I = 0x17

.field public static final INT_DOT:I = 0x6

.field public static final INT_DOT_DASH:I = 0x8

.field public static final INT_DOUBLE:I = 0x4

.field public static final INT_DOUBLE_WAVE:I = 0x15

.field public static final INT_HAIRLINE:I = 0x5

.field public static final INT_HTML_INSET:I = 0x1b

.field public static final INT_HTML_OUTSET:I = 0x1a

.field public static final INT_NONE:I = 0x1

.field public static final INT_SINGLE:I = 0x2

.field public static final INT_THICK:I = 0x3

.field public static final INT_THICK_BETWEEN_THIN:I = 0x10

.field public static final INT_THICK_BETWEEN_THIN_LARGE:I = 0x13

.field public static final INT_THICK_BETWEEN_THIN_SMALL:I = 0xd

.field public static final INT_THICK_THIN:I = 0xf

.field public static final INT_THICK_THIN_LARGE:I = 0x12

.field public static final INT_THICK_THIN_SMALL:I = 0xc

.field public static final INT_THIN_THICK:I = 0xe

.field public static final INT_THIN_THICK_LARGE:I = 0x11

.field public static final INT_THIN_THICK_SMALL:I = 0xb

.field public static final INT_THREE_D_EMBOSS:I = 0x18

.field public static final INT_THREE_D_ENGRAVE:I = 0x19

.field public static final INT_TRIPLE:I = 0xa

.field public static final INT_WAVE:I = 0x14

.field public static final NONE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final SINGLE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final THICK:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final THICK_BETWEEN_THIN:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final THICK_BETWEEN_THIN_LARGE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final THICK_BETWEEN_THIN_SMALL:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final THICK_THIN:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final THICK_THIN_LARGE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final THICK_THIN_SMALL:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final THIN_THICK:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final THIN_THICK_LARGE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final THIN_THICK_SMALL:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final THREE_D_EMBOSS:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final THREE_D_ENGRAVE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final TRIPLE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final WAVE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stbordertype7cc7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->NONE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "single"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->SINGLE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "thick"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->THICK:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "double"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->DOUBLE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "hairline"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->HAIRLINE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "dot"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->DOT:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "dash"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->DASH:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "dotDash"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->DOT_DASH:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "dashDotDot"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->DASH_DOT_DOT:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "triple"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->TRIPLE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "thinThickSmall"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->THIN_THICK_SMALL:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "thickThinSmall"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->THICK_THIN_SMALL:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "thickBetweenThinSmall"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->THICK_BETWEEN_THIN_SMALL:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "thinThick"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->THIN_THICK:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "thickThin"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->THICK_THIN:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "thickBetweenThin"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->THICK_BETWEEN_THIN:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "thinThickLarge"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->THIN_THICK_LARGE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "thickThinLarge"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->THICK_THIN_LARGE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "thickBetweenThinLarge"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->THICK_BETWEEN_THIN_LARGE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "wave"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->WAVE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "doubleWave"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->DOUBLE_WAVE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "dashedSmall"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->DASHED_SMALL:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "dashDotStroked"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->DASH_DOT_STROKED:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "threeDEmboss"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->THREE_D_EMBOSS:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "threeDEngrave"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->THREE_D_ENGRAVE:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "HTMLOutset"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->HTML_OUTSET:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    const-string v0, "HTMLInset"

    invoke-static {v0}, Lcom/microsoft/schemas/office/word/STBorderType$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/STBorderType;->HTML_INSET:Lcom/microsoft/schemas/office/word/STBorderType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
