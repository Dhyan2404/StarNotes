.class public final Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog$checkEmptyDataObserver$2$1;
.super Lcom/onyx/galaxy/note/common/view/AdapterDataModifiedObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog$checkEmptyDataObserver$2;->invoke()Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog$checkEmptyDataObserver$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManageFolderDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog$checkEmptyDataObserver$2$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,225:1\n256#2,2:226\n*S KotlinDebug\n*F\n+ 1 ManageFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog$checkEmptyDataObserver$2$1\n*L\n68#1:226,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/dialog/ManageFolderDialog$checkEmptyDataObserver$2$1",
        "Lcom/onyx/galaxy/note/common/view/AdapterDataModifiedObserver;",
        "onDataChanged",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nManageFolderDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManageFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog$checkEmptyDataObserver$2$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,225:1\n256#2,2:226\n*S KotlinDebug\n*F\n+ 1 ManageFolderDialog.kt\ncom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog$checkEmptyDataObserver$2$1\n*L\n68#1:226,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog$checkEmptyDataObserver$2$1;->a:Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/view/AdapterDataModifiedObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog$checkEmptyDataObserver$2$1;->a:Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;->access$getBinding(Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;)Lcom/onyx/galaxy/note/databinding/DialogManageFolderBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogManageFolderBinding;->includeEmptyView:Lcom/onyx/galaxy/note/databinding/EmptyViewManageFolderBinding;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/databinding/EmptyViewManageFolderBinding;->getRoot()Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog$checkEmptyDataObserver$2$1;->a:Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;->access$getAdapter(Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;)Lcom/onyx/galaxy/note/category/view/adapter/ManageFolderAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
