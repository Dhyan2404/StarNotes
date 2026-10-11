.class public final Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->animateBoxChange(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$c;->e:Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$c;->f:Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$c;->g:Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$c;->e:Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$c;->f:Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;->access$getPageRenderNodeMap$p(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$c;->g:Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->boxAnimationObservable(Ljava/util/Map;Lcom/onyx/android/sdk/universal/editor/data/AnimateBoxArgs;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler$c;->a(Lcom/onyx/android/sdk/universal/editor/display/PageHighQualityRenderHandler;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
