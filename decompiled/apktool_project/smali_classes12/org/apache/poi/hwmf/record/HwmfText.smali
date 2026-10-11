.class public Lorg/apache/poi/hwmf/record/HwmfText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hwmf/record/HwmfText$WmfCreateFontIndirect;,
        Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextAlign;,
        Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextVerticalAlignment;,
        Lorg/apache/poi/hwmf/record/HwmfText$HwmfTextAlignment;,
        Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOut;,
        Lorg/apache/poi/hwmf/record/HwmfText$WmfExtTextOutOptions;,
        Lorg/apache/poi/hwmf/record/HwmfText$WmfTextOut;,
        Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextJustification;,
        Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextColor;,
        Lorg/apache/poi/hwmf/record/HwmfText$WmfSetTextCharExtra;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0xf4240

.field private static final LOG:Lorg/apache/logging/log4j/Logger;

.field private static MAX_RECORD_LENGTH:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hwmf/record/HwmfText;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfText;->LOG:Lorg/apache/logging/log4j/Logger;

    const v0, 0xf4240

    sput v0, Lorg/apache/poi/hwmf/record/HwmfText;->MAX_RECORD_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    sget v0, Lorg/apache/poi/hwmf/record/HwmfText;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static synthetic access$100()Lorg/apache/logging/log4j/Logger;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfText;->LOG:Lorg/apache/logging/log4j/Logger;

    return-object v0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hwmf/record/HwmfText;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hwmf/record/HwmfText;->MAX_RECORD_LENGTH:I

    return-void
.end method
