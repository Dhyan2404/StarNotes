.class public final Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;->access$apply(Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction$a;->a(Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;)V

    return-void
.end method
