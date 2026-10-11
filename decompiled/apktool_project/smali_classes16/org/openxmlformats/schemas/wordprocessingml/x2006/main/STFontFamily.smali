.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;
    }
.end annotation


# static fields
.field public static final AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

.field public static final DECORATIVE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_AUTO:I = 0x6

.field public static final INT_DECORATIVE:I = 0x1

.field public static final INT_MODERN:I = 0x2

.field public static final INT_ROMAN:I = 0x3

.field public static final INT_SCRIPT:I = 0x4

.field public static final INT_SWISS:I = 0x5

.field public static final MODERN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

.field public static final ROMAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

.field public static final SCRIPT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

.field public static final SWISS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stfontfamily4b65type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "decorative"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily;->DECORATIVE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

    const-string v0, "modern"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily;->MODERN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

    const-string v0, "roman"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily;->ROMAN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

    const-string v0, "script"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily;->SCRIPT:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

    const-string v0, "swiss"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily;->SWISS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

    const-string v0, "auto"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily;->AUTO:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFontFamily$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
