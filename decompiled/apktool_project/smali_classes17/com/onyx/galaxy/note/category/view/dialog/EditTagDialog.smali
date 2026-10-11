.class public final Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;
.super Lcom/onyx/android/sdk/ui/AutoSizeDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditTagDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditTagDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,167:1\n65#2,16:168\n93#2,3:184\n*S KotlinDebug\n*F\n+ 1 EditTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditTagDialog\n*L\n116#1:168,16\n116#1:184,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u0012\u0010\u0010\u0018\u001a\u000c\u0012\u0004\u0012\u00020\u00150\u0014j\u0002`\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0003J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0003J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000c\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0004H\u0002R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0012R\u001e\u0010\u0018\u001a\u000c\u0012\u0004\u0012\u00020\u00150\u0014j\u0002`\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0017R\u001b\u0010\u001d\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010(\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\'R\u0016\u0010+\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;",
        "Lcom/onyx/android/sdk/ui/AutoSizeDialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "dismiss",
        "j",
        "h",
        "i",
        "",
        "f",
        "e",
        "",
        "eventId",
        "n",
        "m",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "node",
        "Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;",
        "Lkotlin/Lazy;",
        "g",
        "()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;",
        "k",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;",
        "adapter",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "l",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "Lcom/onyx/android/sdk/data/utils/IntListOption;",
        "Lcom/onyx/android/sdk/data/utils/IntListOption;",
        "colorsOption",
        "",
        "I",
        "tagColor",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;)V",
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
        "SMAP\nEditTagDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditTagDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,167:1\n65#2,16:168\n93#2,3:184\n*S KotlinDebug\n*F\n+ 1 EditTagDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditTagDialog\n*L\n116#1:168,16\n116#1:184,3\n*E\n"
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

.field public final j:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lcom/onyx/android/sdk/data/utils/IntListOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->j:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->k:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->l:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->getDEFAULT_TAG_COLOR_LIST()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getTagColorListOption(Ljava/util/List;)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->m:Lcom/onyx/android/sdk/data/utils/IntListOption;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->n:I

    return-void
.end method

.method public static final synthetic access$editTag(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->f()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->k:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;)Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getColorsOption$p(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;)Lcom/onyx/android/sdk/data/utils/IntListOption;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->m:Lcom/onyx/android/sdk/data/utils/IntListOption;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$setTagColor$p(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->n:I

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->l(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->k(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final k(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->m()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->f()Z

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_tag_0008"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->l:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public final e()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

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

.method public final f()Z
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->n:I

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result v4

    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->dismiss()V

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->n:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->setColor(I)V

    new-instance v1, Lcom/onyx/galaxy/note/category/action/EditTagAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-direct {v1, v0, v2}, Lcom/onyx/galaxy/note/category/action/EditTagAction;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/action/EditTagAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog$a;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->l:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_1
    return v3
.end method

.method public final g()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;

    return-object p0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->k:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->m:Lcom/onyx/android/sdk/data/utils/IntListOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/extension/IntList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setSelectedPosition(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->k:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog$initColorAdapter$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog$initColorAdapter$1;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setColorViewListener(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->k:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->m:Lcom/onyx/android/sdk/data/utils/IntListOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->h:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->k:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final i()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog$initInput$1$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog$initInput$1$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/TextViewKt;->onEditorDoneActionListener(Landroid/widget/TextView;Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog$initInput$lambda$3$$inlined$addTextChangedListener$default$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog$initInput$lambda$3$$inlined$addTextChangedListener$default$1;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p0, Lcom/onyx/galaxy/note/category/view/EditTagInputFilter;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/view/EditTagInputFilter;-><init>()V

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/ui/ext/EditextExtKt;->addInputFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V

    return-void
.end method

.method public final j()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;->tvOk:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvOk"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/slf;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/slf;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/tlf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tlf;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;->tvCounter:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/extension/StringRuleLengthKt;->getShowLength(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;->getMaxLengthDisplay()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;->ivTagFaceBottom:Landroid/widget/ImageView;

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->n:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditTagBinding;->ivTagFaceTop:Landroid/widget/ImageView;

    sget v1, Lcom/onyx/android/sdk/skin/R$color;->theme_icon_color_02:I

    invoke-static {v1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->i()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->h()V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag_id"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->n:I

    invoke-static {p0}, Lcom/blankj/utilcode/util/ColorUtils;->int2ArgbString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "int2ArgbString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tag_color"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const-string v1, "click_galaxy_tag_0007"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditTagDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "tag_id"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffca

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
