.class public final synthetic Lcom/sunia/HTREnginev2/tln;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tln;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tln;->f:Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tln;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tln;->f:Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;

    check-cast p1, Lkotlin/Unit;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;->b(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Lcom/onyx/android/sdk/note/request/selection/UpdateSelectionBitmapRequest;Lkotlin/Unit;)V

    return-void
.end method
