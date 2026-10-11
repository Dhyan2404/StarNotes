.class public final synthetic Lcom/sunia/HTREnginev2/dkl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/render/RenderCrossPageScreenViewportToFileAction;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/render/RenderCrossPageScreenViewportToFileAction;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dkl;->e:Lcom/onyx/android/sdk/universal/editor/action/render/RenderCrossPageScreenViewportToFileAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/dkl;->f:Lkotlin/jvm/internal/Ref$FloatRef;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dkl;->e:Lcom/onyx/android/sdk/universal/editor/action/render/RenderCrossPageScreenViewportToFileAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dkl;->f:Lkotlin/jvm/internal/Ref$FloatRef;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/render/RenderCrossPageScreenViewportToFileAction;->l(Lcom/onyx/android/sdk/universal/editor/action/render/RenderCrossPageScreenViewportToFileAction;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/onyx/android/sdk/universal/editor/action/render/RenderViewportThumbnailAction;)V

    return-void
.end method
