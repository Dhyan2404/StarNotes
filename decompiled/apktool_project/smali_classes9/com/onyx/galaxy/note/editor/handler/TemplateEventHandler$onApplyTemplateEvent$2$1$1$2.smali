.class final Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1;->invoke(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;",
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
.field final synthetic $currentPageIndex:I

.field final synthetic $editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field final synthetic $newAction:Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;ILcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$2;->$newAction:Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$2;->$currentPageIndex:I

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$2;->$editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;",
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
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$2;->$newAction:Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;

    iget v0, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$2;->$currentPageIndex:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;->gotoCurrentPage(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$2$a;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$2;->$editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$2$a;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/TemplateEventHandler$onApplyTemplateEvent$2$1$1$2;->invoke(Lcom/onyx/android/sdk/universal/editor/action/bkground/ApplyTemplateAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
