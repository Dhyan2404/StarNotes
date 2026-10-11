.class final Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->q(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $pair:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $quoteShape:Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;Lkotlin/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;",
            "Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;",
            "Lkotlin/Pair<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$1;->$quoteShape:Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$1;->$pair:Lkotlin/Pair;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$1;->$quoteShape:Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$1;->$pair:Lkotlin/Pair;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->access$updateQuoteShape(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/lang/String;)V

    return-void
.end method
