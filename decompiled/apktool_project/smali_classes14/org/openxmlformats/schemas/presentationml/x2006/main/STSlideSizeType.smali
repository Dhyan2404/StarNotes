.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;
    }
.end annotation


# static fields
.field public static final A_3:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final A_4:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final BANNER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final B_4_ISO:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final B_4_JIS:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final B_5_ISO:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final B_5_JIS:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final CUSTOM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HAGAKI_CARD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final INT_A_3:I = 0x9

.field public static final INT_A_4:I = 0x3

.field public static final INT_BANNER:I = 0x6

.field public static final INT_B_4_ISO:I = 0xa

.field public static final INT_B_4_JIS:I = 0xc

.field public static final INT_B_5_ISO:I = 0xb

.field public static final INT_B_5_JIS:I = 0xd

.field public static final INT_CUSTOM:I = 0x7

.field public static final INT_HAGAKI_CARD:I = 0xe

.field public static final INT_LEDGER:I = 0x8

.field public static final INT_LETTER:I = 0x2

.field public static final INT_OVERHEAD:I = 0x5

.field public static final INT_SCREEN_16_X_10:I = 0x10

.field public static final INT_SCREEN_16_X_9:I = 0xf

.field public static final INT_SCREEN_4_X_3:I = 0x1

.field public static final INT_X_35_MM:I = 0x4

.field public static final LEDGER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final LETTER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final OVERHEAD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final SCREEN_16_X_10:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final SCREEN_16_X_9:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final SCREEN_4_X_3:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final X_35_MM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stslidesizetypeb7f3type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "screen4x3"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->SCREEN_4_X_3:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "letter"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->LETTER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "A4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->A_4:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "35mm"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->X_35_MM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "overhead"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->OVERHEAD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "banner"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->BANNER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "custom"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->CUSTOM:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "ledger"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->LEDGER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "A3"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->A_3:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "B4ISO"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->B_4_ISO:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "B5ISO"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->B_5_ISO:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "B4JIS"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->B_4_JIS:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "B5JIS"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->B_5_JIS:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "hagakiCard"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->HAGAKI_CARD:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "screen16x9"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->SCREEN_16_X_9:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    const-string v0, "screen16x10"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType;->SCREEN_16_X_10:Lorg/openxmlformats/schemas/presentationml/x2006/main/STSlideSizeType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
