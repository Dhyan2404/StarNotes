.class public final Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$f;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$f;->e:Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$f;->f:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;->access$deferDeleteStashShape(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction$f;->a(Lcom/onyx/android/sdk/universal/editor/action/flush/ImportStashShapeAction;)V

    return-void
.end method
