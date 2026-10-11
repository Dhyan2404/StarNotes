.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/data/AddShapesBackgroundResultBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;->getArgs()Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/excerpt/SaveTextExcerptArgs;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction$c;->e:Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;->getShapeList()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/EditorShapesActionsKt;->addShapeAndForceRenderNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction$c;->a(Lcom/onyx/android/sdk/universal/editor/action/excerpt/SaveTextExcerptAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
