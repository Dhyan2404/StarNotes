.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;
    }
.end annotation


# static fields
.field public static final ACCENT_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

.field public static final ACCENT_2:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

.field public static final ACCENT_3:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

.field public static final ACCENT_4:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

.field public static final ACCENT_5:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

.field public static final ACCENT_6:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

.field public static final DARK_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

.field public static final DARK_2:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

.field public static final FOLLOWED_HYPERLINK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;",
            ">;"
        }
    .end annotation
.end field

.field public static final HYPERLINK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

.field public static final INT_ACCENT_1:I = 0x5

.field public static final INT_ACCENT_2:I = 0x6

.field public static final INT_ACCENT_3:I = 0x7

.field public static final INT_ACCENT_4:I = 0x8

.field public static final INT_ACCENT_5:I = 0x9

.field public static final INT_ACCENT_6:I = 0xa

.field public static final INT_DARK_1:I = 0x1

.field public static final INT_DARK_2:I = 0x3

.field public static final INT_FOLLOWED_HYPERLINK:I = 0xc

.field public static final INT_HYPERLINK:I = 0xb

.field public static final INT_LIGHT_1:I = 0x2

.field public static final INT_LIGHT_2:I = 0x4

.field public static final LIGHT_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

.field public static final LIGHT_2:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stwmlcolorschemeindex4de2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "dark1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->DARK_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    const-string v0, "light1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->LIGHT_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    const-string v0, "dark2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->DARK_2:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    const-string v0, "light2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->LIGHT_2:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    const-string v0, "accent1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->ACCENT_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    const-string v0, "accent2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->ACCENT_2:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    const-string v0, "accent3"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->ACCENT_3:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    const-string v0, "accent4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->ACCENT_4:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    const-string v0, "accent5"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->ACCENT_5:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    const-string v0, "accent6"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->ACCENT_6:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    const-string v0, "hyperlink"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->HYPERLINK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    const-string v0, "followedHyperlink"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex;->FOLLOWED_HYPERLINK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STWmlColorSchemeIndex$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
