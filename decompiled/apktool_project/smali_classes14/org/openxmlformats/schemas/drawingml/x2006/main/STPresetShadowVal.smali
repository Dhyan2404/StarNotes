.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_SHDW_1:I = 0x1

.field public static final INT_SHDW_10:I = 0xa

.field public static final INT_SHDW_11:I = 0xb

.field public static final INT_SHDW_12:I = 0xc

.field public static final INT_SHDW_13:I = 0xd

.field public static final INT_SHDW_14:I = 0xe

.field public static final INT_SHDW_15:I = 0xf

.field public static final INT_SHDW_16:I = 0x10

.field public static final INT_SHDW_17:I = 0x11

.field public static final INT_SHDW_18:I = 0x12

.field public static final INT_SHDW_19:I = 0x13

.field public static final INT_SHDW_2:I = 0x2

.field public static final INT_SHDW_20:I = 0x14

.field public static final INT_SHDW_3:I = 0x3

.field public static final INT_SHDW_4:I = 0x4

.field public static final INT_SHDW_5:I = 0x5

.field public static final INT_SHDW_6:I = 0x6

.field public static final INT_SHDW_7:I = 0x7

.field public static final INT_SHDW_8:I = 0x8

.field public static final INT_SHDW_9:I = 0x9

.field public static final SHDW_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_10:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_11:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_12:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_13:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_14:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_15:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_16:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_17:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_18:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_19:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_20:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_3:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_4:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_5:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_6:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_7:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_8:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final SHDW_9:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stpresetshadowval0e63type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "shdw1"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_1:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw2"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_2:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw3"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_3:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw4"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_4:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw5"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_5:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw6"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_6:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw7"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_7:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw8"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_8:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw9"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_9:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw10"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_10:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw11"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_11:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw12"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_12:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw13"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_13:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw14"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_14:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw15"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_15:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw16"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_16:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw17"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_17:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw18"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_18:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw19"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_19:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    const-string v0, "shdw20"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal;->SHDW_20:Lorg/openxmlformats/schemas/drawingml/x2006/main/STPresetShadowVal$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
