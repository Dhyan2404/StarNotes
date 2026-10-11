.class public final Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;
.super Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddDocTocEntryDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddDocTocEntryDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,214:1\n65#2,16:215\n93#2,3:231\n*S KotlinDebug\n*F\n+ 1 AddDocTocEntryDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog\n*L\n127#1:215,16\n127#1:231,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0014\u0012\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0017\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0008\u0012\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001c\u00a2\u0006\u0004\u0008$\u0010%J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0008H\u0002R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0015R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0018R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u001aR\u001c\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\u0011\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;",
        "Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;",
        "",
        "m",
        "",
        "count",
        "o",
        "i",
        "",
        "l",
        "j",
        "eventId",
        "n",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Landroid/content/Context;",
        "k",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "parentTocEntry",
        "",
        "Ljava/util/Set;",
        "titleList",
        "Ljava/lang/String;",
        "fromFlag",
        "Lkotlin/Function0;",
        "Lkotlin/jvm/functions/Function0;",
        "onAddCallback",
        "Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;",
        "p",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;",
        "binding",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/util/Set;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
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
        "SMAP\nAddDocTocEntryDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddDocTocEntryDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,214:1\n65#2,16:215\n93#2,3:231\n*S KotlinDebug\n*F\n+ 1 AddDocTocEntryDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog\n*L\n127#1:215,16\n127#1:231,3\n*E\n"
    }
.end annotation


# instance fields
.field public final j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final o:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final p:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/util/Set;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    .line 6
    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->m:Ljava/util/Set;

    .line 7
    iput-object p5, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->n:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->o:Lkotlin/jvm/functions/Function0;

    .line 9
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->p:Lkotlin/Lazy;

    .line 10
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->m()V

    .line 13
    new-instance p1, Lcom/sunia/HTREnginev2/m8;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/m8;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 14
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->tvConfirm:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance p2, Lcom/sunia/HTREnginev2/n8;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/n8;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance p2, Lcom/sunia/HTREnginev2/o8;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/o8;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p5, :cond_4

    .line 16
    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string p1, "click_galaxy_outline_add_0008"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "view_galaxy_outline_add_0014"

    goto :goto_1

    :pswitch_2
    const-string p1, "click_galaxy_outline_add_0007"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "view_galaxy_outline_add_0011"

    goto :goto_1

    :pswitch_3
    const-string p1, "click_galaxy_outline_add_0006"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "view_galaxy_outline_add_0007"

    goto :goto_1

    :pswitch_4
    const-string p1, "click_galaxy_outline_add_0003"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "view_galaxy_outline_add_0004"

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "view_galaxy_outline_add_0001"

    .line 17
    :goto_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->n(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch -0x3282b02a
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/util/Set;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1
    invoke-direct/range {v2 .. v8}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/util/Set;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$setEditCount(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->o(I)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->h(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->g(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->f(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;Landroid/content/DialogInterface;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const-string p1, "titleEdit"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postToShowInputKeyboard$default(Landroid/view/View;JILjava/lang/Object;)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->i()V

    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->n:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, "click_galaxy_outline_add_0008"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "click_galaxy_outline_add_0009"

    goto :goto_1

    :pswitch_2
    const-string v0, "click_galaxy_outline_add_0007"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "click_galaxy_outline_add_0022"

    goto :goto_1

    :pswitch_3
    const-string v0, "click_galaxy_outline_add_0006"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "click_galaxy_outline_add_0020"

    goto :goto_1

    :pswitch_4
    const-string v0, "click_galaxy_outline_add_0003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "click_galaxy_outline_add_0018"

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "click_galaxy_outline_add_0015"

    :goto_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->j()V

    return-void

    :pswitch_data_0
    .packed-switch -0x3282b02a
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final i()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->l()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const-string v2, "pageEdit"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Lcom/onyx/android/sdk/base/extension/TextViewKt;->checkInputEmpty$default(Landroid/widget/TextView;IILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;->checkInputPageNumber(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-direct {v2, v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v4

    :goto_0
    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setParentId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->o:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->add_success:I

    const/4 v5, 0x2

    invoke-static {v0, v1, v3, v5, v4}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/InsertTocEntryEvent;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/InsertTocEntryEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->n:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const-string v1, "click_galaxy_outline_add_0008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "click_galaxy_outline_add_0010"

    goto :goto_2

    :pswitch_2
    const-string v1, "click_galaxy_outline_add_0007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v0, "click_galaxy_outline_add_0023"

    goto :goto_2

    :pswitch_3
    const-string v1, "click_galaxy_outline_add_0006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "click_galaxy_outline_add_0021"

    goto :goto_2

    :pswitch_4
    const-string v1, "click_galaxy_outline_add_0003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const-string v0, "click_galaxy_outline_add_0019"

    goto :goto_2

    :cond_8
    :goto_1
    const-string v0, "click_galaxy_outline_add_0017"

    :goto_2
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->j()V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3282b02a
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog$dismissSafe$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog$dismissSafe$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->p:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 6

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k:Landroid/content/Context;

    sget v1, Lcom/onyx/galaxy/note/R$string;->unnamed_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->m:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/2addr v4, v3

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k:Landroid/content/Context;

    sget v5, Lcom/onyx/galaxy/note/R$string;->unnamed_title:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/IntKt;->formatNumber(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final m()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v3, Lcom/onyx/galaxy/note/R$string;->add_to_child_toc:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->tvDesc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v3, Lcom/onyx/galaxy/note/R$string;->add_child_toc_title_desc:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->tvTocTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k:Landroid/content/Context;

    sget v4, Lcom/onyx/galaxy/note/R$string;->parent_toc_entry_format:I

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->input_sub_toc_entry_title:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->tvTitle:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v2, Lcom/onyx/galaxy/note/R$string;->add_to_toc:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->input_toc_entry_title:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const-string v2, "titleEdit"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$integer;->toc_entry_title_max_char_length:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v5, v4, v6, v1}, Lcom/onyx/android/sdk/base/extension/TextViewKt;->addCharTextChangedListener$default(Landroid/widget/TextView;IIILjava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->o(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog$initView$$inlined$addTextChangedListener$default$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog$initView$$inlined$addTextChangedListener$default$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->pageCount(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v2

    invoke-static {v2}, Lcom/onyx/galaxy/note/common/extension/IntExtKt;->pageCountHint(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageNumber(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const-string v0, "pageEdit"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$integer;->toc_entry_title_max_char_length:I

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    invoke-static {p0, v5, v0, v6, v1}, Lcom/onyx/android/sdk/base/extension/TextViewKt;->addCharTextChangedListener$default(Landroid/widget/TextView;IIILjava/lang/Object;)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "note_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {v1, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final o(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogUpdateTocEntryTitleBinding;->tvNameSize:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddDocTocEntryDialog;->k:Landroid/content/Context;

    sget v1, Lcom/onyx/galaxy/note/R$string;->oblique:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->toc_entry_title_max_char_length:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
