.class public final Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;->r0()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment$a;->e:Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;)V
    .locals 7
    .param p1    # Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment$a;->e:Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;->access$getBinding$p(Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;)Lcom/onyx/galaxy/note/databinding/FragmentImageCropBinding;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v1, p1, Lcom/onyx/galaxy/note/databinding/FragmentImageCropBinding;->cropImageView:Lcom/canhub/cropper/CropImageView;

    const-string p1, "cropImageView"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x200

    const/16 v3, 0x200

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/canhub/cropper/CropImageView;->getCroppedImage$default(Lcom/canhub/cropper/CropImageView;IILcom/canhub/cropper/CropImageView$RequestSizeOptions;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v1, "savePath"

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment$a;->e:Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;

    invoke-static {v2}, Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;->access$getSavePath$p(Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v2, v3, v4, v0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->save$default(Landroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/Object;)Z

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment$a;->e:Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;->access$getSavePath$p(Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, Lcom/onyx/android/sdk/extension/FragmentKt;->setNavigationResult$default(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/Unit;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment$a;->a(Lcom/onyx/galaxy/note/usercenter/ui/ImageCropFragment;)V

    return-void
.end method
