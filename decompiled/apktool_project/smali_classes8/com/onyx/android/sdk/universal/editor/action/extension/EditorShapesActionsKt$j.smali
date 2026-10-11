.class public final Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt;->b(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;)Lio/reactivex/rxjava3/core/Observable;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditorShapesActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorShapesActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$singleTapExcerptShape$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,248:1\n1#2:249\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEditorShapesActions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorShapesActions.kt\ncom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$singleTapExcerptShape$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,248:1\n1#2:249\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$j;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$j;->f:Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;)Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$j;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$j;->f:Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/AddShapesBackgroundArgs;->isSingleTap()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->setSingleTap(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$j;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/onyx/android/sdk/note/common/shape/Shape;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;->setHitTestSupportSingleTapShapeList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$j;->e:Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt$j;->a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SingleTapExcerptShapesAction;)Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;

    move-result-object p0

    return-object p0
.end method
