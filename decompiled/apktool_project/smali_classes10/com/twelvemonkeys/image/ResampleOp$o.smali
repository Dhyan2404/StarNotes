.class public Lcom/twelvemonkeys/image/ResampleOp$o;
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
    name = "o"
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
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double p0, p1, v2

    if-gez p0, :cond_1

    invoke-static {p1, p2}, Lcom/twelvemonkeys/image/ResampleOp;->b(D)D

    move-result-wide v0

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Lcom/twelvemonkeys/image/ResampleOp;->b(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    :cond_1
    return-wide v0
.end method

.method public final b()D
    .locals 2

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    return-wide v0
.end method
