.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->q(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$n;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$n;->f:Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$n;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$n;->f:Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->getTextShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;->access$setTextShape$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRConvertToTextShapeAction$n;->a(Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
