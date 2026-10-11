.class final Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$saveMarginConfig$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->p(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
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
.field final synthetic $args:Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$saveMarginConfig$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$saveMarginConfig$1;->$args:Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getDocOptions()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$saveMarginConfig$1;->$args:Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    .line 3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getApplyToCover()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setApplyMarginToCover(Z)V

    .line 4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getApplyAll()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setApplyMarginToAll(Z)V

    .line 5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getApplyAll()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setAutoApplyPageMargin(Z)V

    .line 7
    new-instance v1, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;-><init>()V

    .line 8
    new-instance v8, Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getMarginColor()I

    move-result v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getTemplateResource()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;-><init>(ILjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getTemplateSpace()F

    move-result v2

    invoke-virtual {v8, v2}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->setTemplateSpace(F)V

    .line 10
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getTemplateResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->setTemplateResourceId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v8}, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->setStyle(Lcom/onyx/android/sdk/geometry/data/MarginStyle;)V

    .line 12
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;->setMargin(Lcom/onyx/android/sdk/geometry/data/MarginPercent;)V

    .line 13
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;->setPageMarginConfig(Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;)V

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$saveMarginConfig$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$saveMarginConfig$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;

    move-result-object p0

    return-object p0
.end method
