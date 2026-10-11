.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction;->create()Lio/reactivex/rxjava3/core/Observable;
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


# static fields
.field public static final e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$b;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$b;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    sget-object p1, Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;->INSTANCE:Lcom/onyx/android/sdk/data/account/event/ActivationStateChangedEvent;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRLoadActivationStateAction$b;->a(Z)V

    return-void
.end method
