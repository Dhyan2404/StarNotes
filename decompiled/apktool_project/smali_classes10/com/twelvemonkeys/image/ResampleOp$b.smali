.class public Lcom/twelvemonkeys/image/ResampleOp$b;
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
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 2

    invoke-virtual {p0}, Lcom/twelvemonkeys/image/ResampleOp$b;->b()D

    move-result-wide v0

    div-double v0, p1, v0

    invoke-static {v0, v1}, Lcom/twelvemonkeys/image/ResampleOp;->c(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Lcom/twelvemonkeys/image/ResampleOp;->b(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public final b()D
    .locals 2

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    return-wide v0
.end method
