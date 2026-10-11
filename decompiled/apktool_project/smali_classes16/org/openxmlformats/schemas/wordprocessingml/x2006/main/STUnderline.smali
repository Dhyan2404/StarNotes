.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;
    }
.end annotation


# static fields
.field public static final DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DASHED_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DASH_DOT_DOT_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DASH_DOT_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DASH_LONG:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DASH_LONG_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DOTTED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DOTTED_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DOT_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DOT_DOT_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final DOUBLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_DASH:I = 0x7

.field public static final INT_DASHED_HEAVY:I = 0x8

.field public static final INT_DASH_DOT_DOT_HEAVY:I = 0xe

.field public static final INT_DASH_DOT_HEAVY:I = 0xc

.field public static final INT_DASH_LONG:I = 0x9

.field public static final INT_DASH_LONG_HEAVY:I = 0xa

.field public static final INT_DOTTED:I = 0x5

.field public static final INT_DOTTED_HEAVY:I = 0x6

.field public static final INT_DOT_DASH:I = 0xb

.field public static final INT_DOT_DOT_DASH:I = 0xd

.field public static final INT_DOUBLE:I = 0x3

.field public static final INT_NONE:I = 0x12

.field public static final INT_SINGLE:I = 0x1

.field public static final INT_THICK:I = 0x4

.field public static final INT_WAVE:I = 0xf

.field public static final INT_WAVY_DOUBLE:I = 0x11

.field public static final INT_WAVY_HEAVY:I = 0x10

.field public static final INT_WORDS:I = 0x2

.field public static final NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final SINGLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final THICK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final WAVE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final WAVY_DOUBLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final WAVY_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final WORDS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stunderlinef416type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "single"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->SINGLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "words"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->WORDS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "double"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DOUBLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "thick"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->THICK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dotted"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DOTTED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dottedHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DOTTED_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dashedHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DASHED_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dashLong"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DASH_LONG:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dashLongHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DASH_LONG_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dotDash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DOT_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dashDotHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DASH_DOT_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dotDotDash"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DOT_DOT_DASH:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "dashDotDotHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->DASH_DOT_DOT_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "wave"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->WAVE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "wavyHeavy"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->WAVY_HEAVY:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "wavyDouble"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->WAVY_DOUBLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
