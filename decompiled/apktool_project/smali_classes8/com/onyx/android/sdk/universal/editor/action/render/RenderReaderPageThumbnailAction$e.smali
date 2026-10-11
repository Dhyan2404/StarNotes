.class public final Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction;->m()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;)Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;->getVirtualPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction;->setVirtualPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;->getVirtualPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

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
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction;->setContentPath(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction$e;->a(Lcom/onyx/android/sdk/universal/editor/request/ObtainVirtualPageRequest;)Lcom/onyx/android/sdk/universal/editor/action/render/RenderReaderPageThumbnailAction;

    move-result-object p0

    return-object p0
.end method
