.class public final Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt;->getIntersectsAndVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$i;->e:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;)",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$i;->e:Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt;->getIntersectsAndVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt$i;->a(Ljava/util/Map;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
