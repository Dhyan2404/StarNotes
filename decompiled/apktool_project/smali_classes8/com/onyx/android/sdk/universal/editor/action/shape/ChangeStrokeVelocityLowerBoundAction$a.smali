.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction;->access$updateStrokeConfig(Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction;)Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeStrokeVelocityLowerBoundAction;)V

    return-void
.end method
