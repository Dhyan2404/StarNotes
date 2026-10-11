.class public final Lcom/onyx/android/sdk/universal/editor/display/RenderManager$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->displayBoxListAnimation(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/EditorAnimatorContext;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$e;->e:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$e;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$e;->e:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageSearchHighlightRenderHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$e;->f:Ljava/util/List;

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->access$updateExistsRenderNodeList(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$e;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
