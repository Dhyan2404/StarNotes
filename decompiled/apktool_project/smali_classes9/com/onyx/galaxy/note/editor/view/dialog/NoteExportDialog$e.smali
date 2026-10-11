.class public final Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->v(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$e;->e:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$e;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$e;->e:Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$e;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "progressDialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getProgress()D

    move-result-wide v1

    double-to-int p1, v1

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->access$updateProgress(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;Lcom/onyx/galaxy/note/common/view/CommonProgressDialog;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$e;->a(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method
