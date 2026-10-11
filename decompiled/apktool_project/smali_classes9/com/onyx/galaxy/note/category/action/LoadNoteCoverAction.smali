.class public final Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoadNoteCoverAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteCoverAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteCoverAction\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,135:1\n277#2,2:136\n277#2,2:138\n277#2,2:140\n277#2,2:142\n277#2,2:144\n277#2,2:146\n*S KotlinDebug\n*F\n+ 1 LoadNoteCoverAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteCoverAction\n*L\n118#1:136,2\n119#1:138,2\n122#1:140,2\n123#1:142,2\n125#1:144,2\n126#1:146,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0002H\u0002R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "isPortrait",
        "p",
        "o",
        "Landroid/widget/ImageView;",
        "n",
        "",
        "q",
        "r",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "Landroid/view/View;",
        "h",
        "Landroid/view/View;",
        "itemView",
        "",
        "i",
        "I",
        "errorResId",
        "",
        "j",
        "Lkotlin/Lazy;",
        "getFilePath",
        "()Ljava/lang/String;",
        "filePath",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/view/View;I)V",
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
        "SMAP\nLoadNoteCoverAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteCoverAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteCoverAction\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,135:1\n277#2,2:136\n277#2,2:138\n277#2,2:140\n277#2,2:142\n277#2,2:144\n277#2,2:146\n*S KotlinDebug\n*F\n+ 1 LoadNoteCoverAction.kt\ncom/onyx/galaxy/note/category/action/LoadNoteCoverAction\n*L\n118#1:136,2\n119#1:138,2\n122#1:140,2\n123#1:142,2\n125#1:144,2\n126#1:146,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:I

.field public final j:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/view/View;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->h:Landroid/view/View;

    .line 5
    iput p3, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->i:I

    .line 6
    new-instance p1, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$filePath$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$filePath$2;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->j:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/view/View;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic access$getErrorResId$p(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->i:I

    return p0
.end method

.method public static final synthetic access$getFilePath(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->getFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNoteModel$p(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;)Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-object p0
.end method

.method public static final synthetic access$isPortrait(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->o()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$load(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->p(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->m(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;Z)V

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->q(Z)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->r(Z)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/common/action/CheckFileExistAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/action/CheckFileExistAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/yzi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/yzi;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfFalse(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$a;->e:Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$c;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final n(Z)Landroid/widget/ImageView;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->h:Landroid/view/View;

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_note_thumbnail_land:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->h:Landroid/view/View;

    sget p1, Lcom/onyx/galaxy/note/R$id;->iv_note_thumbnail:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/widget/ImageView;

    :cond_1
    return-object p1
.end method

.method public final o()Z
    .locals 2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final p(Z)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->q(Z)V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ImageManager;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/utils/ImageManager;->getDefaultFileCacheKey(Ljava/io/File;)Lcom/onyx/android/sdk/note/common/utils/ImageManager$FileKey;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->n(Z)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$load$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$load$1;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$load$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$load$2;-><init>(Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;)V

    invoke-static {v1, v2, v3}, Lcom/onyx/android/sdk/base/extension/AnyKt;->takeIf(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v2, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$load$3;

    invoke-direct {v2, v0, p0}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction$load$3;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "observeOn(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Z)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->h:Landroid/view/View;

    sget v1, Lcom/onyx/galaxy/note/R$id;->group_note_thumbnail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->h:Landroid/view/View;

    sget v3, Lcom/onyx/galaxy/note/R$id;->group_note_thumbnail_land:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->hasEncryption()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->h:Landroid/view/View;

    sget v3, Lcom/onyx/galaxy/note/R$id;->iv_note_lock_thumbnail:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->h:Landroid/view/View;

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_note_lock_thumbnail_land:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_9

    :cond_7
    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    move v1, v2

    :goto_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_9
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->h:Landroid/view/View;

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_note_lock_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->h:Landroid/view/View;

    sget p1, Lcom/onyx/galaxy/note/R$id;->iv_note_lock_thumbnail_land:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    return-void
.end method

.method public final r(Z)V
    .locals 1

    iget v0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->i:I

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->n(Z)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/onyx/galaxy/note/category/action/LoadNoteCoverAction;->i:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
