.class final Lcom/onyx/android/sdk/universal/editor/action/page/GetVirtualPageTemplateColorAction$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/page/GetVirtualPageTemplateColorAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
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


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/page/GetVirtualPageTemplateColorAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/page/GetVirtualPageTemplateColorAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/page/GetVirtualPageTemplateColorAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/GetVirtualPageTemplateColorAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/page/GetVirtualPageTemplateColorAction$create$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/page/GetVirtualPageTemplateColorAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/page/GetVirtualPageTemplateColorAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/page/GetVirtualPageTemplateColorAction;->access$getBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/action/page/GetVirtualPageTemplateColorAction;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->obtainVirtualPage(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method
