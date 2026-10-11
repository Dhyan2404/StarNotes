.class public final Lcom/sunia/HTREnginev2/a0f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/a0f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/a0f;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/a0f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sunia/HTREnginev2/a0f$b;->a:Lcom/sunia/HTREnginev2/a0f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/a0f;Lcom/sunia/HTREnginev2/a0f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/a0f$b;-><init>(Lcom/sunia/HTREnginev2/a0f;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0f$b;->a:Lcom/sunia/HTREnginev2/a0f;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/a0f;->c(Lcom/sunia/HTREnginev2/a0f;)Lcom/sunia/HTREnginev2/e0n;

    move-result-object v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a0f$b;->a:Lcom/sunia/HTREnginev2/a0f;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/a0f;->f(Lcom/sunia/HTREnginev2/a0f;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/e0n;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 10

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0f$b;->a:Lcom/sunia/HTREnginev2/a0f;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/a0f;->c(Lcom/sunia/HTREnginev2/a0f;)Lcom/sunia/HTREnginev2/e0n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sunia/HTREnginev2/e0n;->c(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/a0f$b;->a:Lcom/sunia/HTREnginev2/a0f;

    invoke-static {v2}, Lcom/sunia/HTREnginev2/a0f;->d(Lcom/sunia/HTREnginev2/a0f;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sunia/HTREnginev2/a0f$b;->a:Lcom/sunia/HTREnginev2/a0f;

    invoke-static {v4}, Lcom/sunia/HTREnginev2/a0f;->e(Lcom/sunia/HTREnginev2/a0f;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/sunia/HTREnginev2/a0f$b;->a:Lcom/sunia/HTREnginev2/a0f;

    invoke-static {v6}, Lcom/sunia/HTREnginev2/a0f;->d(Lcom/sunia/HTREnginev2/a0f;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    mul-long/2addr v0, v4

    iget-object v4, p0, Lcom/sunia/HTREnginev2/a0f$b;->a:Lcom/sunia/HTREnginev2/a0f;

    invoke-static {v4}, Lcom/sunia/HTREnginev2/a0f;->f(Lcom/sunia/HTREnginev2/a0f;)J

    move-result-wide v4

    div-long/2addr v0, v4

    add-long/2addr v2, v0

    const-wide/16 v0, 0x7530

    sub-long v4, v2, v0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0f$b;->a:Lcom/sunia/HTREnginev2/a0f;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/a0f;->d(Lcom/sunia/HTREnginev2/a0f;)J

    move-result-wide v6

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a0f$b;->a:Lcom/sunia/HTREnginev2/a0f;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/a0f;->e(Lcom/sunia/HTREnginev2/a0f;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    new-instance p0, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    return-object p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
