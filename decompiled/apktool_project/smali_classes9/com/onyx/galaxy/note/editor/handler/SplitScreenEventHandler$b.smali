.class public final Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->onStartSplitScreenEvent(Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;)V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$b;->e:Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$b;->f:Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
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

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$b;->e:Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$b;->f:Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;->getDocId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->access$createOpenAnotherDocObservable(Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;Ljava/lang/String;Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$b;->a(Landroid/graphics/RectF;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
