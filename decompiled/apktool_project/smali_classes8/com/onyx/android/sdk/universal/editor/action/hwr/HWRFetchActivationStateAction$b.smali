.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->m()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;->access$saveToLocal(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRFetchActivationStateAction$b;->a(Z)V

    return-void
.end method
