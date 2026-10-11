.class public final Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;
.super Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "Landroid/widget/ImageView;",
        "f",
        "Landroid/widget/ImageView;",
        "thumbView",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
        "coverModel",
        "<init>",
        "(Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "thumbView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;->f:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    return-void
.end method

.method public static final synthetic access$getCoverModel$p(Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;)Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    return-object p0
.end method

.method public static final synthetic access$getThumbView$p(Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;->f:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic access$loadThumb(Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/RxBaseTemplateAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction$b;-><init>(Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurThumbnailRelativePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurThumbnailAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurThumbnailUri()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverThumbAction;->g:Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurThumbnailUri()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method
