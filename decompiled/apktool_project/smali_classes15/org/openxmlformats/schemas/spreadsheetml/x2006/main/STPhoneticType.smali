.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;
    }
.end annotation


# static fields
.field public static final FULLWIDTH_KATAKANA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HALFWIDTH_KATAKANA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;

.field public static final HIRAGANA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;

.field public static final INT_FULLWIDTH_KATAKANA:I = 0x2

.field public static final INT_HALFWIDTH_KATAKANA:I = 0x1

.field public static final INT_HIRAGANA:I = 0x3

.field public static final INT_NO_CONVERSION:I = 0x4

.field public static final NO_CONVERSION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stphonetictype4f93type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "halfwidthKatakana"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType;->HALFWIDTH_KATAKANA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;

    const-string v0, "fullwidthKatakana"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType;->FULLWIDTH_KATAKANA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;

    const-string v0, "Hiragana"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType;->HIRAGANA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;

    const-string v0, "noConversion"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType;->NO_CONVERSION:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STPhoneticType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
