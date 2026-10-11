.class public final synthetic Lcom/sunia/HTREnginev2/amn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/amn;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/amn;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/amn;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/amn;->f:Ljava/util/List;

    check-cast p1, Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler$replaceTransformShapes$2;->a(Lcom/onyx/android/sdk/universal/editor/handler/shape/TransformHandler;Ljava/util/List;Lcom/onyx/android/sdk/note/request/DeleteShapesRequest;)V

    return-void
.end method
