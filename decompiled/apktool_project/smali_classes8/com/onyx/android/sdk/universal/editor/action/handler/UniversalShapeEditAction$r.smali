.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$r;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$r;->e:Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$r;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$r;->e:Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;->getUpTouchData()Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->setBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$r;->f:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$r;->e:Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;->getUpTouchData()Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->onTouchDown(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$r;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
