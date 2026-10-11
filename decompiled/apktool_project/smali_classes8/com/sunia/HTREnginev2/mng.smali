.class public final synthetic Lcom/sunia/HTREnginev2/mng;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mng;->e:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mng;->e:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->l(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V

    return-void
.end method
