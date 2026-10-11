.class public final Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$e;->e:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 7
    .param p1    # Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/GuideInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$e;->e:Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;->access$getOption(Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BaseOption;->getKey()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/common/action/LoadGuideInfoAction;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction$e;->a(Lcom/onyx/galaxy/note/common/action/OpenMagnifierGuideAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
