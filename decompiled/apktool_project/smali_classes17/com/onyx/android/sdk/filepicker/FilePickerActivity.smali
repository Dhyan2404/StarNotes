.class public Lcom/onyx/android/sdk/filepicker/FilePickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/theme/config/IUnSupportThemeRecreateActivity;
.implements Lcom/onyx/android/sdk/ui/IFullScreenStyle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/filepicker/FilePickerActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilePickerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilePickerActivity.kt\ncom/onyx/android/sdk/filepicker/FilePickerActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,428:1\n1855#2:429\n766#2:430\n857#2,2:431\n1856#2:433\n766#2:462\n857#2,2:463\n1855#2,2:471\n262#3,2:434\n262#3,2:465\n262#3,2:467\n262#3,2:469\n262#3,2:473\n58#4,23:436\n93#4,3:459\n*S KotlinDebug\n*F\n+ 1 FilePickerActivity.kt\ncom/onyx/android/sdk/filepicker/FilePickerActivity\n*L\n104#1:429\n108#1:430\n108#1:431,2\n104#1:433\n337#1:462\n337#1:463,2\n354#1:471,2\n240#1:434,2\n347#1:465,2\n351#1:467,2\n352#1:469,2\n367#1:473,2\n285#1:436,23\n285#1:459,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 Q2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001QB\u0007\u00a2\u0006\u0004\u0008O\u0010PJ(\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00082\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004H\u0002J\u0016\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u0008\u0010\u000f\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\rH\u0002J\u0008\u0010\u0011\u001a\u00020\rH\u0002J\u0008\u0010\u0012\u001a\u00020\rH\u0002J\u0008\u0010\u0013\u001a\u00020\rH\u0002J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002J\u0008\u0010\u0016\u001a\u00020\rH\u0002J\u0008\u0010\u0017\u001a\u00020\rH\u0003J\u0008\u0010\u0018\u001a\u00020\rH\u0002J\u0008\u0010\u0019\u001a\u00020\rH\u0002J\u0008\u0010\u001a\u001a\u00020\rH\u0002J\u0008\u0010\u001b\u001a\u00020\rH\u0002J\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0014H\u0002J\u0008\u0010\u001e\u001a\u00020\rH\u0002J\u0008\u0010\u001f\u001a\u00020\rH\u0002J\u0008\u0010 \u001a\u00020\rH\u0002J\u0008\u0010!\u001a\u00020\u0014H\u0002J\u0008\u0010\"\u001a\u00020\u0014H\u0002J\u0012\u0010%\u001a\u00020\r2\u0008\u0010$\u001a\u0004\u0018\u00010#H\u0014J\u0010\u0010(\u001a\u00020\r2\u0006\u0010\'\u001a\u00020&H\u0007J\u0008\u0010)\u001a\u00020\rH\u0016J\u0008\u0010*\u001a\u00020\rH\u0014J\"\u00100\u001a\u00020\r2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020+2\u0008\u0010/\u001a\u0004\u0018\u00010.H\u0014R\u001b\u00106\u001a\u0002018FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u00103\u001a\u0004\u00084\u00105R\"\u00108\u001a\u0002078\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\"\u0010D\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00088\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR&\u0010I\u001a\u0012\u0012\u0004\u0012\u00020\u00060Ej\u0008\u0012\u0004\u0012\u00020\u0006`F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u001e\u0010N\u001a\n\u0012\u0004\u0012\u00020K\u0018\u00010J8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010M\u00a8\u0006R"
    }
    d2 = {
        "Lcom/onyx/android/sdk/filepicker/FilePickerActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/onyx/android/sdk/theme/config/IUnSupportThemeRecreateActivity;",
        "Lcom/onyx/android/sdk/ui/IFullScreenStyle;",
        "Landroidx/activity/result/ActivityResultCallback;",
        "",
        "Landroid/net/Uri;",
        "callback",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "",
        "G",
        "uris",
        "",
        "H",
        "J",
        "Y",
        "X",
        "Z",
        "V",
        "",
        "W",
        "S",
        "M",
        "a0",
        "c0",
        "Q",
        "b0",
        "showEmpty",
        "d0",
        "R",
        "L",
        "K",
        "T",
        "U",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;",
        "event",
        "onSystemThemeChangedEvent",
        "resultBack",
        "onDestroy",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;",
        "w0",
        "Lkotlin/Lazy;",
        "getBinding",
        "()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;",
        "binding",
        "Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;",
        "viewModel",
        "Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;",
        "getViewModel",
        "()Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;",
        "setViewModel",
        "(Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;)V",
        "Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;",
        "x0",
        "Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;",
        "filePickerAdapter",
        "y0",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "filePickerLauncher",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "z0",
        "Ljava/util/ArrayList;",
        "fileSystemSelectUris",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "A0",
        "Ljava/lang/ref/WeakReference;",
        "activityReference",
        "<init>",
        "()V",
        "Companion",
        "sdk-imagepicker_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFilePickerActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilePickerActivity.kt\ncom/onyx/android/sdk/filepicker/FilePickerActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,428:1\n1855#2:429\n766#2:430\n857#2,2:431\n1856#2:433\n766#2:462\n857#2,2:463\n1855#2,2:471\n262#3,2:434\n262#3,2:465\n262#3,2:467\n262#3,2:469\n262#3,2:473\n58#4,23:436\n93#4,3:459\n*S KotlinDebug\n*F\n+ 1 FilePickerActivity.kt\ncom/onyx/android/sdk/filepicker/FilePickerActivity\n*L\n104#1:429\n108#1:430\n108#1:431,2\n104#1:433\n337#1:462\n337#1:463,2\n354#1:471,2\n240#1:434,2\n347#1:465,2\n351#1:467,2\n352#1:469,2\n367#1:473,2\n285#1:436,23\n285#1:459,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/filepicker/FilePickerActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REQUEST_CODE_OPEN_DOCUMENT:I = 0x3e9


# instance fields
.field public A0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewModel:Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;

.field public final w0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x0:Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public y0:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public z0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->Companion:Lcom/onyx/android/sdk/filepicker/FilePickerActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$binding$2;-><init>(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->w0:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;

    invoke-direct {v0}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->x0:Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->z0:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic C(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->N(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcom/onyx/android/sdk/ui/CommonDialog;Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->I(Lcom/onyx/android/sdk/ui/CommonDialog;Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    return-void
.end method

.method public static synthetic E(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->P(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->O(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final I(Lcom/onyx/android/sdk/ui/CommonDialog;Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V
    .locals 1

    const-string v0, "$loadingDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->dismiss()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->resultBack()V

    sget-object p0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->clearSelect()V

    return-void
.end method

.method public static final N(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static final O(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->resultBack()V

    return-void
.end method

.method public static final P(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->a0()V

    return-void
.end method

.method public static final synthetic access$getFilePickerAdapter$p(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->x0:Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;

    return-object p0
.end method

.method public static final synthetic access$handleFileSelect(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->H(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$loadData(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->V()V

    return-void
.end method

.method public static final synthetic access$permissionDenied(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->X()V

    return-void
.end method

.method public static final synthetic access$requestPermissionSettings(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->Z()V

    return-void
.end method

.method public static final synthetic access$updateFileDisplay(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->b0()V

    return-void
.end method

.method public static final synthetic access$updateImport(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->c0()V

    return-void
.end method


# virtual methods
.method public final G(Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultCallback<",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;>;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments;

    sget-object v1, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->isMultipleTypeSelect()Z

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getDocumentSupportList()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments;-><init>(Z[Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    const-string p1, "registerForActivityResult(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final H(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->z0:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->isSelectedValid(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->clearSelect()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "getApplicationContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, p0}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileExtension(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getSupportExtensions()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v5, v7, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move v7, v1

    :goto_3
    if-eqz v7, :cond_3

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    new-instance v1, Lcom/onyx/android/sdk/filepicker/DocumentBean;

    invoke-virtual {v6}, Landroid/net/Uri;->hashCode()I

    move-result v2

    int-to-long v3, v2

    sget-object v2, Lcom/onyx/android/sdk/base/utils/UriUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/UriUtils;

    invoke-virtual {v2, v6}, Lcom/onyx/android/sdk/base/utils/UriUtils;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v6, p0}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileSize(Landroid/net/Uri;Landroid/content/Context;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0x40

    const/4 v12, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/onyx/android/sdk/filepicker/DocumentBean;-><init>(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/filepicker/DocumentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->selectChange(Lcom/onyx/android/sdk/filepicker/DocumentBean;)V

    goto :goto_0

    :cond_7
    sget-object p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getSelectFile()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    sget p1, Lcom/onyx/android/sdk/imagepicker/R$string;->un_support_file_type:I

    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->T()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->resultBack()V

    :cond_8
    return-void

    :cond_9
    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setDialogType(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setDimAmount(F)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    new-instance v1, Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getSelectFile()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/filepicker/PreprocessSelectedFilesAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/ehg;

    invoke-direct {v1, v0, p0}, Lcom/sunia/HTREnginev2/ehg;-><init>(Lcom/onyx/android/sdk/ui/CommonDialog;Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doFinally(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final J()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->W()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->Y()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->V()V

    return-void
.end method

.method public final K()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->rlFileList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->rlFileList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->x0:Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final L()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tvSystemFileManager:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvSystemFileManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->isFileSystemHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final M()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->ivBack:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    new-instance v1, Lcom/sunia/HTREnginev2/fhg;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fhg;-><init>(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    new-instance v1, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$initListener$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$initListener$2;-><init>(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->x0:Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;

    new-instance v1, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$initListener$3;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$initListener$3;-><init>(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;->setCallBack(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tvImport:Lcom/onyx/android/sdk/ui/MediumTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/ghg;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ghg;-><init>(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->titleEdit:Lcom/onyx/android/sdk/theme/widgets/TintTextInputEditTextView;

    const-string v1, "titleEdit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$initListener$$inlined$doAfterTextChanged$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$initListener$$inlined$doAfterTextChanged$1;-><init>(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tvSystemFileManager:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/hhg;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hhg;-><init>(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final Q()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getViewModel()Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;->getSelectDocumentType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$initObserver$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$initObserver$1;-><init>(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    new-instance v2, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$b;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getViewModel()Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;->getFileData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$initObserver$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$initObserver$2;-><init>(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    new-instance v2, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$b;

    invoke-direct {v2, v1}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final R()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v1, "tabLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->isTabLayoutHidden()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->divider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    const-string v2, "divider"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->isTabLayoutHidden()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getDocTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/DocumentType;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setTag(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$Tab;

    const-string v1, "apply(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getViewModel()Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;->getSelectDocumentType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.onyx.android.sdk.filepicker.DocumentType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onyx/android/sdk/filepicker/DocumentType;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final S()V
    .locals 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->A0:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tvImport:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v1, "tvImport"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getMultiEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getTitle()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->R()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->L()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->K()V

    return-void
.end method

.method public final T()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->INSTANCE:Lcom/onyx/android/sdk/base/data/config/GlobalConfig;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->isStorageManagerEnable()Z

    move-result p0

    return p0
.end method

.method public final U()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->z0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->z0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getMaxCount()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final V()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getViewModel()Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getPickerFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getDocTypes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getDocFilterSizeMap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getSortType()Lcom/onyx/android/sdk/filepicker/sort/SortType;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;->getDocs(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Lcom/onyx/android/sdk/filepicker/sort/SortType;)V

    return-void
.end method

.method public final W()Z
    .locals 1

    const/16 p0, 0x1e

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sunia/HTREnginev2/wbe;->a()Z

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelBelow(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->isGranted([Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final X()V
    .locals 1

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$string;->permission_denied:I

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final Y()V
    .locals 4

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v2, 0x7d5

    invoke-virtual {p0, v1, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    const/16 v1, 0x17

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelBelow(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->permission([Ljava/lang/String;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$requestPermission$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$requestPermission$1;-><init>(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/PermissionUtils;->callback(Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;)Lcom/blankj/utilcode/util/PermissionUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->request()V

    :cond_1
    return-void
.end method

.method public final Z()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/onyx/android/sdk/ui/R$string;->go_to_setting:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setConfirmTextRes(I)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/ui/R$string;->permission_deny_and_guide_desc:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setMessageTextRes(I)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$requestPermissionSettings$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$requestPermissionSettings$1;-><init>(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$requestPermissionSettings$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$requestPermissionSettings$2;-><init>(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->create()Lcom/onyx/android/sdk/ui/PermissionDialog;

    return-void
.end method

.method public final a0()V
    .locals 3

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->z0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->y0:Landroidx/activity/result/ActivityResultLauncher;

    if-nez p0, :cond_0

    const-string p0, "filePickerLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const-string v0, "*/*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments;->Companion:Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments$Companion;

    sget-object v1, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->isMultipleTypeSelect()Z

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getDocumentSupportList()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments$Companion;->createOpenDocumentIntent(Z[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public final b0()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getViewModel()Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;->getFileData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getViewModel()Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;->getSelectDocumentType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/onyx/android/sdk/filepicker/DocumentBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/filepicker/DocumentBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getViewModel()Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;->getSearchKeyWord()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getViewModel()Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;->getSearchKeyWord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->d0(Z)V

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->x0:Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public final c0()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->tvImport:Lcom/onyx/android/sdk/ui/MediumTextView;

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getCurrentCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final d0(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;->llEmptyContainer:Landroid/widget/LinearLayout;

    const-string v0, "llEmptyContainer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final getBinding()Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->w0:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/imagepicker/databinding/ActivityFilePickerBinding;

    return-object p0
.end method

.method public final getViewModel()Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->viewModel:Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_4

    const/16 p2, 0x7d5

    if-eq p1, p2, :cond_2

    const/16 p2, 0x7d8

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->T()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->U()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/filepicker/PickerManager;->clearSelect()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->W()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->V()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->X()V

    goto :goto_0

    :cond_2
    const/16 p1, 0x1e

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/BuildKt;->isApiLevelAbove(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/sunia/HTREnginev2/wbe;->a()Z

    move-result p1

    if-nez p1, :cond_3

    sget p0, Lcom/onyx/android/sdk/imagepicker/R$string;->permission_denied:I

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->V()V

    goto :goto_0

    :cond_4
    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    if-eqz p3, :cond_5

    sget-object p1, Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments;->Companion:Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments$Companion;

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/filepicker/GetMultipleDocuments$Companion;->getClipDataUris$sdk_imagepicker_overseasRelease(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->H(Ljava/util/List;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54fffff5

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->INSTANCE:Lcom/onyx/android/sdk/theme/utils/ThemeBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/theme/utils/ThemeBundle;->unRegister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->release()V

    iget-object v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->A0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->A0:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->y0:Landroidx/activity/result/ActivityResultLauncher;

    if-nez p0, :cond_1

    const-string p0, "filePickerLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroidx/activity/result/ActivityResultLauncher;->unregister()V

    return-void
.end method

.method public final onSystemThemeChangedEvent(Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/theme/utils/SystemThemeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->refreshUI(Landroid/content/Context;)V

    return-void
.end method

.method public resultBack()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/filepicker/PickerManager;->INSTANCE:Lcom/onyx/android/sdk/filepicker/PickerManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getResultCallback()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "EXTRA_RESULT_SELECTION"

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getSelectFile()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->A0:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getResultCallback()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getSelectFile()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/PickerManager;->getResultWithFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public final setViewModel(Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->viewModel:Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;

    return-void
.end method
