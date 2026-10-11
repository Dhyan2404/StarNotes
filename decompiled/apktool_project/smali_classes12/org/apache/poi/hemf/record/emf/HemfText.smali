.class public Lorg/apache/poi/hemf/record/emf/HemfText;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/record/emf/HemfText$PolyTextOutW;,
        Lorg/apache/poi/hemf/record/emf/HemfText$PolyTextOutA;,
        Lorg/apache/poi/hemf/record/emf/HemfText$SetTextJustification;,
        Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutOptions;,
        Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtCreateFontIndirectW;,
        Lorg/apache/poi/hemf/record/emf/HemfText$EmfSetTextColor;,
        Lorg/apache/poi/hemf/record/emf/HemfText$EmfSetTextAlign;,
        Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutW;,
        Lorg/apache/poi/hemf/record/emf/HemfText$EmfExtTextOutA;,
        Lorg/apache/poi/hemf/record/emf/HemfText$EmfGraphicsMode;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0xf4240

.field private static MAX_RECORD_LENGTH:I = 0xf4240


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    sget v0, Lorg/apache/poi/hemf/record/emf/HemfText;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hemf/record/emf/HemfText;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hemf/record/emf/HemfText;->MAX_RECORD_LENGTH:I

    return-void
.end method
