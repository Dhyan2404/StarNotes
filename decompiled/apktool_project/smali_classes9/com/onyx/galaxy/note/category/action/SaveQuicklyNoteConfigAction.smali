.class public final Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002R\u0017\u0010\u0013\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "noteCreateInfo",
        "m",
        "o",
        "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
        "sizeFormat",
        "p",
        "n",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "g",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "getTemplateViewModel",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "templateViewModel",
        "<init>",
        "(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V",
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
.field public final g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "templateViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    return-void
.end method

.method public static final synthetic access$savedQuickNoteConfig(Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->l()V

    return-void
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

    new-instance v1, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction$a;-><init>(Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTemplateViewModel()Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    return-object p0
.end method

.method public final l()V
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->quickly_note:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTagIdList()Ljava/util/List;

    move-result-object v8

    iget-object v1, v0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->isContainsCover()Z

    move-result v11

    iget-object v1, v0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    iget-object v2, v0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getFolderId()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v2

    check-cast v13, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-object v3, v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3c6a

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/util/List;ZILcom/onyx/android/sdk/replicator/note/bean/SizeFormat;Landroid/graphics/RectF;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->o(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->m(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getQuickNoteOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getSizeFormat()Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->n(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->isContainsCover()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->coverModelToJsonBean(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setCoverJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->coverTemplateRect(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setCoverRectF(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getSizeFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->setSizeFormat(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getSizeFormat()Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->p(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getPaperBeanList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    sget-object v0, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->toPaperBean(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/android/sdk/genericshape/GeoLayout;)Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSizeFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;->g:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setSizeFormat(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
