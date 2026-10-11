.class public final Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;
.super Lcom/onyx/android/sdk/ui/AutoSizeDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteExportDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteExportDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,473:1\n256#2,2:474\n1855#3,2:476\n1747#3,3:478\n*S KotlinDebug\n*F\n+ 1 NoteExportDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog\n*L\n205#1:474,2\n286#1:476,2\n403#1:478,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001WB%\u0012\u0006\u0010C\u001a\u00020@\u0012\u0006\u0010T\u001a\u00020S\u0012\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020E0D\u00a2\u0006\u0004\u0008U\u0010VJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u0008\u0010\u0014\u001a\u00020\u0002H\u0002J\u0008\u0010\u0015\u001a\u00020\u0002H\u0002J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002J\u0008\u0010\u0017\u001a\u00020\u0002H\u0002J\u0008\u0010\u0018\u001a\u00020\u0002H\u0002J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002J\u0008\u0010\u001a\u001a\u00020\u0002H\u0002J\u0008\u0010\u001b\u001a\u00020\u0002H\u0002J$\u0010 \u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u00102\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002J5\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\"0&\"\u000e\u0008\u0000\u0010#*\u0008\u0012\u0004\u0012\u00020\"0!2\u0006\u0010$\u001a\u00028\u00002\u0006\u0010%\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u0008\u0010)\u001a\u00020\u0002H\u0002J\u0018\u0010-\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020\u0005H\u0002J\u0008\u0010.\u001a\u00020\u0002H\u0003J\u0010\u00100\u001a\u00020\u00022\u0006\u0010/\u001a\u00020\u0010H\u0002J\u0010\u00103\u001a\u00020\u00022\u0006\u00102\u001a\u000201H\u0002J\u0010\u00105\u001a\u00020\u00102\u0006\u00104\u001a\u00020\u0010H\u0002J\u0008\u00106\u001a\u00020\rH\u0002J\u000e\u00107\u001a\u0008\u0012\u0004\u0012\u00020*0&H\u0002J\u0010\u00108\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u0005H\u0002J\u000e\u0010;\u001a\u00020\u00022\u0006\u0010:\u001a\u000209J\u000e\u0010=\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0010J\u0010\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u0000H\u0007R\u0014\u0010C\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u001a\u0010H\u001a\u0008\u0012\u0004\u0012\u00020E0D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u001b\u0010N\u001a\u00020I8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010MR\u0018\u0010:\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0016\u0010R\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010\u000f\u00a8\u0006X"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;",
        "Lcom/onyx/android/sdk/ui/AutoSizeDialog;",
        "",
        "U",
        "M",
        "",
        "id",
        "h0",
        "R",
        "g0",
        "checkedId",
        "a0",
        "S",
        "",
        "hasFocus",
        "Z",
        "",
        "name",
        "z",
        "u",
        "c0",
        "L",
        "F",
        "A",
        "D",
        "H",
        "C",
        "E",
        "filePath",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;",
        "actionMapper",
        "B",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "T",
        "action",
        "exportFilePath",
        "Lio/reactivex/rxjava3/core/Observable;",
        "v",
        "(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;",
        "y",
        "Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;",
        "progressDialog",
        "progress",
        "f0",
        "b0",
        "path",
        "Y",
        "",
        "e",
        "X",
        "extension",
        "J",
        "W",
        "d0",
        "K",
        "Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;",
        "listener",
        "setListener",
        "text",
        "setExportPageRangeText",
        "event",
        "onNoteExportDialog",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "h",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "docManagerBundle",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
        "i",
        "Ljava/util/List;",
        "exportArgsList",
        "Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;",
        "j",
        "Lkotlin/Lazy;",
        "I",
        "()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;",
        "binding",
        "k",
        "Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;",
        "l",
        "canShare",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/util/List;)V",
        "ExportListener",
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
        "SMAP\nNoteExportDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteExportDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,473:1\n256#2,2:474\n1855#3,2:476\n1747#3,3:478\n*S KotlinDebug\n*F\n+ 1 NoteExportDialog.kt\ncom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog\n*L\n205#1:474,2\n286#1:476,2\n403#1:478,3\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
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

