.class public final Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;->l(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/request/textinput/GetNextTextShapeRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;Lcom/onyx/android/sdk/note/request/textinput/GetNextTextShapeRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction$d;->f:Lcom/onyx/android/sdk/note/request/textinput/GetNextTextShapeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/request/textinput/GetNextTextShapeRequest;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/request/textinput/GetNextTextShapeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction$d;->f:Lcom/onyx/android/sdk/note/request/textinput/GetNextTextShapeRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/textinput/GetNextTextShapeRequest;->getNextShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;->setNextShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/request/textinput/GetNextTextShapeRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction$d;->a(Lcom/onyx/android/sdk/note/request/textinput/GetNextTextShapeRequest;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
