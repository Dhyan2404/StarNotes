.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;
    }
.end annotation


# static fields
.field public static final BLACK_TEXT_ON_WHITE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

.field public static final BROWSER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BLACK_TEXT_ON_WHITE:I = 0x6

.field public static final INT_BROWSER:I = 0x2

.field public static final INT_NONE:I = 0x1

.field public static final INT_PRESENTATION_ACCENT:I = 0x4

.field public static final INT_PRESENTATION_TEXT:I = 0x3

.field public static final INT_WHITE_TEXT_ON_BLACK:I = 0x5

.field public static final NONE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

.field public static final PRESENTATION_ACCENT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

.field public static final PRESENTATION_TEXT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

.field public static final WHITE_TEXT_ON_BLACK:Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stwebcolortype822ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType;->NONE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

    const-string v0, "browser"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType;->BROWSER:Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

    const-string v0, "presentationText"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType;->PRESENTATION_TEXT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

    const-string v0, "presentationAccent"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType;->PRESENTATION_ACCENT:Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

    const-string v0, "whiteTextOnBlack"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType;->WHITE_TEXT_ON_BLACK:Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

    const-string v0, "blackTextOnWhite"

    invoke-static {v0}, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType;->BLACK_TEXT_ON_WHITE:Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
