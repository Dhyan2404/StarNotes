.class final Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$onKeyboardOpen$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->onKeyboardOpen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
        "",
        "invoke",
        "(Ljava/lang/Integer;)Lio/reactivex/rxjava3/core/Observable;"
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
.field final synthetic $keyboardHeight:I

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$onKeyboardOpen$3;->this$0:Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$onKeyboardOpen$3;->$keyboardHeight:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Integer;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$onKeyboardOpen$3;->this$0:Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$onKeyboardOpen$3;->$keyboardHeight:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;->access$scrollUpObservable(Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler;II)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/TextBoxKeyboardEventHandler$onKeyboardOpen$3;->invoke(Ljava/lang/Integer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
