.class public final Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->p(Lcom/onyx/android/sdk/universal/editor/request/doc/CreateVirtualDocRequest;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/graphics/Bitmap;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/doc/CreateNoteAction$f;->a(Lcom/onyx/android/sdk/universal/docmanager/action/pdf/LoadReaderPageThumbnailAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
