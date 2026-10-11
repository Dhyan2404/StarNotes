.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->m()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$g;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;

    sget-object v0, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->getHWRActivationConfig(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->access$setConfig$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;Lcom/onyx/android/sdk/data/account/bean/HWRActivationConfig;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;->access$initRecognizer(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction$g;->a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRActivateAction;)V

    return-void
.end method
