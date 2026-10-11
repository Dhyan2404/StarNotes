.class public Lcom/twelvemonkeys/image/ResampleOp$p;
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
    name = "p"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 19

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    cmpg-double v2, p1, v0

    const-wide/16 v3, 0x0

    if-gez v2, :cond_0

    return-wide v3

    :cond_0
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpg-double v2, p1, v5

    const-wide v5, -0x40271c71c71c71c7L    # -0.3888888888888889

    const-wide v7, -0x3ff5555555555555L    # -3.3333333333333335

    const-wide v9, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    if-gez v2, :cond_1

    mul-double v0, p1, v5

    sub-double/2addr v11, v0

    mul-double v0, p1, v11

    sub-double/2addr v7, v0

    mul-double v0, p1, v7

    sub-double/2addr v9, v0

    return-wide v9

    :cond_1
    cmpg-double v2, p1, v3

    const-wide v13, 0x3ff2aaaaaaaaaaabL    # 1.1666666666666667

    const-wide v15, 0x3fec71c71c71c71cL    # 0.8888888888888888

    if-gez v2, :cond_2

    mul-double v2, p1, p1

    mul-double v4, p1, v13

    sub-double/2addr v0, v4

    mul-double/2addr v2, v0

    :goto_0
    add-double/2addr v2, v15

    return-wide v2

    :cond_2
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, v17

    if-gez v2, :cond_3

    mul-double v2, p1, p1

    mul-double v4, p1, v13

    add-double/2addr v4, v0

    mul-double/2addr v2, v4

    goto :goto_0

    :cond_3
    cmpg-double v0, p1, v11

    if-gez v0, :cond_4

    mul-double v0, p1, v5

    add-double/2addr v0, v11

    mul-double v0, v0, p1

    add-double/2addr v0, v7

    mul-double v0, v0, p1

    add-double/2addr v0, v9

    return-wide v0

    :cond_4
    return-wide v3
.end method

.method public final b()D
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    return-wide v0
.end method