.field public k:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
            ">;)V"
        }
    .end annotation

    const-string v0, "docManagerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportArgsList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->i:Ljava/util/List;

    new-instance p1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$binding$2;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$binding$2;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->j:Lkotlin/Lazy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->l:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "getRoot(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->U()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->R()V

    new-instance p1, Lcom/sunia/HTREnginev2/tvj;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/tvj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvExport:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance p2, Lcom/sunia/HTREnginev2/uvj;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/uvj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvShare:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance p2, Lcom/sunia/HTREnginev2/vvj;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/vvj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvCancel:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance p2, Lcom/sunia/HTREnginev2/wvj;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/wvj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final G(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->A()V

    return-void
.end method

.method public static final N(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->h0(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->a0(I)V

    return-void
.end method

.method public static final O(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->h0(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->a0(I)V

    return-void
.end method

.method public static final P(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->h0(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->a0(I)V

    return-void
.end method

.method public static final Q(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->h0(I)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->a0(I)V

    return-void
.end method

.method public static final T(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->Z(Z)V

    return-void
.end method

.method public static final V(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->L()V

    return-void
.end method

.method public static final synthetic access$buildExportAction(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Lcom/onyx/android/sdk/base/rx/RxBaseAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->v(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkExportDirFreeSpace(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->y()V

    return-void
.end method

.method public static final synthetic access$checkNameLength(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->z(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getDocManagerBundle$p(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static final synthetic access$getExportArgsList$p(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->i:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$onExportFail(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->X(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$resetError(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->c0()V

    return-void
.end method

.method public static final synthetic access$updateProgress(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->f0(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;I)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->V(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->s(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->N(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V

    return-void
.end method

.method public static final e0(Lio/reactivex/rxjava3/subjects/ReplaySubject;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "$publisher"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->onComplete()V

    return-void
.end method

.method public static synthetic f(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->x(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->G(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Z)V

    return-void
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->P(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->t(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->r(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->Q(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->O(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lio/reactivex/rxjava3/subjects/ReplaySubject;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->e0(Lio/reactivex/rxjava3/subjects/ReplaySubject;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->T(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->q(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->w(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Ljava/lang/String;)V

    return-void
.end method

.method public static final q(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->l:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->F()V

    return-void
.end method

.method public static final s(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->l:Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->F()V

    return-void
.end method

.method public static final t(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/AutoSizeDialog;->dismiss()V

    return-void
.end method

.method public static final w(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$exportFilePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->Y(Ljava/lang/String;)V

    return-void
.end method

.method public static final x(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const-string v0, "$progressDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "progressDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->i:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->exportWithBackground:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->setExportTemplate(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->vectorPdf:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->H()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->bitmapPdf:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->C()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->imageFile:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->D()V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->E()V

    :goto_2
    return-void
.end method

.method public final B(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/export/BaseExportNoteAction;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateUniqueFileAction;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/name/GenerateUniqueFileAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$f;->e:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$f;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$g;

    invoke-direct {v0, p2}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$g;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$h;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$h;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$i;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$i;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final C()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zip"

    goto :goto_0

    :cond_0
    const-string v0, "pdf"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$exportBitmapPdf$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$exportBitmapPdf$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->B(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final D()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->W()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->i:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->isPageIdEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->i:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->isPageIdMoreThanOne()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "png"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "zip"

    :goto_1
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$exportImageFile$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$exportImageFile$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->B(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final E()V
    .locals 2

    const-string v0, "note"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$exportNoteFile$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$exportNoteFile$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->B(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final F()V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v3, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_EXPORT_NOTE_FUNCTION_NAME()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_EXPORT_NOTE_INTENT_NAME()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->requestStoragePermissionAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/xvj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xvj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final H()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zip"

    goto :goto_0

    :cond_0
    const-string v0, "pdf"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$exportVectorPdf$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$exportVectorPdf$1;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->B(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->j:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    return-object p0
.end method

.method public final J(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getValidFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/onyx/galaxy/note/R$string;->app_name_en:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "getString(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->getExportDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->combinePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final K(I)Ljava/lang/String;
    .locals 1

    sget-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->note_export_progress:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final L()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public final M()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->vectorPdf:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/pvj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/pvj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->bitmapPdf:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/qvj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qvj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->imageFile:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/rvj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rvj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->noteFile:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/svj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/svj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final R()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->g0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->vectorPdf:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvVectorPdf:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final S()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    new-instance v1, Lcom/sunia/HTREnginev2/kvj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/kvj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$initTitleEdit$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$initTitleEdit$2;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->i:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->export_file_multi_file_name:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public final U()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/lvj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/lvj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->savePath:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->export_save_path_format:I

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/onyx/galaxy/note/R$string;->app_name_en:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->getExportRelativeDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->S()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->R()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->M()V

    return-void
.end method

.method public final W()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->i:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->i:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result p0

    return p0
.end method

.method public final X(Ljava/lang/Throwable;)V
    .locals 4

    instance-of v0, p1, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/onyx/android/sdk/base/common/error/OnyxException;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/common/error/OnyxException;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Action Abort"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->note_export_cancelled:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportResultDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v3, "getContext(...)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportResultDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportResultDialog;->onExportFail(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final Y(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->i:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteProgressInfo()Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteProgressInfo;->isError()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :goto_0
    const/4 v1, 0x2

    const-string v4, "getContext(...)"

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportResultDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v5, v1, v5}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportResultDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->i:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportResultDialog;->onExportResult(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->l:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getExtension(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->mimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "application/octet-stream"

    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, v0}, Lcom/onyx/android/sdk/base/extension/ContextKt;->shareFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "substring(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/galaxy/note/R$string;->export_path:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0, v3, v1, v5}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    :goto_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->k:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;

    if-eqz p0, :cond_6

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;->onFileExported(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final Z(Z)V
    .locals 2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->L()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->i:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void
.end method

.method public final a0(I)V
    .locals 2

    sget v0, Lcom/onyx/galaxy/note/R$id;->vector_pdf:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$string;->vector_pdf_desc:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$id;->bitmap_pdf:I

    if-ne p1, v0, :cond_1

    sget v0, Lcom/onyx/galaxy/note/R$string;->bitmap_pdf_desc:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/onyx/galaxy/note/R$id;->image_file:I

    if-ne p1, v0, :cond_2

    sget v0, Lcom/onyx/galaxy/note/R$string;->export_picture_desc:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/onyx/galaxy/note/R$string;->note_file_desc:I

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->formatDesc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->formatWaringDesc:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v1, Lcom/onyx/galaxy/note/R$string;->vector_pdf_warning_desc:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->formatWaringDescContainer:Landroid/widget/LinearLayout;

    const-string v0, "formatWaringDescContainer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/onyx/galaxy/note/R$id;->vector_pdf:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b0()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "setData(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final c0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tilName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d0()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tieName:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->export_note:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget v4, Lcom/onyx/galaxy/note/R$string;->note_exporting:I

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v4, "getContext(...)"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->setTitleText(Ljava/lang/String;)Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->setSubText(Ljava/lang/String;)Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$showProgressDialog$dialog$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$showProgressDialog$dialog$1;-><init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->showCloseButton(Lkotlin/jvm/functions/Function0;)Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/mvj;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/mvj;-><init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final f0(Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->updateProgress(I)V

    const/16 p0, 0x64

    if-lt p2, p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final g0()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getScreenDevice()Lcom/onyx/android/sdk/device/IScreen;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/device/IScreen;->getScreenInfo()Lcom/onyx/android/sdk/device/bean/ScreenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getScreenDisplayType()Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;->PHONE:Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_87:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_116:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getScreenDisplayType()Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    move-result-object v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_75:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_100:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->vectorPdf:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    float-to-int v1, v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->vectorPdf:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    float-to-int v0, v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->bitmapPdf:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->bitmapPdf:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->imageFile:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->imageFile:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->noteFile:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->noteFile:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public final h0(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->vectorPdf:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/onyx/galaxy/note/R$id;->vector_pdf:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvVectorPdf:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v1, Lcom/onyx/galaxy/note/R$id;->vector_pdf:I

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->bitmapPdf:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/onyx/galaxy/note/R$id;->bitmap_pdf:I

    if-ne p1, v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvBitmapPdf:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v1, Lcom/onyx/galaxy/note/R$id;->bitmap_pdf:I

    if-ne p1, v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->imageFile:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/onyx/galaxy/note/R$id;->image_file:I

    if-ne p1, v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvImageFile:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v1, Lcom/onyx/galaxy/note/R$id;->image_file:I

    if-ne p1, v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->noteFile:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/onyx/galaxy/note/R$id;->note_file:I

    if-ne p1, v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    move v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvNoteFile:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget v0, Lcom/onyx/galaxy/note/R$id;->note_file:I

    if-ne p1, v0, :cond_7

    goto :goto_7

    :cond_7
    move v2, v3

    :goto_7
    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final onNoteExportDialog(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->A()V

    return-void
.end method

.method public final setExportPageRangeText(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->llExportPages:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tvExportPages:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final setListener(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->k:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;

    return-void
.end method

.method public final u()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->I()Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteExportBinding;->tilName:Lcom/onyx/android/sdk/theme/widgets/TintTextInputLayoutView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/onyx/galaxy/note/R$string;->no_more_than_bytes_placeholder:I

    const/16 v2, 0xfe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final v(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;>(TT;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->d0()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$a;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$b;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$b;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$c;

    invoke-direct {v2, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$c;-><init>(Lcom/onyx/android/sdk/base/rx/RxBaseAction;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$d;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$e;

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$e;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/nvj;

    invoke-direct {v1, p0, p2}, Lcom/sunia/HTREnginev2/nvj;-><init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/ovj;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/ovj;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doFinally(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final y()V
    .locals 7

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/onyx/galaxy/note/R$string;->app_name_en:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->getExportDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/StatFsUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/StatFsUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/extension/NoteExporter;->getExportRootDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/StatFsUtils;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    const-wide/32 v2, 0xfa00000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    return-void

    :cond_2
    const-class v4, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkExportFreeSpace() SpaceNotEnoughException path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";freeSpace:"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ";exportLimitStorageSize:"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/onyx/android/sdk/data/common/exception/SpaceNotEnoughException;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/exception/SpaceNotEnoughException;-><init>()V

    throw p0
.end method

.method public final z(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "getBytes(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p1, p1

    const/16 v0, 0xfe

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->u()V

    return v1

    :cond_1
    return v2
.end method
