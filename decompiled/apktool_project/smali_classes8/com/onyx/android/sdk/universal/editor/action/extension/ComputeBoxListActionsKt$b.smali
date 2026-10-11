.class public final Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt;->findBoxListObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

.field public final synthetic f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

.field public final synthetic g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$b;->e:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$b;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$b;->g:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$b;->e:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->setBoxList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$b;->e:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$b;->f:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->setVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$b;->e:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$b;->g:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->setShapeList(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$b;->a(Ljava/util/List;)V

    return-void
.end method
