.class public final Lcom/onyx/android/sdk/universal/editor/display/RenderManager$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$j;->e:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$j;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$j;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$j;->e:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->getPageNormalHandler()Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$j;->f:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$j;->g:Ljava/util/List;

    invoke-interface {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/display/IRenderHandler;->createDisplayBoxListObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager$j;->a(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
