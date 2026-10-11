.class public final Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;->x0()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$a;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$a;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$a;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;->access$getShape$p(Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/image/CropImageShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$a;->a(Landroid/graphics/Bitmap;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
