.class final Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdatePageMarginAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdatePageMarginAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n1855#2,2:170\n*S KotlinDebug\n*F\n+ 1 UpdatePageMarginAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1\n*L\n70#1:170,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUpdatePageMarginAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdatePageMarginAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,169:1\n1855#2,2:170\n*S KotlinDebug\n*F\n+ 1 UpdatePageMarginAction.kt\ncom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1\n*L\n70#1:170,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Ljava/util/Set;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getApplyAll()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->access$getArgs$p(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;->getApplyToCover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getCoverPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getTemplateResourceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;

    .line 7
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->access$getMarginTemplateFiles$p(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    .line 10
    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->isCoverPage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 11
    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getBox()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getMarginStyle()Lcom/onyx/android/sdk/geometry/data/MarginStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/MarginStyle;->getTemplateResourceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->access$getMarginTemplateFiles$p(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction$collectMarginTemplateFiles$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;->access$getMarginTemplateFiles$p(Lcom/onyx/android/sdk/universal/editor/action/page/UpdatePageMarginAction;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
