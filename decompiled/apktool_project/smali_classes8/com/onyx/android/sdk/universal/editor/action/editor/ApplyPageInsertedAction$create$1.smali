.class final Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplyPageInsertedAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplyPageInsertedAction.kt\ncom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction$create$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,37:1\n1#2:38\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nApplyPageInsertedAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplyPageInsertedAction.kt\ncom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction$create$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,37:1\n1#2:38\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction$create$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction;->access$getInsertPageArgs$p(Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction;)Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/InsertPageArgs;->getInsertAt()I

    move-result v3

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction;->access$getVirtualPage$p(Lcom/onyx/android/sdk/universal/editor/action/editor/ApplyPageInsertedAction;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/request/InsertVirtualPageRequest;->setScrollTo(Z)V

    .line 4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-void
.end method
