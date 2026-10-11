.class public final Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;->o()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction$k;->e:Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction$k;->f:Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction$k;->e:Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction$k;->f:Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;->getVirtualPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;->access$setHitTestVirtualPage$p(Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction$k;->e:Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;->access$getHitTestVirtualPage$p(Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->getConfig()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageConfig;->getContentPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;->access$setContentPath$p(Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction$k;->a(Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;)V

    return-void
.end method
