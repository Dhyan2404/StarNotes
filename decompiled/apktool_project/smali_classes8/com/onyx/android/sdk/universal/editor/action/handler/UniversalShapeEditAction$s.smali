.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$s;
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

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$s;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$s;->f:Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;

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

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$s;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->access$getShapeEditor$p(Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;)Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$s;->f:Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;->getReferenceShapes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;->setReferenceShapes(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction$s;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    return-void
.end method
