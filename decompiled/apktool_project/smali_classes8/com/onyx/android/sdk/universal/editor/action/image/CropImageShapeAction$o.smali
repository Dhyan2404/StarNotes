.class public final Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;->p()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$o;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$o;->e:Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->loadCurrentVisibleBox(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction$o;->a(Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
