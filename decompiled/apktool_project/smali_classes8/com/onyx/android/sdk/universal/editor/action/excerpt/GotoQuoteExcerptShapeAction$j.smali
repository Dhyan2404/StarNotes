.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->m()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;Lcom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$j;->f:Lcom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$j;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$j;->f:Lcom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;->access$setShape$p(Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/GotoQuoteExcerptShapeAction$j;->a(Lcom/onyx/android/sdk/universal/editor/request/excerpt/GetExcerptShapeByIdRequest;)V

    return-void
.end method
