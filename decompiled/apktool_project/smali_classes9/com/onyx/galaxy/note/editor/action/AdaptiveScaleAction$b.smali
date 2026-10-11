.class public final Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->p()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$b;->e:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$b;->e:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->obtainBoxManager(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$b;->e:Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;->access$getMatrix$p(Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->copy(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/geometry/boxmanager/BoxManager;->loadReboundMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction$b;->a(F)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method
