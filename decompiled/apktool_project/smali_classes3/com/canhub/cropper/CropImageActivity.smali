.class public Lcom/canhub/cropper/CropImageActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;
.implements Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropImageActivity$Source;,
        Lcom/canhub/cropper/CropImageActivity$a;,
        Lcom/canhub/cropper/CropImageActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropImageActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageActivity.kt\ncom/canhub/cropper/CropImageActivity\n+ 2 ParcelableUtils.kt\ncom/canhub/cropper/ParcelableUtilsKt\n+ 3 Uri.kt\nandroidx/core/net/UriKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,478:1\n7#2,5:479\n7#2,5:484\n29#3:489\n1#4:490\n*S KotlinDebug\n*F\n+ 1 CropImageActivity.kt\ncom/canhub/cropper/CropImageActivity\n*L\n63#1:479,5\n65#1:484,5\n84#1:489\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0016\u0018\u0000 R2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002STB\u0007\u00a2\u0006\u0004\u0008P\u0010QJ\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u001c\u0010\u000b\u001a\u00020\u00062\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00060\u0008H\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0004H\u0014J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0012\u0010\u0019\u001a\u00020\u00062\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0014J(\u0010 \u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u00172\u000e\u0010\u001f\u001a\n\u0018\u00010\u001dj\u0004\u0018\u0001`\u001eH\u0016J\u0018\u0010#\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\"\u001a\u00020!H\u0016J\u0008\u0010$\u001a\u00020\u0006H\u0016J\u0010\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u001aH\u0016J\u0010\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\'H\u0016J*\u0010+\u001a\u00020\u00062\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00172\u000e\u0010\u001f\u001a\n\u0018\u00010\u001dj\u0004\u0018\u0001`\u001e2\u0006\u0010*\u001a\u00020\'H\u0016J\u0008\u0010,\u001a\u00020\u0006H\u0016J*\u0010.\u001a\u00020-2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00172\u000e\u0010\u001f\u001a\n\u0018\u00010\u001dj\u0004\u0018\u0001`\u001e2\u0006\u0010*\u001a\u00020\'H\u0016J \u00101\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010/\u001a\u00020\'2\u0006\u00100\u001a\u00020\'H\u0016J \u00102\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010/\u001a\u00020\'2\u0006\u00100\u001a\u00020\'H\u0016J\u0008\u00103\u001a\u00020\u0006H\u0002J\u0008\u00104\u001a\u00020\u0006H\u0002J\u0010\u00106\u001a\u00020\u00062\u0006\u00105\u001a\u00020\tH\u0002J\u0008\u00107\u001a\u00020\u0006H\u0002J\u0008\u00108\u001a\u00020\u0017H\u0002R\u0018\u0010;\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0016\u0010?\u001a\u00020<8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010%\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010G\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010:R\"\u0010M\u001a\u0010\u0012\u000c\u0012\n J*\u0004\u0018\u00010I0I0H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\"\u0010O\u001a\u0010\u0012\u000c\u0012\n J*\u0004\u0018\u00010\u00170\u00170H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010L\u00a8\u0006U"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;",
        "Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "Lkotlin/Function1;",
        "Lcom/canhub/cropper/CropImageActivity$Source;",
        "openSource",
        "showImageSourceDialog",
        "onStart",
        "onStop",
        "outState",
        "onSaveInstanceState",
        "Landroid/view/Menu;",
        "menu",
        "",
        "onCreateOptionsMenu",
        "Landroid/view/MenuItem;",
        "item",
        "onOptionsItemSelected",
        "Landroid/net/Uri;",
        "resultUri",
        "onPickImageResult",
        "Lcom/canhub/cropper/CropImageView;",
        "view",
        "uri",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "error",
        "onSetImageUriComplete",
        "Lcom/canhub/cropper/CropImageView$CropResult;",
        "result",
        "onCropImageComplete",
        "cropImage",
        "cropImageView",
        "setCropImageView",
        "",
        "degrees",
        "rotateImage",
        "sampleSize",
        "setResult",
        "setResultCancel",
        "Landroid/content/Intent;",
        "getResultIntent",
        "itemId",
        "color",
        "updateMenuItemIconColor",
        "updateMenuItemTextColor",
        "K",
        "N",
        "source",
        "I",
        "H",
        "G",
        "w0",
        "Landroid/net/Uri;",
        "cropImageUri",
        "Lcom/canhub/cropper/CropImageOptions;",
        "x0",
        "Lcom/canhub/cropper/CropImageOptions;",
        "cropImageOptions",
        "y0",
        "Lcom/canhub/cropper/CropImageView;",
        "Lcom/canhub/cropper/databinding/CropImageActivityBinding;",
        "z0",
        "Lcom/canhub/cropper/databinding/CropImageActivityBinding;",
        "binding",
        "A0",
        "latestTmpUri",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "kotlin.jvm.PlatformType",
        "B0",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "pickImageGallery",
        "C0",
        "takePicture",
        "<init>",
        "()V",
        "D0",
        "a",
        "Source",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_TMP_URI:Ljava/lang/String; = "bundle_key_tmp_uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final D0:Lcom/canhub/cropper/CropImageActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A0:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final B0:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final C0:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w0:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public x0:Lcom/canhub/cropper/CropImageOptions;

