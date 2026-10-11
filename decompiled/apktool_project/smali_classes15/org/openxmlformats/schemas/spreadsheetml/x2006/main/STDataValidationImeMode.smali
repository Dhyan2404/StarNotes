.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;
    }
.end annotation


# static fields
.field public static final DISABLED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

.field public static final FULL_ALPHA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

.field public static final FULL_HANGUL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

.field public static final FULL_KATAKANA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final HALF_ALPHA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

.field public static final HALF_HANGUL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

.field public static final HALF_KATAKANA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

.field public static final HIRAGANA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

.field public static final INT_DISABLED:I = 0x4

.field public static final INT_FULL_ALPHA:I = 0x8

.field public static final INT_FULL_HANGUL:I = 0xa

.field public static final INT_FULL_KATAKANA:I = 0x6

.field public static final INT_HALF_ALPHA:I = 0x9

.field public static final INT_HALF_HANGUL:I = 0xb

.field public static final INT_HALF_KATAKANA:I = 0x7

.field public static final INT_HIRAGANA:I = 0x5

.field public static final INT_NO_CONTROL:I = 0x1

.field public static final INT_OFF:I = 0x2

.field public static final INT_ON:I = 0x3

.field public static final NO_CONTROL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

.field public static final OFF:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

.field public static final ON:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stdatavalidationimemodef990type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "noControl"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;->NO_CONTROL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    const-string v0, "off"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;->OFF:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    const-string v0, "on"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;->ON:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    const-string v0, "disabled"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;->DISABLED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    const-string v0, "hiragana"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;->HIRAGANA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    const-string v0, "fullKatakana"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;->FULL_KATAKANA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    const-string v0, "halfKatakana"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;->HALF_KATAKANA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    const-string v0, "fullAlpha"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;->FULL_ALPHA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    const-string v0, "halfAlpha"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;->HALF_ALPHA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    const-string v0, "fullHangul"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;->FULL_HANGUL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    const-string v0, "halfHangul"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode;->HALF_HANGUL:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataValidationImeMode$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
