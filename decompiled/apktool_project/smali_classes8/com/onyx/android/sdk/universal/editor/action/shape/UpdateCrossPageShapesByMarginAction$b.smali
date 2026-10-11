.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;->n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction$b;->a(Ljava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesByMarginAction;

    move-result-object p0

    return-object p0
.end method
