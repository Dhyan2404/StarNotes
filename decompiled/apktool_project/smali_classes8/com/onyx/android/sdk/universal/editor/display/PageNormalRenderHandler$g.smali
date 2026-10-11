.class public final Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;->j(Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;)Lio/reactivex/rxjava3/core/Observable;
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

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$g;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$g;->f:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$g;->g:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$g;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$g;->f:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$g;->g:Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$a;->i()F

    move-result p0

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler;Lcom/onyx/android/sdk/geometry/data/BoxInfo;F)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/display/DisplayRenderSliceAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/PageNormalRenderHandler$g;->a(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
