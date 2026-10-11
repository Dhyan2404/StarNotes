.class public interface abstract Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;",
            ">;"
        }
    .end annotation
.end field

.field public static final GREGORIAN:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final GREGORIAN_ARABIC:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final GREGORIAN_ME_FRENCH:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final GREGORIAN_US:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final GREGORIAN_XLIT_ENGLISH:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final GREGORIAN_XLIT_FRENCH:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final HEBREW:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final HIJRI:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final INT_GREGORIAN:I = 0x1

.field public static final INT_GREGORIAN_ARABIC:I = 0x4

.field public static final INT_GREGORIAN_ME_FRENCH:I = 0x3

.field public static final INT_GREGORIAN_US:I = 0x2

.field public static final INT_GREGORIAN_XLIT_ENGLISH:I = 0xc

.field public static final INT_GREGORIAN_XLIT_FRENCH:I = 0xd

.field public static final INT_HEBREW:I = 0x6

.field public static final INT_HIJRI:I = 0x5

.field public static final INT_JAPAN:I = 0x8

.field public static final INT_KOREA:I = 0xa

.field public static final INT_NONE:I = 0xe

.field public static final INT_SAKA:I = 0xb

.field public static final INT_TAIWAN:I = 0x7

.field public static final INT_THAI:I = 0x9

.field public static final JAPAN:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final KOREA:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final SAKA:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final TAIWAN:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final THAI:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stcalendartype8cd2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "gregorian"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->GREGORIAN:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "gregorianUs"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->GREGORIAN_US:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "gregorianMeFrench"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->GREGORIAN_ME_FRENCH:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "gregorianArabic"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->GREGORIAN_ARABIC:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "hijri"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->HIJRI:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "hebrew"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->HEBREW:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "taiwan"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->TAIWAN:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "japan"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->JAPAN:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "thai"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->THAI:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "korea"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->KOREA:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "saka"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->SAKA:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "gregorianXlitEnglish"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->GREGORIAN_XLIT_ENGLISH:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "gregorianXlitFrench"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->GREGORIAN_XLIT_FRENCH:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType;->NONE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STCalendarType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
