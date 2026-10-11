.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction;->access$getShapes$p(Lcom/onyx/android/sdk/universal/editor/action/shape/CopyShapesAction;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->copyShapesDirectly(Ljava/util/List;)V

    return-void
.end method
