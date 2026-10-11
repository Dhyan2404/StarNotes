.class public final Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;
.super Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddToDocTocDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddToDocTocDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,178:1\n65#2,16:179\n93#2,3:195\n1855#3,2:198\n*S KotlinDebug\n*F\n+ 1 AddToDocTocDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog\n*L\n93#1:179,16\n93#1:195,3\n147#1:198,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0014\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0008\u0012\u0010\u0008\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0019\u00a2\u0006\u0004\u0008 \u0010!J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0008H\u0002R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0015R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0017R\u001c\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u001aR\u001b\u0010\u001f\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u001d\u001a\u0004\u0008\u0011\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;",
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
        "tocEntry",
        "Ljava/lang/String;",
        "formFlag",
        "Lkotlin/Function0;",
        "Lkotlin/jvm/functions/Function0;",
        "onAddCallback",
        "Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;",
        "binding",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
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
        "SMAP\nAddToDocTocDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddToDocTocDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,178:1\n65#2,16:179\n93#2,3:195\n1855#3,2:198\n*S KotlinDebug\n*F\n+ 1 AddToDocTocDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog\n*L\n93#1:179,16\n93#1:195,3\n147#1:198,2\n*E\n"
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final n:Lkotlin/jvm/functions/Function0;
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

.field public final o:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
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
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
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

    const-string v0, "tocEntry"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    .line 6
    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->m:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->n:Lkotlin/jvm/functions/Function0;

    .line 8
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog$binding$2;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->o:Lkotlin/Lazy;

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->m()V

    .line 12
    new-instance p1, Lcom/sunia/HTREnginev2/w8;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/w8;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 13
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->tvConfirm:Lcom/onyx/android/sdk/ui/MediumTextView;

    new-instance p2, Lcom/sunia/HTREnginev2/x8;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/x8;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance p2, Lcom/sunia/HTREnginev2/y8;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/y8;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "view_galaxy_outline_add_0010"

    .line 15
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "view_galaxy_outline_add_0016"

    goto :goto_0

    :cond_0
    const-string p1, "view_galaxy_outline_add_0014"

    .line 16
    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->n(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$setEditCount(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->o(I)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->g(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->h(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->f(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final f(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;Landroid/content/DialogInterface;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const-string p1, "titleEdit"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postToShowInputKeyboard$default(Landroid/view/View;JILjava/lang/Object;)V

    return-void
.end method

.method public static final g(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->i()V

    return-void
.end method

.method public static final h(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->m:Ljava/lang/String;

    const-string v0, "view_galaxy_outline_add_0010"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "click_galaxy_outline_add_0011"

    goto :goto_0

    :cond_0
    const-string p1, "click_galaxy_outline_add_0009"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->j()V

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->l()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

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
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/BaseTocUpdateDialog;->checkInputPageNumber(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->j()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->n:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    sget-object v2, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v5, Lcom/onyx/galaxy/note/R$string;->add_success:I

    const/4 v6, 0x2

    invoke-static {v2, v5, v3, v6, v4}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->setPageIndex(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/InsertTocEntryEvent;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/app/InsertTocEntryEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->m:Ljava/lang/String;

    const-string v1, "view_galaxy_outline_add_0010"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "click_galaxy_outline_add_0012"

    goto :goto_0

    :cond_4
    const-string v0, "click_galaxy_outline_add_0010"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->j()V

    :cond_5
    return-void
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog$dismissSafe$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog$dismissSafe$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->o:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->readTableOfContent()Lcom/onyx/android/sdk/base/data/Tree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/Tree;->childrenToList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/Tree;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k:Landroid/content/Context;

    sget v2, Lcom/onyx/galaxy/note/R$string;->unnamed_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ""

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "format(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/2addr v5, v4

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k:Landroid/content/Context;

    sget v6, Lcom/onyx/galaxy/note/R$string;->unnamed_title:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/onyx/android/sdk/base/extension/IntKt;->formatNumber(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public final m()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const-string v1, "titleEdit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$integer;->toc_entry_title_max_char_length:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v4, v2, v5, v3}, Lcom/onyx/android/sdk/base/extension/TextViewKt;->addCharTextChangedListener$default(Landroid/widget/TextView;IIILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->o(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog$initView$$inlined$addTextChangedListener$default$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog$initView$$inlined$addTextChangedListener$default$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->l:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->pageEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->pageCount(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/IntExtKt;->pageCountHint(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->j:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k()Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogAddToTocBinding;->tvNameSize:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/AddToDocTocDialog;->k:Landroid/content/Context;

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
