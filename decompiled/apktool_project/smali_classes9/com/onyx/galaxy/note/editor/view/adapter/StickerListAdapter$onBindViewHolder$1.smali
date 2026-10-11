.class final Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter$onBindViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;->onBindViewHolder(Lcom/chad/library/adapter4/viewholder/DataBindingHolder;ILcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStickerListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter$onBindViewHolder$1\n+ 2 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n*L\n1#1,90:1\n8#2,9:91\n*S KotlinDebug\n*F\n+ 1 StickerListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter$onBindViewHolder$1\n*L\n64#1:91,9\n*E\n"
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStickerListAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter$onBindViewHolder$1\n+ 2 ListAdapterExt.kt\ncom/onyx/galaxy/note/utils/ListAdapterExtKt\n*L\n1#1,90:1\n8#2,9:91\n*S KotlinDebug\n*F\n+ 1 StickerListAdapter.kt\ncom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter$onBindViewHolder$1\n*L\n64#1:91,9\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter$onBindViewHolder$1;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter$onBindViewHolder$1;->$item:Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter$onBindViewHolder$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter$onBindViewHolder$1;->this$0:Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/StickerListAdapter$onBindViewHolder$1;->$item:Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :catchall_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v0, "BaseQuickAdapter is detached"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
