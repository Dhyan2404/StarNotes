.class public final Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->startRecording(Lcom/onyx/android/sdk/media/config/RecordingConfig;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

.field public final synthetic f:Lcom/onyx/android/sdk/media/config/RecordingConfig;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;Lcom/onyx/android/sdk/media/config/RecordingConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$e;->e:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$e;->f:Lcom/onyx/android/sdk/media/config/RecordingConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$e;->e:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$e;->f:Lcom/onyx/android/sdk/media/config/RecordingConfig;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->access$initializeRecording(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;Lcom/onyx/android/sdk/media/config/RecordingConfig;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager$e;->a(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    return-void
.end method
