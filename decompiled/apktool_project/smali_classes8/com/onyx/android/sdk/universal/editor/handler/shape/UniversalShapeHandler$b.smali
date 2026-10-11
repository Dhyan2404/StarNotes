.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->onRedoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$b;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$b;->f:Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$b;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$b;->f:Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->access$onRedoEvent$s-1246632454(Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$b;->a(Ljava/util/List;)V

    return-void
.end method
