.class public final Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;
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
    value = "SMAP\nLoadPageSearchThumbnailAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadPageSearchThumbnailAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,140:1\n277#2,2:141\n277#2,2:143\n277#2,2:145\n277#2,2:147\n277#2,2:149\n277#2,2:151\n*S KotlinDebug\n*F\n+ 1 LoadPageSearchThumbnailAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction\n*L\n123#1:141,2\n124#1:143,2\n127#1:145,2\n128#1:147,2\n130#1:149,2\n131#1:151,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B)\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0002H\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0008\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0002H\u0002R\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "Landroid/widget/ImageView;",
        "imageView",
        "isPortrait",
        "",
        "r",
        "m",
        "p",
        "q",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;",
        "g",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;",
        "editorBundleWrapper",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "noteSearchBean",
        "Landroid/view/View;",
        "i",
        "Landroid/view/View;",
        "itemView",
        "",
        "j",
        "I",
        "errorResId",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/view/View;I)V",
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
        "SMAP\nLoadPageSearchThumbnailAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadPageSearchThumbnailAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,140:1\n277#2,2:141\n277#2,2:143\n277#2,2:145\n277#2,2:147\n277#2,2:149\n277#2,2:151\n*S KotlinDebug\n*F\n+ 1 LoadPageSearchThumbnailAction.kt\ncom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction\n*L\n123#1:141,2\n124#1:143,2\n127#1:145,2\n128#1:147,2\n130#1:149,2\n131#1:151,2\n*E\n"
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/view/View;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundleWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteSearchBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    .line 5
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->i:Landroid/view/View;

    .line 6
    iput p4, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->j:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/view/View;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic access$getErrorResId$p(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->j:I

    return p0
.end method

.method public static final synthetic access$getNoteSearchBean$p(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;)Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    return-object p0
.end method

.method public static final synthetic access$load(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setGroupImageViewVisible(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->p(Z)V

    return-void
.end method

.method public static final synthetic access$setThumbnailViewErrorImage(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->q(Z)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;Landroid/widget/ImageView;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->o(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;Landroid/widget/ImageView;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/Object;)V

    return-void
.end method

.method public static final o(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;Landroid/widget/ImageView;Lio/reactivex/rxjava3/subjects/PublishSubject;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$subject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$load$1$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$load$1$1;-><init>(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$load$1$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$load$1$2;-><init>(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;)V

    invoke-static {p3, v0, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->takeIf(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/RequestBuilder;

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$load$1$3;

    invoke-direct {v0, p2, p0}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$load$1$3;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;)V

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnError(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Z)Landroid/widget/ImageView;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->i:Landroid/view/View;

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_note_thumbnail_land:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->i:Landroid/view/View;

    sget p1, Lcom/onyx/galaxy/note/R$id;->iv_note_thumbnail:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/widget/ImageView;

    :cond_1
    return-object p1
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isLandscape(Landroid/graphics/RectF;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->p(Z)V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v1

    const-string v2, "create(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->m(Z)Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->r(Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->g:Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    new-instance v4, Lcom/sunia/HTREnginev2/b0j;

    invoke-direct {v4, p0, v2, v1}, Lcom/sunia/HTREnginev2/b0j;-><init>(Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;Landroid/widget/ImageView;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;->open(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lio/reactivex/rxjava3/functions/Consumer;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(Z)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->i:Landroid/view/View;

    sget v1, Lcom/onyx/galaxy/note/R$id;->group_note_thumbnail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->i:Landroid/view/View;

    sget v3, Lcom/onyx/galaxy/note/R$id;->group_note_thumbnail_land:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->hasEncryption()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->i:Landroid/view/View;

    sget v3, Lcom/onyx/galaxy/note/R$id;->iv_note_lock_thumbnail:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->i:Landroid/view/View;

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_note_lock_thumbnail_land:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_7

    :cond_6
    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_8
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->i:Landroid/view/View;

    sget v0, Lcom/onyx/galaxy/note/R$id;->iv_note_lock_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->i:Landroid/view/View;

    sget p1, Lcom/onyx/galaxy/note/R$id;->iv_note_lock_thumbnail_land:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    return-void
.end method

.method public final q(Z)V
    .locals 1

    iget v0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->j:I

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->m(Z)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->j:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public final r(Landroid/widget/ImageView;Z)V
    .locals 3

    if-eqz p2, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_110:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_124:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_138:I

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_100:I

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p2

    :goto_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/LoadPageSearchThumbnailAction;->h:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageDisplayRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToHeight(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    float-to-int p0, p0

    invoke-static {p1, p2, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutParams(Landroid/view/View;II)V

    return-void
.end method
