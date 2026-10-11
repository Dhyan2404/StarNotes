.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler;->onSwitchToNextShapeEvent(Lcom/onyx/android/sdk/textbox/event/SwitchToNextShapeEvent;)V
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
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$a0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$a0;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$a0;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$a0;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;->getNextShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextInputHandler$a0;->a(Lcom/onyx/android/sdk/universal/editor/action/textinput/SwitchToNextTextShapeAction;)Z

    move-result p0

    return p0
.end method
