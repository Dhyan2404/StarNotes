.class public final Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->startDelayDrag(Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;Lio/reactivex/rxjava3/core/Observable;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$c;->e:Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$c;->f:Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$c;->e:Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->access$isCancelDrag$p(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$c;->e:Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$c;->f:Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->access$delayDragObservable(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$c;->e:Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$c;->f:Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;->access$reEnterEdit(Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper;Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/ExcerptDelayDragCaptureHelper$c;->a(Ljava/util/List;)V

    return-void
.end method
