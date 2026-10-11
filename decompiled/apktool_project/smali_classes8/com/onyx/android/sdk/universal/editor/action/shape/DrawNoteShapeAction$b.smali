.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->copy()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;->access$draw(Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/DrawNoteShapeAction$b;->a(Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
