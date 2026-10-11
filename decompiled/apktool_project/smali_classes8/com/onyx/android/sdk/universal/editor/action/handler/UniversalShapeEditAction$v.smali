.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->onShapeEdit(Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;)Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$v;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$v;->f:Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$v;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$v;->f:Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;->getUniversalShape()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$v;->f:Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;->getUpTouchData()Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$v;->f:Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;->getEditImmediately()Z

    move-result p0

    invoke-static {p1, v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->access$onShapeEditImpl(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;Lcom/onyx/android/sdk/geometry/data/TouchData;Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$v;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