.field public y0:Lcom/canhub/cropper/CropImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public z0:Lcom/canhub/cropper/databinding/CropImageActivityBinding;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropImageActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropImageActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropImageActivity;->D0:Lcom/canhub/cropper/CropImageActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/fie;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fie;-><init>(Lcom/canhub/cropper/CropImageActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026nPickImageResult(uri)\n  }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->B0:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/gie;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gie;-><init>(Lcom/canhub/cropper/CropImageActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026ageResult(null)\n    }\n  }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->C0:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static synthetic C(Lcom/canhub/cropper/CropImageActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->O(Lcom/canhub/cropper/CropImageActivity;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic D(Lcom/canhub/cropper/CropImageActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/canhub/cropper/CropImageActivity;->L(Lcom/canhub/cropper/CropImageActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic E(Lcom/canhub/cropper/CropImageActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->J(Lcom/canhub/cropper/CropImageActivity;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic F(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/canhub/cropper/CropImageActivity;->M(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final J(Lcom/canhub/cropper/CropImageActivity;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->onPickImageResult(Landroid/net/Uri;)V

    return-void
.end method

.method public static final L(Lcom/canhub/cropper/CropImageActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->setResultCancel()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return v0
.end method

.method public static final M(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$openSource"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object p1, Lcom/canhub/cropper/CropImageActivity$Source;->CAMERA:Lcom/canhub/cropper/CropImageActivity$Source;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/canhub/cropper/CropImageActivity$Source;->GALLERY:Lcom/canhub/cropper/CropImageActivity$Source;

    :goto_0
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final O(Lcom/canhub/cropper/CropImageActivity;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->A0:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->onPickImageResult(Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->onPickImageResult(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public static final synthetic access$openSource(Lcom/canhub/cropper/CropImageActivity;Lcom/canhub/cropper/CropImageActivity$Source;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->I(Lcom/canhub/cropper/CropImageActivity$Source;)V

    return-void
.end method


# virtual methods
.method public final G()Landroid/net/Uri;
    .locals 3

    const-string v0, ".png"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tmp_image_file"

    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    const-string v1, "tmpFile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/canhub/cropper/utils/GetUriForFileKt;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final H()V
    .locals 1

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->G()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->A0:Landroid/net/Uri;

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->C0:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public final I(Lcom/canhub/cropper/CropImageActivity$Source;)V
    .locals 1

    sget-object v0, Lcom/canhub/cropper/CropImageActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->B0:Landroidx/activity/result/ActivityResultLauncher;

    const-string p1, "image/*"

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->H()V

    :goto_0
    return-void
.end method

.method public final K()V
    .locals 8

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    const-string v1, "cropImageOptions"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget v0, v0, Lcom/canhub/cropper/CropImageOptions;->activityBackgroundColor:I

    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->z0:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    if-nez v3, :cond_1

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->getRoot()Lcom/canhub/cropper/CropImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    iget-object v3, v3, Lcom/canhub/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    move v4, v6

    :goto_0
    if-eqz v4, :cond_4

    const-string v3, ""

    :cond_4
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v3, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_5
    iget-object v3, v3, Lcom/canhub/cropper/CropImageOptions;->toolbarColor:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v3, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_7
    iget-object v3, v3, Lcom/canhub/cropper/CropImageOptions;->toolbarTitleColor:Ljava/lang/Integer;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v7, 0x21

    invoke-interface {v4, v5, v6, v3, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v3, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object v2, v3

    :goto_1
    iget-object v1, v2, Lcom/canhub/cropper/CropImageOptions;->toolbarBackButtonColor:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    :try_start_0
    sget v2, Lcom/canhub/cropper/R$drawable;->ic_arrow_back_24:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_2

    :cond_a
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_2
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_3
    return-void
.end method

.method public final N()V
    .locals 5

    new-instance v0, Lcom/canhub/cropper/CropImageIntentChooser;

    new-instance v1, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;

    invoke-direct {v1, p0}, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;-><init>(Lcom/canhub/cropper/CropImageActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/canhub/cropper/CropImageIntentChooser;-><init>(Landroidx/activity/ComponentActivity;Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;)V

    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "cropImageOptions"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v3, v1, Lcom/canhub/cropper/CropImageOptions;->intentChooserTitle:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Lcom/canhub/cropper/CropImageIntentChooser;->setIntentChooserTitle(Ljava/lang/String;)Lcom/canhub/cropper/CropImageIntentChooser;

    :cond_2
    iget-object v3, v1, Lcom/canhub/cropper/CropImageOptions;->intentChooserPriorityList:Ljava/util/List;

    if-eqz v3, :cond_4

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Lcom/canhub/cropper/CropImageIntentChooser;->setupPriorityAppsList(Ljava/util/List;)Lcom/canhub/cropper/CropImageIntentChooser;

    :cond_4
    iget-boolean v3, v1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->G()Landroid/net/Uri;

    move-result-object v2

    :cond_5
    iget-boolean p0, v1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    iget-boolean v1, v1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeGallery:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/canhub/cropper/CropImageIntentChooser;->showChooserIntent(ZZLandroid/net/Uri;)V

    return-void
.end method

.method public cropImage()V
    .locals 10

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    const-string v1, "cropImageOptions"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->noOutputImage:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v2, v0}, Lcom/canhub/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v4, v0, Lcom/canhub/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget v5, v0, Lcom/canhub/cropper/CropImageOptions;->outputCompressQuality:I

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget v6, v0, Lcom/canhub/cropper/CropImageOptions;->outputRequestWidth:I

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget v7, v0, Lcom/canhub/cropper/CropImageOptions;->outputRequestHeight:I

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-object v8, v0, Lcom/canhub/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez p0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v2, p0

    :goto_0
    iget-object v9, v2, Lcom/canhub/cropper/CropImageOptions;->customOutputUri:Landroid/net/Uri;

    invoke-virtual/range {v3 .. v9}, Lcom/canhub/cropper/CropImageView;->croppedImageAsync(Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/net/Uri;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public getResultIntent(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;
    .locals 10
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v9, Lcom/canhub/cropper/CropImage$ActivityResult;

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getImageUri()Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getRotatedDegrees()I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    move v6, v0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object p0

    move-object v7, p0

    goto :goto_4

    :cond_4
    move-object v7, v1

    :goto_4
    move-object v0, v9

    move-object v1, v2

    move-object v2, p1

    move-object v3, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/canhub/cropper/CropImage$ActivityResult;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;ILandroid/graphics/Rect;I)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_5
    const-string p1, "CROP_IMAGE_EXTRA_RESULT"

    invoke-virtual {p0, p1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 79
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2}, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    move-result-object v2

    const-string v3, "inflate(layoutInflater)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/canhub/cropper/CropImageActivity;->z0:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    const-string v3, "binding"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_0
    invoke-virtual {v2}, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->getRoot()Lcom/canhub/cropper/CropImageView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/canhub/cropper/CropImageActivity;->z0:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    iget-object v2, v2, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->cropImageView:Lcom/canhub/cropper/CropImageView;

    const-string v3, "binding.cropImageView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/canhub/cropper/CropImageActivity;->setCropImageView(Lcom/canhub/cropper/CropImageView;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "CROP_IMAGE_EXTRA_SOURCE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v5, v3, Landroid/net/Uri;

    if-nez v5, :cond_2

    move-object v3, v4

    :cond_2
    check-cast v3, Landroid/net/Uri;

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    iput-object v3, v0, Lcom/canhub/cropper/CropImageActivity;->w0:Landroid/net/Uri;

    if-eqz v2, :cond_5

    const-string v3, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    instance-of v3, v2, Lcom/canhub/cropper/CropImageOptions;

    if-nez v3, :cond_4

    move-object v2, v4

    :cond_4
    check-cast v2, Lcom/canhub/cropper/CropImageOptions;

    if-nez v2, :cond_6

    :cond_5
    new-instance v2, Lcom/canhub/cropper/CropImageOptions;

    move-object v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, -0x1

    const/16 v76, -0x1

    const/16 v77, 0x1f

    const/16 v78, 0x0

    invoke-direct/range {v5 .. v78}, Lcom/canhub/cropper/CropImageOptions;-><init>(ZZLcom/canhub/cropper/CropImageView$CropShape;Lcom/canhub/cropper/CropImageView$CropCornerShape;FFFLcom/canhub/cropper/CropImageView$Guidelines;Lcom/canhub/cropper/CropImageView$ScaleType;ZZZIZZZIFZIIFIFFFIIFIIIIIIIILjava/lang/CharSequence;ILjava/lang/Integer;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;ZLandroid/graphics/Rect;IZZZIZZLjava/lang/CharSequence;IZZLjava/lang/String;Ljava/util/List;FILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_6
    iput-object v2, v0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/canhub/cropper/CropImageActivity;->w0:Landroid/net/Uri;

    if-eqz v1, :cond_8

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v1, v0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-eqz v1, :cond_14

    iget-object v2, v0, Lcom/canhub/cropper/CropImageActivity;->w0:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto/16 :goto_3

    :cond_8
    :goto_1
    iget-object v1, v0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    const-string v2, "cropImageOptions"

    if-nez v1, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_9
    iget-boolean v1, v1, Lcom/canhub/cropper/CropImageOptions;->showIntentChooser:Z

    if-eqz v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageActivity;->N()V

    goto :goto_3

    :cond_a
    iget-object v1, v0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v1, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_b
    iget-boolean v1, v1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeGallery:Z

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v1, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_c
    iget-boolean v1, v1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    if-eqz v1, :cond_d

    new-instance v1, Lcom/canhub/cropper/CropImageActivity$onCreate$1;

    invoke-direct {v1, v0}, Lcom/canhub/cropper/CropImageActivity$onCreate$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropImageActivity;->showImageSourceDialog(Lkotlin/jvm/functions/Function1;)V

    goto :goto_3

    :cond_d
    iget-object v1, v0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v1, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_e
    iget-boolean v1, v1, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeGallery:Z

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/canhub/cropper/CropImageActivity;->B0:Landroidx/activity/result/ActivityResultLauncher;

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_3

    :cond_f
    iget-object v1, v0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v1, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    move-object v4, v1

    :goto_2
    iget-boolean v1, v4, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageActivity;->H()V

    goto :goto_3

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_12
    const-string v2, "bundle_key_tmp_uri"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v1, "parse(this)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_13
    iput-object v4, v0, Lcom/canhub/cropper/CropImageActivity;->A0:Landroid/net/Uri;

    :cond_14
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/canhub/cropper/CropImageActivity;->K()V

    invoke-virtual/range {p0 .. p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v5

    const-string v1, "onBackPressedDispatcher"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/canhub/cropper/CropImageActivity$onCreate$2;

    invoke-direct {v8, v0}, Lcom/canhub/cropper/CropImageActivity$onCreate$2;-><init>(Lcom/canhub/cropper/CropImageActivity;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/activity/OnBackPressedDispatcherKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/OnBackPressedCallback;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    const-string v1, "cropImageOptions"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->skipEditing:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v4, Lcom/canhub/cropper/R$menu;->crop_image_menu:I

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->allowRotation:Z

    if-nez v0, :cond_3

    sget v0, Lcom/canhub/cropper/R$id;->ic_rotate_left_24:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    sget v0, Lcom/canhub/cropper/R$id;->ic_rotate_right_24:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->allowCounterRotation:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/canhub/cropper/R$id;->ic_rotate_left_24:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->allowFlipping:Z

    if-nez v0, :cond_7

    sget v0, Lcom/canhub/cropper/R$id;->ic_flip_24:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    :cond_7
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    iget-object v0, v0, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    sget v0, Lcom/canhub/cropper/R$id;->crop_image_menu_crop:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v4, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_9
    iget-object v4, v4, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_a
    :try_start_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    iget v0, v0, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_c
    iget v0, v0, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget v4, Lcom/canhub/cropper/R$id;->crop_image_menu_crop:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    goto :goto_1

    :cond_d
    move-object v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v2

    :goto_1
    const-string v5, "AIC"

    const-string v6, "Failed to read menu crop drawable"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    :goto_2
    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v4, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_e
    iget v4, v4, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    if-eqz v4, :cond_13

    sget v4, Lcom/canhub/cropper/R$id;->ic_rotate_left_24:I

    iget-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_f
    iget v5, v5, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-virtual {p0, p1, v4, v5}, Lcom/canhub/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    sget v4, Lcom/canhub/cropper/R$id;->ic_rotate_right_24:I

    iget-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_10
    iget v5, v5, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-virtual {p0, p1, v4, v5}, Lcom/canhub/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    sget v4, Lcom/canhub/cropper/R$id;->ic_flip_24:I

    iget-object v5, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v5, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_11
    iget v5, v5, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-virtual {p0, p1, v4, v5}, Lcom/canhub/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    if-eqz v0, :cond_13

    sget v0, Lcom/canhub/cropper/R$id;->crop_image_menu_crop:I

    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v4, :cond_12

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_12
    iget v4, v4, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-virtual {p0, p1, v0, v4}, Lcom/canhub/cropper/CropImageActivity;->updateMenuItemIconColor(Landroid/view/Menu;II)V

    :cond_13
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_14

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_14
    move-object v2, v0

    :goto_3
    iget-object v0, v2, Lcom/canhub/cropper/CropImageOptions;->activityMenuTextColor:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Integer;

    sget v2, Lcom/canhub/cropper/R$id;->ic_rotate_left_24:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    sget v2, Lcom/canhub/cropper/R$id;->ic_rotate_right_24:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/canhub/cropper/R$id;->ic_flip_24:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget v2, Lcom/canhub/cropper/R$id;->ic_flip_24_horizontally:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget v2, Lcom/canhub/cropper/R$id;->ic_flip_24_vertically:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget v2, Lcom/canhub/cropper/R$id;->crop_image_menu_crop:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, p1, v2, v0}, Lcom/canhub/cropper/CropImageActivity;->updateMenuItemTextColor(Landroid/view/Menu;II)V

    goto :goto_4

    :cond_15
    return v3
.end method

.method public onCropImageComplete(Lcom/canhub/cropper/CropImageView;Lcom/canhub/cropper/CropImageView$CropResult;)V
    .locals 1
    .param p1    # Lcom/canhub/cropper/CropImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/canhub/cropper/CropImageView$CropResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/canhub/cropper/CropImageView$CropResult;->getUriContent()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2}, Lcom/canhub/cropper/CropImageView$CropResult;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p2}, Lcom/canhub/cropper/CropImageView$CropResult;->getSampleSize()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/canhub/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/canhub/cropper/R$id;->crop_image_menu_crop:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->cropImage()V

    goto :goto_2

    :cond_0
    sget v1, Lcom/canhub/cropper/R$id;->ic_rotate_left_24:I

    const/4 v3, 0x0

    const-string v4, "cropImageOptions"

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez p1, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    iget p1, v3, Lcom/canhub/cropper/CropImageOptions;->rotationDegrees:I

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->rotateImage(I)V

    goto :goto_2

    :cond_2
    sget v1, Lcom/canhub/cropper/R$id;->ic_rotate_right_24:I

    if-ne v0, v1, :cond_4

    iget-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez p1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v3, p1

    :goto_1
    iget p1, v3, Lcom/canhub/cropper/CropImageOptions;->rotationDegrees:I

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->rotateImage(I)V

    goto :goto_2

    :cond_4
    sget v1, Lcom/canhub/cropper/R$id;->ic_flip_24_horizontally:I

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->flipImageHorizontally()V

    goto :goto_2

    :cond_5
    sget v1, Lcom/canhub/cropper/R$id;->ic_flip_24_vertically:I

    if-ne v0, v1, :cond_6

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->flipImageVertically()V

    goto :goto_2

    :cond_6
    const v1, 0x102002c

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->setResultCancel()V

    goto :goto_2

    :cond_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_8
    :goto_2
    return v2
.end method

.method public onPickImageResult(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->setResultCancel()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->w0:Landroid/net/Uri;

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->A0:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "bundle_key_tmp_uri"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSetImageUriComplete(Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Lcom/canhub/cropper/CropImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uri"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p3, :cond_9

    iget-object p2, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    const-string p3, "cropImageOptions"

    if-nez p2, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, p1

    :cond_0
    iget-object p2, p2, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p1

    :cond_2
    iget-object v0, v0, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/canhub/cropper/CropImageView;->setCropRect(Landroid/graphics/Rect;)V

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez p2, :cond_4

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, p1

    :cond_4
    iget p2, p2, Lcom/canhub/cropper/CropImageOptions;->initialRotation:I

    if-lez p2, :cond_7

    iget-object p2, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez v0, :cond_6

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p1

    :cond_6
    iget v0, v0, Lcom/canhub/cropper/CropImageOptions;->initialRotation:I

    invoke-virtual {p2, v0}, Lcom/canhub/cropper/CropImageView;->setRotatedDegrees(I)V

    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/canhub/cropper/CropImageActivity;->x0:Lcom/canhub/cropper/CropImageOptions;

    if-nez p2, :cond_8

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object p1, p2

    :goto_2
    iget-boolean p1, p1, Lcom/canhub/cropper/CropImageOptions;->skipEditing:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->cropImage()V

    goto :goto_3

    :cond_9
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/canhub/cropper/CropImageActivity;->setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/canhub/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/canhub/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    :cond_0
    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lcom/canhub/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;)V

    :cond_1
    return-void
.end method

.method public rotateImage(I)V
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageView;->rotateImage(I)V

    :cond_0
    return-void
.end method

.method public setCropImageView(Lcom/canhub/cropper/CropImageView;)V
    .locals 1
    .param p1    # Lcom/canhub/cropper/CropImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cropImageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/canhub/cropper/CropImageActivity;->y0:Lcom/canhub/cropper/CropImageView;

    return-void
.end method

.method public setResult(Landroid/net/Uri;Ljava/lang/Exception;I)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const/16 v0, 0xcc

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/canhub/cropper/CropImageActivity;->getResultIntent(Landroid/net/Uri;Ljava/lang/Exception;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public setResultCancel()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public showImageSourceDialog(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/canhub/cropper/CropImageActivity$Source;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "openSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/die;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/die;-><init>(Lcom/canhub/cropper/CropImageActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/canhub/cropper/R$string;->pick_image_chooser_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/canhub/cropper/R$string;->pick_image_camera:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/canhub/cropper/R$string;->pick_image_gallery:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    new-instance v1, Lcom/sunia/HTREnginev2/eie;

    invoke-direct {v1, p1}, Lcom/sunia/HTREnginev2/eie;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public updateMenuItemIconColor(Landroid/view/Menu;II)V
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "menu"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object p2, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    invoke-static {p3, p2}, Landroidx/core/graphics/BlendModeColorFilterCompat;->createBlendModeColorFilterCompat(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/ColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AIC"

    const-string p2, "Failed to update menu item color"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public updateMenuItemTextColor(Landroid/view/Menu;II)V
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "menu"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/16 v1, 0x21

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "AIC"

    const-string p2, "Failed to update menu item color"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method
