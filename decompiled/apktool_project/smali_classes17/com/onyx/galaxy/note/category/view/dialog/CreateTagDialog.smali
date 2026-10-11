.class public final Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;
.super Lcom/onyx/android/sdk/ui/AutoSizeDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateTagDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/CreateTagDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,313:1\n65#2,16:314\n93#2,3:330\n256#3,2:333\n256#3,2:338\n256#3,2:340\n256#3,2:348\n766#4:335\n857#4,2:336\n288#4,2:342\n1549#4:344\n1620#4,3:345\n*S KotlinDebug\n*F\n+ 1 CreateTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/CreateTagDialog\n*L\n157#1:314,16\n157#1:330,3\n170#1:333,2\n177#1:338,2\n182#1:340,2\n132#1:348,2\n174#1:335\n174#1:336,2\n215#1:342,2\n284#1:344\n284#1:345,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0085\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0007*\u0001B\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010&\u001a\u00020$\u0012\u0010\u0010(\u001a\u000c\u0012\u0004\u0012\u00020\u00150\u0014j\u0002`\u0016\u0012\u0006\u0010+\u001a\u00020)\u00a2\u0006\u0004\u0008F\u0010GJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0003J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u0004H\u0003J\u0008\u0010\r\u001a\u00020\u0004H\u0002J\u0008\u0010\u000e\u001a\u00020\u0004H\u0002J\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J(\u0010\u0018\u001a\u00020\u00042\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0010\u0010\u0017\u001a\u000c\u0012\u0004\u0012\u00020\u00150\u0014j\u0002`\u0016H\u0002J\"\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00122\u0010\u0010\u0017\u001a\u000c\u0012\u0004\u0012\u00020\u00150\u0014j\u0002`\u0016H\u0002J\u0008\u0010\u001b\u001a\u00020\u000fH\u0002J\u000e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J\u0016\u0010\u001e\u001a\u00020\u00122\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0012H\u0002J\u0010\u0010#\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!H\u0002R\u0014\u0010&\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010%R\u001e\u0010(\u001a\u000c\u0012\u0004\u0012\u00020\u00150\u0014j\u0002`\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010*R\u001b\u00100\u001a\u00020,8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008-\u0010/R\u0014\u00103\u001a\u0002018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u00102R\u0014\u00106\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u00105R\u0014\u0010:\u001a\u0002078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u001a\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010;R\u0014\u0010?\u001a\u00020=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010>R\u0016\u0010A\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010@R\u0014\u0010E\u001a\u00020B8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010D\u00a8\u0006H"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;",
        "Lcom/onyx/android/sdk/ui/AutoSizeDialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "dismiss",
        "q",
        "m",
        "Landroid/content/res/Configuration;",
        "configuration",
        "t",
        "p",
        "w",
        "o",
        "",
        "i",
        "",
        "",
        "names",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;",
        "parentNode",
        "g",
        "name",
        "h",
        "f",
        "j",
        "it",
        "l",
        "eventId",
        "v",
        "",
        "level",
        "u",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "rootNode",
        "Lcom/onyx/android/sdk/data/TagCreateFrom;",
        "Lcom/onyx/android/sdk/data/TagCreateFrom;",
        "tagCreateFrom",
        "Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;",
        "k",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;",
        "adapter",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;",
        "n",
        "Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;",
        "tagMatchAdapter",
        "Ljava/util/List;",
        "matchList",
        "Lcom/onyx/android/sdk/data/utils/IntListOption;",
        "Lcom/onyx/android/sdk/data/utils/IntListOption;",
        "colorsOption",
        "I",
        "tagColor",
        "com/onyx/galaxy/note/category/view/dialog/CreateTagDialog$configurationChangedListener$1",
        "r",
        "Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$configurationChangedListener$1;",
        "configurationChangedListener",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/data/TagCreateFrom;)V",
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
        "SMAP\nCreateTagDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/CreateTagDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,313:1\n65#2,16:314\n93#2,3:330\n256#3,2:333\n256#3,2:338\n256#3,2:340\n256#3,2:348\n766#4:335\n857#4,2:336\n288#4,2:342\n1549#4:344\n1620#4,3:345\n*S KotlinDebug\n*F\n+ 1 CreateTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/CreateTagDialog\n*L\n157#1:314,16\n157#1:330,3\n170#1:333,2\n177#1:338,2\n182#1:340,2\n132#1:348,2\n174#1:335\n174#1:336,2\n215#1:342,2\n284#1:344\n284#1:345,3\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/base/data/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/data/TagCreateFrom;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lcom/onyx/android/sdk/data/utils/IntListOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:I

