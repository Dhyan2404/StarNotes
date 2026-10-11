.class public final Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->H(Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

.field public final synthetic f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$h0;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$h0;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$h0;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$h0;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;->getOutputFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$h0;->f:Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/data/DecryptPDFArgs;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->access$renameFile(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$h0;->a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
