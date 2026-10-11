.class final Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$updateSync$action$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->G(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $ivSyncStatus:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$updateSync$action$1;->$ivSyncStatus:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$updateSync$action$1;->this$0:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$updateSync$action$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$updateSync$action$1;->$ivSyncStatus:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.bean.KSyncStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    .line 3
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$updateSync$action$1;->this$0:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    invoke-static {v1, v0}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->access$isDelayHideSuccessIcon(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter$updateSync$action$1;->$ivSyncStatus:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
