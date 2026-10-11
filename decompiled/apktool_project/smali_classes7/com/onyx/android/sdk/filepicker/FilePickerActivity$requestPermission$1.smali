.class public final Lcom/onyx/android/sdk/filepicker/FilePickerActivity$requestPermission$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016J\u0016\u0010\u0008\u001a\u00020\u00032\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/onyx/android/sdk/filepicker/FilePickerActivity$requestPermission$1",
        "Lcom/blankj/utilcode/util/PermissionUtils$FullCallback;",
        "onDenied",
        "",
        "deniedForever",
        "",
        "",
        "denied",
        "onGranted",
        "granted",
        "sdk-imagepicker_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/filepicker/FilePickerActivity;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$requestPermission$1;->a:Lcom/onyx/android/sdk/filepicker/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deniedForever"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "denied"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$requestPermission$1;->a:Lcom/onyx/android/sdk/filepicker/FilePickerActivity;

    invoke-static {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->access$requestPermissionSettings(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$requestPermission$1;->a:Lcom/onyx/android/sdk/filepicker/FilePickerActivity;

    invoke-static {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->access$permissionDenied(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "granted"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerActivity$requestPermission$1;->a:Lcom/onyx/android/sdk/filepicker/FilePickerActivity;

    invoke-static {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->access$loadData(Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    return-void
.end method
