.class public Lcom/twelvemonkeys/image/ResampleOp$d;
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
    name = "d"
.end annotation


# instance fields
.field public final a:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 2
    iput-wide v0, p0, Lcom/twelvemonkeys/image/ResampleOp$d;->a:D

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/twelvemonkeys/image/ResampleOp$d;->a:D

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 2

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final b()D
    .locals 2

    iget-wide v0, p0, Lcom/twelvemonkeys/image/ResampleOp$d;->a:D

    return-wide v0
.end method
