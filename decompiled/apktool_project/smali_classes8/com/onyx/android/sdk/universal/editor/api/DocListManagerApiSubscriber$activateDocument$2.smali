.class final Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->d(Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;",
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
        "Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;",
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
.field final synthetic $docId:Ljava/lang/String;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$2;->this$0:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$2;->$docId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$2;->invoke$lambda$0(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$docId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->access$autoBackup(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;",
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
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$2;->this$0:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/api/BaseApiSubscriber;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/SaveDocumentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$2$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$2$1;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$2;->this$0:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$2;->$docId:Ljava/lang/String;

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/api/a;

    invoke-direct {v2, v1, p0}, Lcom/onyx/android/sdk/universal/editor/api/a;-><init>(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;Ljava/lang/String;)V

    invoke-static {p1, v0, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber$activateDocument$2;->invoke(Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
