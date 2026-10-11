.class public final Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;
.super Lcom/chad/library/adapter4/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
        "Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontItemShowAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontItemShowAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,248:1\n350#2,7:249\n*S KotlinDebug\n*F\n+ 1 FontItemShowAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter\n*L\n230#1:249,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0005\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u000f\u0012\u0006\u00103\u001a\u000200\u00a2\u0006\u0004\u0008G\u0010HJ\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J \u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000f2\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J \u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J\u0018\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\u001e\u0010\u001b\u001a\u00020\u00072\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u001a\u001a\u00020\u0002H\u0002J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0002H\u0002J\u0008\u0010\u001d\u001a\u00020\tH\u0002J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0002H\u0002J(\u0010\u001f\u001a\u00020\u00072\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0002H\u0015J\u000e\u0010!\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020\u0013J\u0016\u0010$\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00132\u0006\u0010#\u001a\u00020\"J\u0006\u0010%\u001a\u00020\u0007J\u000e\u0010&\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u0002J&\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010(\u001a\u00020\'2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\tH\u0014J\u0010\u0010/\u001a\u00020\u00072\u0006\u0010.\u001a\u00020-H\u0016R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R*\u0010:\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u0001048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\"\u0010@\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u0014\u0010C\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010BR \u0010F\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\"0D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010E\u00a8\u0006I"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
        "Lcom/chad/library/adapter4/viewholder/DataBindingHolder;",
        "Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;",
        "binding",
        "model",
        "",
        "s",
        "",
        "position",
        "z",
        "",
        "u",
        "o",
        "Lio/reactivex/rxjava3/core/Observable;",
        "w",
        "Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;",
        "action",
        "",
        "fontPath",
        "x",
        "",
        "state",
        "y",
        "holder",
        "item",
        "A",
        "v",
        "getSelectedIndex",
        "t",
        "onBindViewHolder",
        "path",
        "containTypeface",
        "Landroid/graphics/Typeface;",
        "typeface",
        "saveTypeface",
        "clearTypeface",
        "isSelected",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "onAttachedToRecyclerView",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "r",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;",
        "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;",
        "getItemSelectedListener",
        "()Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;",
        "setItemSelectedListener",
        "(Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;)V",
        "itemSelectedListener",
        "Ljava/lang/String;",
        "getSelectFontPath",
        "()Ljava/lang/String;",
        "setSelectFontPath",
        "(Ljava/lang/String;)V",
        "selectFontPath",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "",
        "Ljava/util/Map;",
        "typefaceMap",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
        "SMAP\nFontItemShowAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontItemShowAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,248:1\n350#2,7:249\n*S KotlinDebug\n*F\n+ 1 FontItemShowAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter\n*L\n230#1:249,7\n*E\n"
    }
.end annotation


