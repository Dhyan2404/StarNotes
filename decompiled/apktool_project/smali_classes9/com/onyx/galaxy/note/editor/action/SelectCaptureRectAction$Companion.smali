.class public final Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001c\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u0016\u0010\u0008\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;",
        "",
        "Landroid/content/Context;",
        "activityContext",
        "Lkotlin/Function0;",
        "",
        "onGranted",
        "requestPermission",
        "a",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$overlaysPermissionRequest(Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion$overlaysPermissionRequest$1;

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion$overlaysPermissionRequest$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/PermissionUtils;->requestDrawOverlays(Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;)V

    return-void
.end method

.method public final requestPermission(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "activityContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onGranted"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->hasOverlayPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/onyx/galaxy/note/R$string;->permission_screen_capture_request_tip:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setMessageTextRes(I)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object p0

    sget p1, Lcom/onyx/galaxy/note/R$string;->go_to_setting:I

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setConfirmTextRes(I)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion$requestPermission$1;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion$requestPermission$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion$requestPermission$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$Companion$requestPermission$2;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/PermissionDialog$Builder;->create()Lcom/onyx/android/sdk/ui/PermissionDialog;

    return-void
.end method
