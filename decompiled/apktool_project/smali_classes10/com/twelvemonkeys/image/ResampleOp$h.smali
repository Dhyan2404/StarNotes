.class public Lcom/twelvemonkeys/image/ResampleOp$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/image/ResampleOp$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/image/ResampleOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    neg-double p1, p1

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p1, v2

    if-gez p0, :cond_1

    mul-double v0, p1, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    mul-double/2addr v2, p1

    sub-double/2addr v2, v0

    const-wide p0, 0x3fe5555555555555L    # 0.6666666666666666

    add-double/2addr v2, p0

    return-wide v2

    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double p0, p1, v2

    if-gez p0, :cond_2

    sub-double/2addr v2, p1

    mul-double p0, v2, v2

    mul-double/2addr p0, v2

    const-wide v0, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double/2addr p0, v0

    return-wide p0

    :cond_2
    return-wide v0
.end method

.method public final b()D
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    return-wide v0
.end method
