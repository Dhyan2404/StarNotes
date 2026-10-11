.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;
    }
.end annotation


# static fields
.field public static final ANTS_BLACK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

.field public static final ANTS_RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

.field public static final BLINK_BACKGROUND:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_ANTS_BLACK:I = 0x3

.field public static final INT_ANTS_RED:I = 0x4

.field public static final INT_BLINK_BACKGROUND:I = 0x1

.field public static final INT_LIGHTS:I = 0x2

.field public static final INT_NONE:I = 0x7

.field public static final INT_SHIMMER:I = 0x5

.field public static final INT_SPARKLE:I = 0x6

.field public static final LIGHTS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

.field public static final NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

.field public static final SHIMMER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

.field public static final SPARKLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sttexteffecteebatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "blinkBackground"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect;->BLINK_BACKGROUND:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    const-string v0, "lights"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect;->LIGHTS:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    const-string v0, "antsBlack"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect;->ANTS_BLACK:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    const-string v0, "antsRed"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect;->ANTS_RED:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    const-string v0, "shimmer"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect;->SHIMMER:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    const-string v0, "sparkle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect;->SPARKLE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    const-string v0, "none"

    invoke-static {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STTextEffect$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
