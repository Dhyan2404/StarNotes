.class final Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$onMore$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;->Q0(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $selectedItem:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$onMore$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$onMore$1;->$selectedItem:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$onMore$1;->$view:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$onMore$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/NoteTabData;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$onMore$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$onMore$1;->$selectedItem:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-direct {v0, v1, p1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/NoteOverviewOptionsPopup;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteOverviewFragment$onMore$1;->$view:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->safeShowAsDropDown(Landroid/view/View;)V

    return-void
.end method
