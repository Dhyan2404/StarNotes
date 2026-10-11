.class final Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/common/data/ManageTagContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog$adapter$2;->this$0:Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog$adapter$2;->this$0:Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog;->access$getInitialTagIds(Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog$adapter$2;->this$0:Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog;

    invoke-static {v2}, Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog;->access$getManageTagContext$p(Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog;)Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog$adapter$2$1;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog$adapter$2;->this$0:Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog$adapter$2$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;-><init>(Ljava/util/List;Lcom/onyx/galaxy/note/common/data/ManageTagContext;Lkotlin/jvm/functions/Function0;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/dialog/SelectMultiTagDialog$adapter$2;->invoke()Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiTagAdapter;

    move-result-object p0

    return-object p0
.end method
