.class public final synthetic Lcom/sunia/HTREnginev2/vtl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel$e;

.field public final synthetic f:[B

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel$e;[BLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vtl;->e:Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel$e;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vtl;->f:[B

    iput-object p3, p0, Lcom/sunia/HTREnginev2/vtl;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vtl;->e:Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel$e;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vtl;->f:[B

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vtl;->g:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel$e;->f(Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel$e;[BLjava/util/List;)V

    return-void
.end method
