.class public final Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$a;
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$a;->f:Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$a;->e:Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$a;->f:Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/StartSplitScreenEvent;->getSplitScreenType()Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;->access$ensureSplitScreen(Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenType;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler$a;->a(Lcom/onyx/galaxy/note/editor/handler/SplitScreenEventHandler;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method
