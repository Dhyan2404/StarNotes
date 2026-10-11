.class public final Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;",
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

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;->getInfo()Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;->getInfo()Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getAnnotation()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/ForceRenderSliceListActionsKt;->forceRenderNoteDirtyRectToDisplay(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
