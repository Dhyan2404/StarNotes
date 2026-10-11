.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->onTextShapeHitTestEvent(Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$f0;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$f0;->f:Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$f0;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$f0;->f:Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$f0;->f:Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/TextShapeHitTestEvent;->getReadOnly()Z

    move-result v5

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->access$onHitTestShape(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$f0;->a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    return-void
.end method
