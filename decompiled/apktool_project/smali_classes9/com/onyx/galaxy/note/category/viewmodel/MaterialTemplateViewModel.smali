.class public final Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008(\u0010)J\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0016\u0010\r\u001a\u00020\u00022\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u0016\u0010\u0011\u001a\u00020\u00022\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\nH\u0002R.\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R.\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\n0\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u0014\u001a\u0004\u0008\u001b\u0010\u0016\"\u0004\u0008\u001c\u0010\u0018R.\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\n0\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0014\u001a\u0004\u0008 \u0010\u0016\"\u0004\u0008!\u0010\u0018R.\u0010\'\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020#0\n0\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u0014\u001a\u0004\u0008%\u0010\u0016\"\u0004\u0008&\u0010\u0018\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "",
        "loadData",
        "",
        "categoryId",
        "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;",
        "type",
        "deleteMaterialsCategory",
        "d",
        "",
        "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
        "coverCategories",
        "e",
        "g",
        "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
        "templateCategories",
        "f",
        "Landroidx/lifecycle/MutableLiveData;",
        "h",
        "Landroidx/lifecycle/MutableLiveData;",
        "getCoverMaterialCategoryList",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setCoverMaterialCategoryList",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "coverMaterialCategoryList",
        "i",
        "getPaperMaterialCategoryList",
        "setPaperMaterialCategoryList",
        "paperMaterialCategoryList",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "j",
        "getMaterialPaperList",
        "setMaterialPaperList",
        "materialPaperList",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
        "k",
        "getMaterialCoverList",
        "setMaterialCoverList",
        "materialCoverList",
        "<init>",
        "()V",
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
.field public h:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$loadMaterialCoverList(Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->e(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$loadMaterialPaperList(Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->f(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverCategoryListAction;

    sget-object v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->Companion:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;->getMATERIALS_CATEGORIES_SOURCE()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverCategoryListAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$c;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final deleteMaterialsCategory(Ljava/lang/String;Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "categoryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsCoverAction;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsCoverAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$b;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$b;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsPaperAction;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsPaperAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$a;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$a;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/action/cover/LoadMaterialCoverListAction;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/cover/LoadMaterialCoverListAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$d;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$d;-><init>(Ljava/util/List;Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/LoadMaterialPaperListAction;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/template/LoadMaterialPaperListAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$e;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$e;-><init>(Ljava/util/List;Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$f;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$f;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final g()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;

    sget-object v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->Companion:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;->getMATERIALS_CATEGORIES_SOURCE()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;-><init>(ZLjava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$g;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel$g;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final getCoverMaterialCategoryList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getMaterialCoverList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getMaterialPaperList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getPaperMaterialCategoryList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final loadData()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->d()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->g()V

    return-void
.end method

.method public final setCoverMaterialCategoryList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setMaterialCoverList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setMaterialPaperList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setPaperMaterialCategoryList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/MaterialTemplateViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
