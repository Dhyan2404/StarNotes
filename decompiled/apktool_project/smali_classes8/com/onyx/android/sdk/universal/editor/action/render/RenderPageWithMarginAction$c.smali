.class public final Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction;->l()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction$c;->e:Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction$c;->f:Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction$c;->e:Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;->getBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction$c;->f:Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction;->getMarginPercent()Lcom/onyx/android/sdk/geometry/data/MarginPercent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/geometry/data/MarginPercent;->toRectFWithMargin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->setOriginRectFWithMargin(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction;->getThumbnailViewport()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v0, v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->scaleToViewport$default(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Landroid/graphics/RectF;ZILjava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderPageWithMarginAction$c;->a(Lcom/onyx/android/sdk/universal/editor/request/page/GetPageBoxInfoRequest;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    return-object p0
.end method
