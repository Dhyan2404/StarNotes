.class public final Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;
.super Lcom/onyx/android/sdk/ui/AutoSizeDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditFolderDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditFolderDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,170:1\n1#2:171\n65#3,16:172\n93#3,3:188\n*S KotlinDebug\n*F\n+ 1 EditFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditFolderDialog\n*L\n120#1:172,16\n120#1:188,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u0012\u0010\u0010\u0019\u001a\u000c\u0012\u0004\u0012\u00020\u00160\u0015j\u0002`\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u000e\u00a2\u0006\u0004\u0008/\u00100J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0003J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0003J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010\r\u001a\u00020\u000bH\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0002R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0013R\u001e\u0010\u0019\u001a\u000c\u0012\u0004\u0012\u00020\u00160\u0015j\u0002`\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u001aR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010*R\u0016\u0010.\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010-\u00a8\u00061"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;",
        "Lcom/onyx/android/sdk/ui/AutoSizeDialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "dismiss",
        "k",
        "h",
        "i",
        "j",
        "",
        "f",
        "e",
        "",
        "eventId",
        "o",
        "n",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "node",
        "Ljava/lang/String;",
        "tag",
        "Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;",
        "Lkotlin/Lazy;",
        "g",
        "()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;",
        "l",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;",
        "adapter",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "m",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "Lcom/onyx/android/sdk/data/utils/IntListOption;",
        "Lcom/onyx/android/sdk/data/utils/IntListOption;",
        "colorsOption",
        "",
        "I",
        "folderColor",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)V",
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
        "SMAP\nEditFolderDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditFolderDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,170:1\n1#2:171\n65#3,16:172\n93#3,3:188\n*S KotlinDebug\n*F\n+ 1 EditFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/EditFolderDialog\n*L\n120#1:172,16\n120#1:188,3\n*E\n"
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
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Ljava/lang/String;
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

.field public final n:Lcom/onyx/android/sdk/data/utils/IntListOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TreeNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    iput-object p3, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->j:Ljava/lang/String;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->k:Lkotlin/Lazy;

    new-instance p1, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-direct {p1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->l:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->m:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    sget-object p3, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;

    invoke-virtual {p3}, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->getDEFAULT_FOLDER_COLOR_LIST()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getFolderColorListOption(Ljava/util/List;)Lcom/onyx/android/sdk/data/utils/IntListOption;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->n:Lcom/onyx/android/sdk/data/utils/IntListOption;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result p1

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->o:I

    return-void
.end method

.method public static final synthetic access$editFolder(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->f()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAdapter$p(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->l:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;)Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getColorsOption$p(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;)Lcom/onyx/android/sdk/data/utils/IntListOption;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->n:Lcom/onyx/android/sdk/data/utils/IntListOption;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$initFaceColor(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->i()V

    return-void
.end method

.method public static final synthetic access$setFolderColor$p(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->o:I

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->l(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->m(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_folder_0007"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->f()Z

    return-void
.end method

.method public static final m(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_folder_0008"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->o(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->m:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public final e()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

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

    sget v0, Lcom/onyx/galaxy/note/R$string;->dialog_create_folder_error:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    move p0, v3

    :goto_0
    return p0
.end method

.method public final f()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->o:I

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->getColor()I

    move-result v1

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->dismiss()V

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getStyle()Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->o:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/style/StyleAttr;->setColor(I)V

    new-instance v1, Lcom/onyx/galaxy/note/category/action/EditFolderAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-direct {v1, v0, v2}, Lcom/onyx/galaxy/note/category/action/EditFolderAction;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/TreeNode;)V

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/action/EditFolderAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog$a;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->m:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_1
    return v3
.end method

.method public final g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    return-object p0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->l:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->n:Lcom/onyx/android/sdk/data/utils/IntListOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v1

    iget v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/extension/IntList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setSelectedPosition(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->l:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog$initColorAdapter$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog$initColorAdapter$1;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setColorViewListener(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->l:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->n:Lcom/onyx/android/sdk/data/utils/IntListOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/IntListOption;->get()Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->h:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->l:Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final i()V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/utils/ThumbnailColorUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/ThumbnailColorUtils;

    iget v1, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->o:I

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/utils/ThumbnailColorUtils;->getFolderThumbnailAlphaColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/ThumbnailColorUtils;->getFolderThumbnailWhiteAlphaColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->ivFaceBottom:Lcom/google/android/material/imageview/ShapeableImageView;

    iget v3, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->o:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->ivFaceFourthTop:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->ivFaceThrTop:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final j()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog$initInput$1$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog$initInput$1$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/TextViewKt;->onEditorDoneActionListener(Landroid/widget/TextView;Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog$initInput$lambda$4$$inlined$addTextChangedListener$default$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog$initInput$lambda$4$$inlined$addTextChangedListener$default$1;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final k()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->tvOk:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvOk"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/dlf;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/dlf;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/elf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/elf;-><init>(Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->j()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->i()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->tvCounter:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/extension/StringRuleLengthKt;->getShowLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->g()Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogEditFolderBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;->getMaxLengthDisplay()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->h()V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "folder_id"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iget p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->o:I

    invoke-static {p0}, Lcom/blankj/utilcode/util/ColorUtils;->int2ArgbString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "int2ArgbString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "folder_color"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;->i:Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "folder_id"

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

    const v1, -0x54ffffcc

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