.field public final r:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$configurationChangedListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/data/TagCreateFrom;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/data/TagCreateFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;",
            "Lcom/onyx/android/sdk/data/TagCreateFrom;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagCreateFrom"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->j:Lcom/onyx/android/sdk/data/TagCreateFrom;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->l:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->m:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->n:Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->j()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->o:Ljava/util/List;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    sget-object p2, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->getDEFAULT_TAG_COLOR_LIST()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getTagColorListOption(Ljava/util/List;)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->p:Lcom/onyx/android/sdk/data/utils/IntListOption;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p3

    const/4 v0, 0x2

    if-gt v0, p3, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->getDEFAULT_TAG_COLOR()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->q:I

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$configurationChangedListener$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$configurationChangedListener$1;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->r:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$configurationChangedListener$1;

    return-void
.end method

.method public static final synthetic access$createTag(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->i()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->l:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getColorsOption$p(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)Lcom/onyx/android/sdk/data/utils/IntListOption;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->p:Lcom/onyx/android/sdk/data/utils/IntListOption;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$positionListByOrientation(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->t(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static final synthetic access$reportDoneEvent(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->u(I)V

    return-void
.end method

.method public static final synthetic access$setTagColor$p(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->q:I

    return-void
.end method

.method public static final synthetic access$showFilterTag(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->w()V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->n(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->r(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->s(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    iget-object p2, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->n:Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;

    invoke-virtual {p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->rvFilter:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    const-string p2, "rvFilter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->n:Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->i()Z

    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_tag_add_0005"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-super {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->r:Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$configurationChangedListener$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->m:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public final f()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->dialog_create_tag_error:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    move p0, v3

    :goto_0
    return p0
.end method

.method public final g(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;-><init>()V

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->q:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->setColor(I)V

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->j:Lcom/onyx/android/sdk/data/TagCreateFrom;

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/TagCreateFrom;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/action/CreateMultipleSubTagAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$a;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$a;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->u(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->m:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final h(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;-><init>()V

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->q:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->setColor(I)V

    new-instance v1, Lcom/onyx/galaxy/note/category/action/CreateTagAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->j:Lcom/onyx/android/sdk/data/TagCreateFrom;

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/onyx/galaxy/note/category/action/CreateTagAction;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;Lcom/onyx/android/sdk/data/TagCreateFrom;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/action/CreateTagAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$b;

    invoke-direct {v0, p0, p2}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$b;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string p2, "subscribe(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->m:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final i()Z
    .locals 12

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    const/16 v3, 0x2f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v3, v8, v0, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, v2, v0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->h(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    goto/16 :goto_3

    :cond_0
    new-array v0, v1, [C

    aput-char v3, v0, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    const/4 v4, -0x1

    if-ltz v3, :cond_5

    move v5, v4

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v10}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_2
    move-object v7, v9

    :goto_1
    move-object v6, v7

    check-cast v6, Lcom/onyx/android/sdk/base/data/TreeNode;

    if-nez v6, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    if-eq v8, v3, :cond_4

    add-int/lit8 v2, v8, 0x1

    move v5, v8

    move v8, v2

    move-object v2, v6

    goto :goto_0

    :cond_4
    move-object v2, v6

    goto :goto_2

    :cond_5
    move v8, v4

    :goto_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    if-ne v8, v3, :cond_6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->h(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    goto :goto_3

    :cond_6
    if-eq v8, v4, :cond_7

    add-int/2addr v8, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v8, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_7
    invoke-virtual {p0, v0, v2}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->g(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    :cond_8
    :goto_3
    return v1
.end method

.method public final j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->isTop()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->l(Lcom/onyx/android/sdk/base/data/TreeNode;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/base/data/TreeNode;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->rvFilter:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->n:Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "getConfiguration(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->t(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->n:Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;

    new-instance v1, Lcom/sunia/HTREnginev2/wge;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wge;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->l:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->p:Lcom/onyx/android/sdk/data/utils/IntListOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/extension/IntList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setSelectedPosition(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->l:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initColorAdapter$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initColorAdapter$1;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setColorViewListener(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->l:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->p:Lcom/onyx/android/sdk/data/utils/IntListOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->h:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->l:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffcd

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initInput$1$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initInput$1$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/TextViewKt;->onEditorDoneActionListener(Landroid/widget/TextView;Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initInput$lambda$5$$inlined$addTextChangedListener$default$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog$initInput$lambda$5$$inlined$addTextChangedListener$default$1;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p0, Lcom/onyx/galaxy/note/category/view/CreateTagInputFilter;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/view/CreateTagInputFilter;-><init>()V

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/ui/ext/EditextExtKt;->addInputFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public final q()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->tvOk:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v0, "tvOk"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/uge;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/uge;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/vge;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vge;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->p()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->ivTagFaceBottom:Landroid/widget/ImageView;

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->q:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->ivTagFaceIcon:Landroid/widget/ImageView;

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_02:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->o()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->tvCounter:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;->getMaxLengthDisplay()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final t(Landroid/content/res/Configuration;)V
    .locals 7

    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->clsRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget p1, Lcom/onyx/galaxy/note/R$id;->rv_filter:I

    const/4 v0, 0x4

    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->rv_filter:I

    const/4 v2, 0x3

    sget v3, Lcom/onyx/galaxy/note/R$id;->til_name:I

    const/4 v4, 0x4

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v5

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/onyx/galaxy/note/R$id;->rv_filter:I

    const/4 v0, 0x3

    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    sget v1, Lcom/onyx/galaxy/note/R$id;->rv_filter:I

    const/4 v2, 0x4

    sget v3, Lcom/onyx/galaxy/note/R$id;->til_name:I

    const/4 v4, 0x3

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v5

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->clsRoot:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {v6, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final u(I)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->j:Lcom/onyx/android/sdk/data/TagCreateFrom;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->getTriggerFromByTagCreateFrom(Lcom/onyx/android/sdk/data/TagCreateFrom;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "trigger_from"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->q:I

    invoke-static {p0}, Lcom/blankj/utilcode/util/ColorUtils;->int2ArgbString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "int2ArgbString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tag_color"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "tag_level"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const-string p1, "click_galaxy_tag_add_0004"

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    sget-object v1, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->INSTANCE:Lcom/onyx/android/sdk/data/OnyxStatisticConstant;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->j:Lcom/onyx/android/sdk/data/TagCreateFrom;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/data/OnyxStatisticConstant;->getTriggerFromByTagCreateFrom(Lcom/onyx/android/sdk/data/TagCreateFrom;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "trigger_from"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final w()V
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const-string v3, "rvFilter"

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->rvFilter:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->o:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v7, v0, v6, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->rvFilter:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->n:Lcom/onyx/galaxy/note/category/view/adapter/TagMatchAdapter;

    invoke-virtual {v0, v4}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/CreateTagDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogCreateTagBinding;->rvFilter:Lcom/onyx/galaxy/note/common/view/MaxHeightRecyclerView;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
