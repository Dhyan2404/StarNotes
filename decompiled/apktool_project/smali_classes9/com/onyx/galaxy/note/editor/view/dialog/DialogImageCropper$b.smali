.class public final Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;->H0()V
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$b;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$b;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$b;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;->access$getWindowSize(Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;)I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$b;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;->access$getWindowSize(Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;)I

    move-result p0

    int-to-float p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;->access$decodeShapeBitmap(Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper$b;->a(Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