# instance fields
.field public final r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getTextInputConfigOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;->getFontFace()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->t:Ljava/lang/String;

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->u:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->v:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getCompositeDisposable$p(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->u:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$onSelected(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->v(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    return-void
.end method

.method public static final synthetic access$updateFontFace(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->x(Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->q(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->r(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->p(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static final p(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Landroid/view/View;)V
    .locals 1

    const-string p2, "$model"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->isLocalResource(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->isDownloaded(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->w(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$a;

    invoke-direct {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$a;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->v(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    :goto_0
    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->w(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->t(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->v:Ljava/util/Map;

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    if-nez p0, :cond_0

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final clearTypeface()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->v:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final containTypeface(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->v:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getItemSelectedListener()Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->s:Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;

    return-object p0
.end method

.method public final getSelectFontPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->t:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectedIndex()I
    .locals 6

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    sget-object v3, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v2, v4, v5, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->t:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method public final isSelected(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->t:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final o(Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/prg;

    invoke-direct {v1, p2, p0}, Lcom/sunia/HTREnginev2/prg;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;->downloadButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/qrg;

    invoke-direct {v1, p0, p2}, Lcom/sunia/HTREnginev2/qrg;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;->deleteButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v0, Lcom/sunia/HTREnginev2/rrg;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/rrg;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$onAttachedToRecyclerView$1;

    invoke-direct {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$onAttachedToRecyclerView$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    check-cast p3, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n",
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;",
            ">;I",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->A(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    .line 3
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "getBinding(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;

    invoke-virtual {p0, v0, p3, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->z(Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;I)V

    .line 4
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->o(Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    .line 5
    invoke-virtual {p1}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/chad/library/adapter4/viewholder/DataBindingHolder;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/chad/library/adapter4/viewholder/DataBindingHolder<",
            "Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter4/viewholder/DataBindingHolder;-><init>(Landroidx/databinding/ViewDataBinding;)V

    return-object p1
.end method

.method public final s(Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 8

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->isDownloaded(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    sget-object v3, Lcom/onyx/android/sdk/data/common/data/StorageLocation;->PRIVATE_FILE:Lcom/onyx/android/sdk/data/common/data/StorageLocation;

    sget-object v4, Lcom/onyx/android/sdk/data/common/data/DataScope;->APP:Lcom/onyx/android/sdk/data/common/data/DataScope;

    const-string v5, "FontThumbnail"

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getDisplayName(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "getDisplayName(...)"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "png"

    invoke-virtual/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getFile(Lcom/onyx/android/sdk/data/common/data/StorageLocation;Lcom/onyx/android/sdk/data/common/data/DataScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$b;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$b;-><init>(Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$c;->e:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$c;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$d;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final saveTypeface(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Typeface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->v:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setItemSelectedListener(Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->s:Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;

    return-void
.end method

.method public final setSelectFontPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->t:Ljava/lang/String;

    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->delete:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->delete_font_tips:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$delete$1;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$delete$1;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-void
.end method

.method public final u(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSourceType(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->getSelectedIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, p1, v3, v4, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getTextInputConfigOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$onSelected$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$onSelected$1;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->s:Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableQuickAdapter$ItemSelectionListener;->onItemSelected(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final w(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->y(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;B)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/PathManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/PathManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/path/PathManager;->getRandomCacheFile()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3, v2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getSavePath$default(Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;->setForceReDownload(Z)V

    sget-object v3, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->INSTANCE:Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/data/common/download/OnyxDownloadManager;->createObservable(Lcom/onyx/android/sdk/data/common/download/FileDownloadRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$e;->e:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$e;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$f;

    invoke-direct {v3, v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$g;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$h;

    invoke-direct {v2, p0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$h;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final x(Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;->getFontInfo()Lcom/onyx/android/sdk/base/data/font/FontInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getFontName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$updateFontFace$fontName$1;

    invoke-direct {v1, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter$updateFontFace$fontName$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->ifEmpty(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/onegravity/rteditor/fonts/FontManager;->addFontFace(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->saveTypeface(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const/4 p1, -0x3

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->y(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;B)V

    return-void
.end method

.method public final y(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;B)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;->setState(B)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->r:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/events/note/TextFontChangeEvent;

    invoke-direct {p2, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TextFontChangeEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final z(Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;I)V
    .locals 12

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->isSelected(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result p3

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->isLocalResource(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result v1

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->isDownloaded(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result v2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->isDownloading(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result v3

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->isThumbnailCached(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result v4

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->isDefaultResource(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result v5

    if-eqz v4, :cond_0

    sget-object v6, Lcom/onyx/android/sdk/data/glide/GlideExt;->INSTANCE:Lcom/onyx/android/sdk/data/glide/GlideExt;

    iget-object v7, p1, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;->previewImage:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v8, "previewImage"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getCachedPreviewFile(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/onyx/android/sdk/data/glide/GlideExt;->load$default(Lcom/onyx/android/sdk/data/glide/GlideExt;Landroid/widget/ImageView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->isSelected(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    iget-object v6, p1, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/FontModelExt;->getDisplayName(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    xor-int/lit8 v6, v4, 0x1

    invoke-static {v0, v6}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;->previewImage:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;->selectButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz p3, :cond_1

    if-nez v3, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    invoke-static {v0, v7}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;->downloadingButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;->downloadButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-nez p3, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    move v2, v6

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v0, p1, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;->deleteButton:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-nez p3, :cond_3

    if-eqz v1, :cond_3

    if-nez v5, :cond_3

    move v4, v6

    :cond_3
    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/ItemFontShowBinding;->vLine:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->u(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method
