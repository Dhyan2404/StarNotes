.class public final Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction;->l(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$d;->e:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$d;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$d;->e:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$d;->f:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->addRemoveShapeList(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/erase/StrokeErasingAction$d;->a(Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;)V

    return-void
.end method
