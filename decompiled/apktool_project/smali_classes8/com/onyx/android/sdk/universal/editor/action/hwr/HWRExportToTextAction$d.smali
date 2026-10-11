.class public final Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;->getShapeList()Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$d;->e:Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;->access$getHwrArgs$p(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;)Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;->getSegmentation()Z

    move-result p0

    invoke-direct {p1, v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRInputSegmentAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction$d;->a(Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRExportToTextAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
