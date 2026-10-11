.class public final Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt;->c(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$k;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$k;->f:Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;)Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$k;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$k;->f:Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->isSingleTap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->setSingleTap(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$k;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;->getHitTestTapeShapeList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->setHitTestSupportSingleTapShapeList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$k;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$k;->a(Lcom/onyx/android/sdk/note/request/SingleTapTapeShapesRequest;)Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    move-result-object p0

    return-object p0
.end method
