.class public final synthetic Lcom/sunia/HTREnginev2/zze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zze;->e:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zze;->e:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$a;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$a;->b(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$a;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method
