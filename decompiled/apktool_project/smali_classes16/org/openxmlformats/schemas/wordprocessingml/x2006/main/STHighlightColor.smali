.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;
    }
.end annotation


# static fields
.field public static final BLACK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final BLUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final CYAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_BLUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_CYAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_GRAY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_GREEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_MAGENTA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final DARK_YELLOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;",
            ">;"
        }
    .end annotation
.end field

.field public static final GREEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final INT_BLACK:I = 0x1

.field public static final INT_BLUE:I = 0x2

.field public static final INT_CYAN:I = 0x3

.field public static final INT_DARK_BLUE:I = 0x9

.field public static final INT_DARK_CYAN:I = 0xa

.field public static final INT_DARK_GRAY:I = 0xf

.field public static final INT_DARK_GREEN:I = 0xb

.field public static final INT_DARK_MAGENTA:I = 0xc

.field public static final INT_DARK_RED:I = 0xd

.field public static final INT_DARK_YELLOW:I = 0xe

.field public static final INT_GREEN:I = 0x4

.field public static final INT_LIGHT_GRAY:I = 0x10

.field public static final INT_MAGENTA:I = 0x5

.field public static final INT_NONE:I = 0x11

.field public static final INT_RED:I = 0x6

.field public static final INT_WHITE:I = 0x8

.field public static final INT_YELLOW:I = 0x7

.field public static final LIGHT_GRAY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final MAGENTA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final WHITE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final YELLOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sthighlightcolora8e9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "black"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->BLACK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "blue"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->BLUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "cyan"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->CYAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "green"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->GREEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "magenta"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->MAGENTA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "red"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "yellow"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->YELLOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "white"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->WHITE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkBlue"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_BLUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkCyan"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_CYAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkGreen"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_GREEN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkMagenta"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_MAGENTA:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkRed"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkYellow"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_YELLOW:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "darkGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->DARK_GRAY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "lightGray"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->LIGHT_GRAY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
