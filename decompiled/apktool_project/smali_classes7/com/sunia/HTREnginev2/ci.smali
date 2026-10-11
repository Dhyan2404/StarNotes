.class public final synthetic Lcom/sunia/HTREnginev2/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ci;->e:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ci;->e:Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;

    invoke-static {p0}, Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;->a(Lcom/onyx/android/sdk/media/recorder/AudioRecordManager;)V

    return-void
.end method
