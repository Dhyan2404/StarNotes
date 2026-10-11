.class public final Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportShowPopupMenuEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$v;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$v;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$v;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$v;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$v;->i:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$v;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$v;->i:Lcom/google/gson/JsonObject;

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    iget-object v1, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$v;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v2, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$v;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$v;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle$v;->a(Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
