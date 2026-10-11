.class public final Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->onOnyxStatisticEvent(Lcom/onyx/android/sdk/data/OnyxStatisticEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/data/OnyxStatisticEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/OnyxStatisticEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$h;->e:Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;

    new-instance v1, Lcom/onyx/android/sdk/data/OnyxStatisticModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$h;->e:Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;->getEventId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/data/OnyxStatisticModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/action/SaveOnyxStatisticModelAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$h;->a(Ljava/lang/String;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
