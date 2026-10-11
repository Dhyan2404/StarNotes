.class final Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$adapter$2;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$adapter$2;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "editorBundle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$adapter$2;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->access$getPageDataMap$p(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$adapter$2;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->access$getOnDragListener$p(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$onDragListener$1;

    move-result-object v3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$adapter$2;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;->access$getTitleList$p(Lcom/onyx/galaxy/note/editor/ui/DocTocFragment;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Map;Lcom/onyx/galaxy/note/common/view/TreeNodeDragListener;Ljava/util/Set;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocTocFragment$adapter$2;->invoke()Lcom/onyx/galaxy/note/editor/view/adapter/DocTocAdapter;

    move-result-object p0

    return-object p0
.end method
