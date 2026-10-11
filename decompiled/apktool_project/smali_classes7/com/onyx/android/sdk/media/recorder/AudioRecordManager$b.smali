.class public final Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->c()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$b;->e:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)[B
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$b;->e:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->getAudioRecord$sdk_media_release()Lcom/onyx/android/sdk/media/recorder/AudioRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecorder;->readAudioChunk()[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$b;->a(J)[B

    move-result-object p0

    return-object p0
.end method
