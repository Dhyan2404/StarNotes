.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->hitTestVisibleBoxTouchData(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/android/sdk/geometry/data/TouchData;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction<",
            "TT;>;",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction$a;->f:Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction$a;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction$a;->f:Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;->onInterceptTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction$a;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Z

    move-result p0

    return p0
.end method
