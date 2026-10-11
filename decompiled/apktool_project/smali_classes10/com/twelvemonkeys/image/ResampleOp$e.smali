.class public Lcom/twelvemonkeys/image/ResampleOp$e;
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
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 8

    const-wide/16 v0, 0x0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    neg-double p1, p1

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p1, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    if-gez p0, :cond_1

    mul-double v0, p1, p1

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr p1, v6

    const-wide/high16 v6, -0x3fec000000000000L    # -5.0

    add-double/2addr p1, v6

    mul-double/2addr v0, p1

    add-double/2addr v0, v4

    mul-double/2addr v0, v2

    return-wide v0

    :cond_1
    cmpg-double p0, p1, v4

    if-gez p0, :cond_2

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    sub-double/2addr v0, p1

    mul-double/2addr v0, p1

    const-wide/high16 v4, -0x3fe0000000000000L    # -8.0

    add-double/2addr v0, v4

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    add-double/2addr p1, v0

    mul-double/2addr p1, v2

    return-wide p1

    :cond_2
    return-wide v0
.end method

.method public final b()D
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    return-wide v0
.end method
