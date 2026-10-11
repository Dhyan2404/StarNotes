.class public final Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$initView$manageTagHandlerImpl$1;
.super Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageTagHandlerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/category/view/dialog/ManageTagDialog$initView$manageTagHandlerImpl$1",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageTagHandlerImpl;",
        "onMergeData",
        "",
        "fromPosition",
        "",
        "toPosition",
        "swap",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$initView$manageTagHandlerImpl$1;->e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

    invoke-direct {p0, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageTagHandlerImpl;-><init>(Lcom/onyx/galaxy/note/category/view/adapter/ManageTagAdapter;)V

    return-void
.end method


# virtual methods
.method public onMergeData(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageTagHandlerImpl;->onMergeData(II)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$initView$manageTagHandlerImpl$1;->e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;->access$setListChange$p(Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;Z)V

    return-void
.end method

.method public swap(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageTagHandlerImpl;->swap(II)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog$initView$manageTagHandlerImpl$1;->e:Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;->access$setListChange$p(Lcom/onyx/galaxy/note/category/view/dialog/ManageTagDialog;Z)V

    return-void
.end method
