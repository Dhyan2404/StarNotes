.class public final Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;
.super Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadNoteListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1549#2:125\n1620#2,3:126\n1855#2,2:129\n766#2:131\n857#2,2:132\n1549#2:134\n1620#2,3:135\n1855#2,2:138\n*S KotlinDebug\n*F\n+ 1 LoadNoteListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteListAction\n*L\n60#1:125\n60#1:126,3\n62#1:129,2\n76#1:131\n76#1:132,2\n76#1:134\n76#1:135,3\n84#1:138,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008$\u0010%J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0002J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u001a\u0010\u0013\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;",
        "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "n",
        "noteModelBeanList",
        "o",
        "p",
        "s",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "noteModelBean",
        "q",
        "Lcom/onyx/android/sdk/base/data/Orientation;",
        "l",
        "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;",
        "syncDocProgress",
        "r",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "g",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "queryArgs",
        "Lcom/onyx/android/sdk/replicator/note/bean/SortData;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/bean/SortData;",
        "manualSortData",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteProvider",
        "Lcom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider;",
        "j",
        "Lcom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider;",
        "syncProgressProvider",
        "<init>",
        "(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLoadNoteListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1549#2:125\n1620#2,3:126\n1855#2,2:129\n766#2:131\n857#2,2:132\n1549#2:134\n1620#2,3:135\n1855#2,2:138\n*S KotlinDebug\n*F\n+ 1 LoadNoteListAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteListAction\n*L\n60#1:125\n60#1:126,3\n62#1:129,2\n76#1:131\n76#1:132,2\n76#1:134\n76#1:135,3\n84#1:138,2\n*E\n"
    }
.end annotation


# instance fields
.field public g:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/replicator/note/bean/SortData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

.field public j:Lcom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/bean/SortData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->g:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/replicator/note/bean/SortData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;-><init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V

    return-void
.end method

.method public static final synthetic access$decodeOrientationByFile(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Lcom/onyx/android/sdk/base/data/Orientation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->l(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureSyncProgressProvider(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->m()V

    return-void
.end method

.method public static final synthetic access$generateNoteModelBeanList(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->n()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadNoteManualSortData(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->o(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadNoteSyncProgress(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->p(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setNoteProvider$p(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method

.method public static final synthetic access$updateSyncStatus(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->s(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;->createNoteProviderObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$d;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$e;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Lcom/onyx/android/sdk/base/data/Orientation;
    .locals 4

    sget-object p0, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/path/ThumbnailPaths;->appThumbnailPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    const-class v1, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;

    if-nez p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thumbnail doest not exists return orientation by file:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt p0, p1, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/data/Orientation;->LANDSCAPE:Lcom/onyx/android/sdk/base/data/Orientation;

    :goto_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode cover thumbnail orientation by file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public final m()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserSyncProgressProvider(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->j:Lcom/onyx/android/sdk/replicator/progress/db/SyncProgressProvider;

    return-void
.end method

.method public final n()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->g:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->clone()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setLimit(I)V

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel$Companion;->getNoteSelectResult()[Lcom/couchbase/lite/SelectResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->setSelectResults([Lcom/couchbase/lite/SelectResult;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    if-nez v2, :cond_0

    const-string v2, "noteProvider"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-static {v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->loadNoteListInBatch(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    new-instance v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-direct {v4, v3}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->q(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final o(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->h:Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    if-nez p0, :cond_0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;

    invoke-direct {v0, p1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteSortDataAction;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/sync/LoadNoteSyncProgressAction;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/action/sync/LoadNoteSyncProgressAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$f;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$f;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$g;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$g;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getThumbnailRes()Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->getOrientation()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$setIsPortrait$orientation$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction$setIsPortrait$orientation$1;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Orientation;->isPortrait()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->setPortrait(Z)V

    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V
    .locals 0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->setDocProgress(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V

    return-void
.end method

.method public final s(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    sget-object v1, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/progress/SyncProgressBundle;->getSyncProgressMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/action/LoadNoteListAction;->r(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V

    goto :goto_0

    :cond_0
    return-void
.end method
