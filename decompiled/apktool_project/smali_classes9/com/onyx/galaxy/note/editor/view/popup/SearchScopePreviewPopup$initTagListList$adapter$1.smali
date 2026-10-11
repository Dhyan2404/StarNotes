.class final Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup$initTagListList$adapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchScopePreviewPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchScopePreviewPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup$initTagListList$adapter$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n1#2:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "id",
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
        "SMAP\nSearchScopePreviewPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchScopePreviewPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup$initTagListList$adapter$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n1#2:100\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup$initTagListList$adapter$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup$initTagListList$adapter$1;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup$initTagListList$adapter$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup;->access$getManageTagContext$p(Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup;)Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getSelectedTagIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup$initTagListList$adapter$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup;->access$getManageTagContext$p(Lcom/onyx/galaxy/note/editor/view/popup/SearchScopePreviewPopup;)Lcom/onyx/galaxy/note/common/data/ManageTagContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/ManageTagContext;->getSelectedTagNames()Ljava/util/List;

    move-result-object p0

    if-ltz p1, :cond_0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
