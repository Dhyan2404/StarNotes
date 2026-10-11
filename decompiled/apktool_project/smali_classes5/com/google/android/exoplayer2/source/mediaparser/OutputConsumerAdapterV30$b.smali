.class public final Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/media/MediaParser$InputReader;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$b;-><init>()V

    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$b;->a:Landroid/media/MediaParser$InputReader;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/ijk;->a(Ljava/lang/Object;)Landroid/media/MediaParser$InputReader;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/jjk;->a(Landroid/media/MediaParser$InputReader;[BII)I

    move-result p0

    return p0
.end method
