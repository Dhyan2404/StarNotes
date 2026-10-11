.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;
    }
.end annotation


# static fields
.field public static final ANGLE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

.field public static final ART_DECO:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

.field public static final CIRCLE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

.field public static final CONVEX:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

.field public static final COOL_SLANT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

.field public static final CROSS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

.field public static final DIVOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;",
            ">;"
        }
    .end annotation
.end field

.field public static final HARD_EDGE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

.field public static final INT_ANGLE:I = 0x5

.field public static final INT_ART_DECO:I = 0xc

.field public static final INT_CIRCLE:I = 0x2

.field public static final INT_CONVEX:I = 0x7

.field public static final INT_COOL_SLANT:I = 0x8

.field public static final INT_CROSS:I = 0x4

.field public static final INT_DIVOT:I = 0x9

.field public static final INT_HARD_EDGE:I = 0xb

.field public static final INT_RELAXED_INSET:I = 0x1

.field public static final INT_RIBLET:I = 0xa

.field public static final INT_SLOPE:I = 0x3

.field public static final INT_SOFT_ROUND:I = 0x6

.field public static final RELAXED_INSET:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

.field public static final RIBLET:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

.field public static final SLOPE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

.field public static final SOFT_ROUND:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stbevelpresettype48b4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "relaxedInset"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->RELAXED_INSET:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    const-string v0, "circle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->CIRCLE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    const-string v0, "slope"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->SLOPE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    const-string v0, "cross"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->CROSS:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    const-string v0, "angle"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->ANGLE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    const-string v0, "softRound"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->SOFT_ROUND:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    const-string v0, "convex"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->CONVEX:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    const-string v0, "coolSlant"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->COOL_SLANT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    const-string v0, "divot"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->DIVOT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    const-string v0, "riblet"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->RIBLET:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    const-string v0, "hardEdge"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->HARD_EDGE:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    const-string v0, "artDeco"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType;->ART_DECO:Lorg/openxmlformats/schemas/drawingml/x2006/main/STBevelPresetType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
