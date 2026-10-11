.class public Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;
.super Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;
.source "SourceFile"


# static fields
.field public static final HIGHBYTE_BEGIN_1:I = 0x81

.field public static final HIGHBYTE_BEGIN_2:I = 0xe0

.field public static final HIGHBYTE_END_1:I = 0x9f

.field public static final HIGHBYTE_END_2:I = 0xef

.field public static final LOWBYTE_BEGIN_1:I = 0x40

.field public static final LOWBYTE_BEGIN_2:I = 0x80


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrder([BI)I
    .locals 2

    aget-byte p0, p1, p2

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0x81

    if-lt p0, v0, :cond_0

    const/16 v1, 0x9f

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    :goto_0
    mul-int/lit16 p0, p0, 0xbc

    goto :goto_1

    :cond_0
    const/16 v0, 0xe0

    if-lt p0, v0, :cond_2

    const/16 v1, 0xef

    if-gt p0, v1, :cond_2

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1f

    goto :goto_0

    :goto_1
    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p2, p1, -0x40

    add-int/2addr p0, p2

    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    add-int/lit8 p0, p0, -0x1

    :cond_1
    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method
