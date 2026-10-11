.class public final synthetic Lcom/sunia/HTREnginev2/vze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$a;

.field public final synthetic f:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$a;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vze;->e:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$a;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vze;->f:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vze;->e:Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$a;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vze;->f:Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$a;->e(Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$a;Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method
