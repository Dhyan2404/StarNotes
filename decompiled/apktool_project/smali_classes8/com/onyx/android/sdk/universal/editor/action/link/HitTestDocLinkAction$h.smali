.class public final Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;->m()Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic f:Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction$h;->f:Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction$h;->f:Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;->getLinkTargetSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;->access$setLinkReaderSelection$p(Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/link/HitTestDocLinkAction$h;->a(Lcom/onyx/android/sdk/reader/request/HitTestDocLinkRequest;)V

    return-void
.end method
