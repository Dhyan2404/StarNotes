.class public final Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;->e:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;->e:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->access$isShowSmallLayout(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)Z

    move-result v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;->e:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogPageMarginAdjustBinding;->pageMarginView:Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/PageMarginAdjustView;->isSmallWindowLayout()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;->e:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;->e:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->access$getActivityContext$p(Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$checkAndReShowRunnable$1;->e:Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
