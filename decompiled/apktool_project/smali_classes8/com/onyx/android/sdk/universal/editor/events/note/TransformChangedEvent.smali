.class public final Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\'\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u000e\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0014\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;",
        "",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "a",
        "Ljava/util/List;",
        "getTransformShapes",
        "()Ljava/util/List;",
        "transformShapes",
        "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;",
        "b",
        "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;",
        "getSelectionRect",
        "()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;",
        "selectionRect",
        "",
        "c",
        "Z",
        "getTransforming",
        "()Z",
        "transforming",
        "<init>",
        "(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Z)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;",
            "Z)V"
        }
    .end annotation

    const-string v0, "transformShapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionRect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;->b:Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    .line 4
    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;Z)V

    return-void
.end method


# virtual methods
.method public final getSelectionRect()Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;->b:Lcom/onyx/android/sdk/note/common/data/selection/SelectionRect;

    return-object p0
.end method

.method public final getTransformShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;->a:Ljava/util/List;

    return-object p0
.end method

.method public final getTransforming()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/events/note/TransformChangedEvent;->c:Z

    return p0
.end method
