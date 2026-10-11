.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->r(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/geometry/data/TouchData;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$h;->f:Lcom/onyx/android/sdk/geometry/data/TouchData;

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

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$h;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$h;->f:Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;->access$activeEraseHandler(Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method
