.class public final Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction;->access$getShapes$p(Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->translate(Ljava/util/List;FF)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/TranslateAction$b;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method
