.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->m(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/String;ZZ)Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$h;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$h;->f:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$h;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$h;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->getNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$h;->f:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$h;->g:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->isHitTestSelectedShapes()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v5, p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;->getCreateNew()Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->access$onHitTestShape(Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$h;->a(Lcom/onyx/android/sdk/universal/editor/action/textinput/HitTestTextShapeAction;)V

    return-void
.end method
