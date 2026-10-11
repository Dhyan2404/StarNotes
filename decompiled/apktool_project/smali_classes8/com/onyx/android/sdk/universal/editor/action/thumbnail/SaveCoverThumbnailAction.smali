.class public final Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002R\u0017\u0010\u0011\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "provider",
        "",
        "m",
        "Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;",
        "e",
        "Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;",
        "getArgs",
        "()Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;",
        "args",
        "Lcom/onyx/android/sdk/base/data/Orientation;",
        "f",
        "Lcom/onyx/android/sdk/base/data/Orientation;",
        "getOrientation",
        "()Lcom/onyx/android/sdk/base/data/Orientation;",
        "setOrientation",
        "(Lcom/onyx/android/sdk/base/data/Orientation;)V",
        "orientation",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/base/data/Orientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;->e:Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;

    sget-object p1, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;->f:Lcom/onyx/android/sdk/base/data/Orientation;

    return-void
.end method

.method public static final synthetic access$updateThumbnailResByBitmap(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;->m(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;->e:Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;->l(Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getArgs()Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;->e:Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;

    return-object p0
.end method

.method public final getOrientation()Lcom/onyx/android/sdk/base/data/Orientation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;->f:Lcom/onyx/android/sdk/base/data/Orientation;

    return-object p0
.end method

.method public final l(Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;->e:Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->appThumbnailPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveBitmapToFileAction;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveBitmapToFileAction;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction$d;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;->e:Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;->e:Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadNoteFail, save thumbnail fail, docId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;->e:Lcom/onyx/android/sdk/universal/editor/data/SaveCoverThumbnailArgs;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".documentId"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getThumbnailRes()Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction$updateThumbnailResByBitmap$thumbnailRes$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction$updateThumbnailResByBitmap$thumbnailRes$1;

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;->f:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->setOrientation(Lcom/onyx/android/sdk/base/data/Orientation;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setThumbnailRes(Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->beforeSave()V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->saveNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public final setOrientation(Lcom/onyx/android/sdk/base/data/Orientation;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/SaveCoverThumbnailAction;->f:Lcom/onyx/android/sdk/base/data/Orientation;

    return-void
.end method
