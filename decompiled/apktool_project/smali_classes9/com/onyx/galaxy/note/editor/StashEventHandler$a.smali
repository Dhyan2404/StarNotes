.class public final Lcom/onyx/galaxy/note/editor/StashEventHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/StashEventHandler;->onStashEditTextShapeEvent(Lcom/onyx/android/sdk/note/common/event/StashEditTextShapeEvent;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/StashEventHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/event/StashEditTextShapeEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/StashEventHandler;Lcom/onyx/android/sdk/note/common/event/StashEditTextShapeEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/StashEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/StashEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/StashEventHandler$a;->f:Lcom/onyx/android/sdk/note/common/event/StashEditTextShapeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/flush/StashShapeAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/flush/StashShapeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/flush/StashShapeAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/StashEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/StashEventHandler;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/StashEventHandler$a;->f:Lcom/onyx/android/sdk/note/common/event/StashEditTextShapeEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/event/StashEditTextShapeEvent;->getTextShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/flush/StashShapeAction;->getStashZipPaths()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/StashEventHandler;->access$trimStashDataFile(Lcom/onyx/galaxy/note/editor/StashEventHandler;Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/flush/StashShapeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/StashEventHandler$a;->a(Lcom/onyx/android/sdk/universal/editor/action/flush/StashShapeAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
