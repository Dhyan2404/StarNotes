.class public final synthetic Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$i;->e:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$i;->e:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->access$createRxScrollerArgs(Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$i;->a(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;

    move-result-object p0

    return-object p0
.end method
