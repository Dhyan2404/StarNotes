.class public final Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->r()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$e;->f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$e;->e:Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$e;->f:Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageRenderRequestInfo;->getOutputSliceList()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->access$prepareToDisplay(Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction$e;->a(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
