.class public final Lcom/permissionx/guolindev/request/PermissionBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/permissionx/guolindev/request/PermissionBuilder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 l2\u00020\u0001:\u0001lB7\u0012\u0008\u0010i\u001a\u0004\u0018\u000107\u0012\u0008\u0010A\u001a\u0004\u0018\u00010>\u0012\u000c\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u00080J\u0012\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00080J\u00a2\u0006\u0004\u0008j\u0010kJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0003J\u0016\u0010\n\u001a\u00020\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000fJ\u0006\u0010\u0011\u001a\u00020\u0000J\u0016\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012J\u0010\u0010\u0017\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0016J>\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001a2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u00082\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0008J\u001e\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020 J\u001e\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\"J\u001c\u0010%\u001a\u00020\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080$2\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010&\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\'\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010(\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010)\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010*\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010+\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010,\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018J\u0006\u0010-\u001a\u00020\u001aJ\u0006\u0010.\u001a\u00020\u001aJ\u0006\u0010/\u001a\u00020\u001aJ\u0006\u00100\u001a\u00020\u001aJ\u0006\u00101\u001a\u00020\u001aJ\u0006\u00102\u001a\u00020\u001aJ\u0006\u00103\u001a\u00020\u001aJ\u000f\u00106\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u00084\u00105R\"\u00108\u001a\u0002078\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010CR\u0016\u0010F\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010CR\u0018\u0010H\u001a\u0004\u0018\u00010G8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u001c\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u00080J8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u001c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00080J8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010LR\u0016\u0010\u0011\u001a\u00020\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010NR\u0016\u0010O\u001a\u00020\u001a8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010NR\u001c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020\u00080J8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010LR\u001c\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\u00080J8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010LR\u001c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u00080J8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010LR\u001c\u0010S\u001a\u0008\u0012\u0004\u0012\u00020\u00080J8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010LR\u001c\u0010T\u001a\u0008\u0012\u0004\u0012\u00020\u00080J8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010LR\u001c\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\u00080J8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010LR\u0018\u0010V\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008V\u0010WR\u0018\u0010X\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0018\u0010Z\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u0018\u0010\\\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0014\u0010a\u001a\u00020^8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010`R\u0014\u0010e\u001a\u00020b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010dR\u0011\u0010h\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008f\u0010g\u00a8\u0006m"
    }
    d2 = {
        "Lcom/permissionx/guolindev/request/PermissionBuilder;",
        "",
        "",
        "q",
        "j",
        "k",
        "i",
        "",
        "",
        "permissions",
        "f",
        "Lcom/permissionx/guolindev/callback/ExplainReasonCallback;",
        "callback",
        "onExplainRequestReason",
        "Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;",
        "Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;",
        "onForwardToSettings",
        "explainReasonBeforeRequest",
        "",
        "lightColor",
        "darkColor",
        "setDialogTintColor",
        "Lcom/permissionx/guolindev/callback/RequestCallback;",
        "request",
        "Lcom/permissionx/guolindev/request/ChainTask;",
        "chainTask",
        "",
        "showReasonOrGoSettings",
        "message",
        "positiveText",
        "negativeText",
        "showHandlePermissionDialog",
        "Lcom/permissionx/guolindev/dialog/RationaleDialog;",
        "dialog",
        "Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;",
        "dialogFragment",
        "",
        "requestNow",
        "requestAccessBackgroundLocationPermissionNow",
        "requestSystemAlertWindowPermissionNow",
        "requestWriteSettingsPermissionNow",
        "requestManageExternalStoragePermissionNow",
        "requestInstallPackagePermissionNow",
        "requestNotificationPermissionNow",
        "requestBodySensorsBackgroundPermissionNow",
        "shouldRequestBackgroundLocationPermission",
        "shouldRequestSystemAlertWindowPermission",
        "shouldRequestWriteSettingsPermission",
        "shouldRequestManageExternalStoragePermission",
        "shouldRequestInstallPackagesPermission",
        "shouldRequestNotificationPermission",
        "shouldRequestBodySensorsBackgroundPermission",
        "endRequest$permissionx_release",
        "()V",
        "endRequest",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "getActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "setActivity",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "Landroidx/fragment/app/Fragment;",
        "a",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "b",
        "I",
        "c",
        "d",
        "originRequestOrientation",
        "Landroid/app/Dialog;",
        "currentDialog",
        "Landroid/app/Dialog;",
        "",
        "normalPermissions",
        "Ljava/util/Set;",
        "specialPermissions",
        "Z",
        "showDialogCalled",
        "permissionsWontRequest",
        "grantedPermissions",
        "deniedPermissions",
        "permanentDeniedPermissions",
        "tempPermanentDeniedPermissions",
        "forwardPermissions",
        "requestCallback",
        "Lcom/permissionx/guolindev/callback/RequestCallback;",
        "explainReasonCallback",
        "Lcom/permissionx/guolindev/callback/ExplainReasonCallback;",
        "explainReasonCallbackWithBeforeParam",
        "Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;",
        "forwardToSettingsCallback",
        "Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;",
        "Landroidx/fragment/app/FragmentManager;",
        "g",
        "()Landroidx/fragment/app/FragmentManager;",
        "fragmentManager",
        "Lcom/permissionx/guolindev/request/InvisibleFragment;",
        "h",
        "()Lcom/permissionx/guolindev/request/InvisibleFragment;",
        "invisibleFragment",
        "getTargetSdkVersion",
        "()I",
        "targetSdkVersion",
        "fragmentActivity",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V",
        "Companion",
        "permissionx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/permissionx/guolindev/request/PermissionBuilder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/lang/String; = "InvisibleFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public activity:Landroidx/fragment/app/FragmentActivity;

.field public b:I

.field public c:I

.field public currentDialog:Landroid/app/Dialog;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:I

.field public deniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public explainReasonBeforeRequest:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public forwardPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public forwardToSettingsCallback:Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public grantedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public normalPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public permanentDeniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public permissionsWontRequest:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public requestCallback:Lcom/permissionx/guolindev/callback/RequestCallback;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public showDialogCalled:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public specialPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public tempPermanentDeniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/permissionx/guolindev/request/PermissionBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/permissionx/guolindev/request/PermissionBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/permissionx/guolindev/request/PermissionBuilder;->Companion:Lcom/permissionx/guolindev/request/PermissionBuilder$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "normalPermissions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialPermissions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->b:I

    iput v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->c:I

    iput v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->d:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->permissionsWontRequest:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->grantedPermissions:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->deniedPermissions:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->permanentDeniedPermissions:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->tempPermanentDeniedPermissions:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->forwardPermissions:Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->setActivity(Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "fragment.requireActivity()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->setActivity(Landroidx/fragment/app/FragmentActivity;)V

    :cond_1
    iput-object p2, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->a:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->normalPermissions:Ljava/util/Set;

    iput-object p4, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Lcom/permissionx/guolindev/dialog/RationaleDialog;Lcom/permissionx/guolindev/request/ChainTask;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/permissionx/guolindev/request/PermissionBuilder;->m(Lcom/permissionx/guolindev/dialog/RationaleDialog;Lcom/permissionx/guolindev/request/ChainTask;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/permissionx/guolindev/request/PermissionBuilder;->o(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;Lcom/permissionx/guolindev/request/ChainTask;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/permissionx/guolindev/request/PermissionBuilder;->p(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;Lcom/permissionx/guolindev/request/ChainTask;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->n(Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e(Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/permissionx/guolindev/request/PermissionBuilder;->l(Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V

    return-void
.end method

.method public static final l(Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V
    .locals 0

    const-string p5, "$dialog"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$chainTask"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$permissions"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "this$0"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_0

    invoke-interface {p2, p3}, Lcom/permissionx/guolindev/request/ChainTask;->requestAgain(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p4, p3}, Lcom/permissionx/guolindev/request/PermissionBuilder;->f(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public static final m(Lcom/permissionx/guolindev/dialog/RationaleDialog;Lcom/permissionx/guolindev/request/ChainTask;Landroid/view/View;)V
    .locals 0

    const-string p2, "$dialog"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$chainTask"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-interface {p1}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    return-void
.end method

.method public static final n(Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->currentDialog:Landroid/app/Dialog;

    return-void
.end method

.method public static final o(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;Landroid/view/View;)V
    .locals 0

    const-string p5, "$dialogFragment"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$chainTask"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$permissions"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "this$0"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    if-eqz p1, :cond_0

    invoke-interface {p2, p3}, Lcom/permissionx/guolindev/request/ChainTask;->requestAgain(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p4, p3}, Lcom/permissionx/guolindev/request/PermissionBuilder;->f(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public static final p(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;Lcom/permissionx/guolindev/request/ChainTask;Landroid/view/View;)V
    .locals 0

    const-string p2, "$dialogFragment"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$chainTask"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    invoke-interface {p1}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    return-void
.end method


# virtual methods
.method public final endRequest$permissionx_release()V
    .locals 0

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->j()V

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->k()V

    return-void
.end method

.method public final explainReasonBeforeRequest()Lcom/permissionx/guolindev/request/PermissionBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonBeforeRequest:Z

    return-object p0
.end method

.method public final f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->forwardPermissions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->forwardPermissions:Ljava/util/Set;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->h()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/InvisibleFragment;->forwardToSettings()V

    return-void
.end method

.method public final g()Landroidx/fragment/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->a:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string p0, "activity.supportFragmentManager"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "activity"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTargetSdkVersion()I
    .locals 0

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return p0
.end method

.method public final h()Lcom/permissionx/guolindev/request/InvisibleFragment;
    .locals 2

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->g()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "InvisibleFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/permissionx/guolindev/request/InvisibleFragment;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/permissionx/guolindev/request/InvisibleFragment;

    invoke-direct {v0}, Lcom/permissionx/guolindev/request/InvisibleFragment;-><init>()V

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->g()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :goto_0
    return-object v0
.end method

.method public final i()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->d:I

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->g()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "InvisibleFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->g()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget p0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->d:I

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final onExplainRequestReason(Lcom/permissionx/guolindev/callback/ExplainReasonCallback;)Lcom/permissionx/guolindev/request/PermissionBuilder;
    .locals 0
    .param p1    # Lcom/permissionx/guolindev/callback/ExplainReasonCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallback:Lcom/permissionx/guolindev/callback/ExplainReasonCallback;

    return-object p0
.end method

.method public final onExplainRequestReason(Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;)Lcom/permissionx/guolindev/request/PermissionBuilder;
    .locals 0
    .param p1    # Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->explainReasonCallbackWithBeforeParam:Lcom/permissionx/guolindev/callback/ExplainReasonCallbackWithBeforeParam;

    return-object p0
.end method

.method public final onForwardToSettings(Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;)Lcom/permissionx/guolindev/request/PermissionBuilder;
    .locals 0
    .param p1    # Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->forwardToSettingsCallback:Lcom/permissionx/guolindev/callback/ForwardToSettingsCallback;

    return-object p0
.end method

.method public final q()V
    .locals 2

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->i()V

    new-instance v0, Lcom/permissionx/guolindev/request/RequestChain;

    invoke-direct {v0}, Lcom/permissionx/guolindev/request/RequestChain;-><init>()V

    new-instance v1, Lcom/permissionx/guolindev/request/RequestNormalPermissions;

    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestNormalPermissions;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    new-instance v1, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;

    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestBackgroundLocationPermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    new-instance v1, Lcom/permissionx/guolindev/request/RequestSystemAlertWindowPermission;

    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestSystemAlertWindowPermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    new-instance v1, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;

    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestWriteSettingsPermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    new-instance v1, Lcom/permissionx/guolindev/request/RequestManageExternalStoragePermission;

    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestManageExternalStoragePermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    new-instance v1, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;

    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestInstallPackagesPermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    new-instance v1, Lcom/permissionx/guolindev/request/RequestNotificationPermission;

    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestNotificationPermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    new-instance v1, Lcom/permissionx/guolindev/request/RequestBodySensorsBackgroundPermission;

    invoke-direct {v1, p0}, Lcom/permissionx/guolindev/request/RequestBodySensorsBackgroundPermission;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/RequestChain;->addTaskToChain$permissionx_release(Lcom/permissionx/guolindev/request/BaseTask;)V

    invoke-virtual {v0}, Lcom/permissionx/guolindev/request/RequestChain;->runTask$permissionx_release()V

    return-void
.end method

.method public final request(Lcom/permissionx/guolindev/callback/RequestCallback;)V
    .locals 0
    .param p1    # Lcom/permissionx/guolindev/callback/RequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->requestCallback:Lcom/permissionx/guolindev/callback/RequestCallback;

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->q()V

    return-void
.end method

.method public final requestAccessBackgroundLocationPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .locals 1
    .param p1    # Lcom/permissionx/guolindev/request/ChainTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->h()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestAccessBackgroundLocationPermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    return-void
.end method

.method public final requestBodySensorsBackgroundPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .locals 1
    .param p1    # Lcom/permissionx/guolindev/request/ChainTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->h()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestBodySensorsBackgroundPermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    return-void
.end method

.method public final requestInstallPackagePermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .locals 1
    .param p1    # Lcom/permissionx/guolindev/request/ChainTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->h()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestInstallPackagesPermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    return-void
.end method

.method public final requestManageExternalStoragePermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .locals 1
    .param p1    # Lcom/permissionx/guolindev/request/ChainTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->h()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestManageExternalStoragePermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    return-void
.end method

.method public final requestNotificationPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .locals 1
    .param p1    # Lcom/permissionx/guolindev/request/ChainTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->h()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestNotificationPermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    return-void
.end method

.method public final requestNow(Ljava/util/Set;Lcom/permissionx/guolindev/request/ChainTask;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/permissionx/guolindev/request/ChainTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/permissionx/guolindev/request/ChainTask;",
            ")V"
        }
    .end annotation

    const-string v0, "permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chainTask"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->h()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Ljava/util/Set;Lcom/permissionx/guolindev/request/ChainTask;)V

    return-void
.end method

.method public final requestSystemAlertWindowPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .locals 1
    .param p1    # Lcom/permissionx/guolindev/request/ChainTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->h()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestSystemAlertWindowPermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    return-void
.end method

.method public final requestWriteSettingsPermissionNow(Lcom/permissionx/guolindev/request/ChainTask;)V
    .locals 1
    .param p1    # Lcom/permissionx/guolindev/request/ChainTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->h()Lcom/permissionx/guolindev/request/InvisibleFragment;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->requestWriteSettingsPermissionNow(Lcom/permissionx/guolindev/request/PermissionBuilder;Lcom/permissionx/guolindev/request/ChainTask;)V

    return-void
.end method

.method public final setActivity(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->activity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method public final setDialogTintColor(II)Lcom/permissionx/guolindev/request/PermissionBuilder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->b:I

    iput p2, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->c:I

    return-object p0
.end method

.method public final shouldRequestBackgroundLocationPermission()Z
    .locals 1

    iget-object p0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final shouldRequestBodySensorsBackgroundPermission()Z
    .locals 1

    iget-object p0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final shouldRequestInstallPackagesPermission()Z
    .locals 1

    iget-object p0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final shouldRequestManageExternalStoragePermission()Z
    .locals 1

    iget-object p0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final shouldRequestNotificationPermission()Z
    .locals 1

    iget-object p0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final shouldRequestSystemAlertWindowPermission()Z
    .locals 1

    iget-object p0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final shouldRequestWriteSettingsPermission()Z
    .locals 1

    iget-object p0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->specialPermissions:Ljava/util/Set;

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final showHandlePermissionDialog(Lcom/permissionx/guolindev/request/ChainTask;ZLcom/permissionx/guolindev/dialog/RationaleDialog;)V
    .locals 10
    .param p1    # Lcom/permissionx/guolindev/request/ChainTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/permissionx/guolindev/dialog/RationaleDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialog"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->showDialogCalled:Z

    .line 8
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->getPermissionsToRequest()Ljava/util/List;

    move-result-object v5

    const-string v1, "dialog.permissionsToRequest"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    return-void

    .line 11
    :cond_0
    iput-object p3, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->currentDialog:Landroid/app/Dialog;

    .line 12
    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    .line 13
    instance-of v1, p3, Lcom/permissionx/guolindev/dialog/DefaultDialog;

    if-eqz v1, :cond_1

    move-object v1, p3

    check-cast v1, Lcom/permissionx/guolindev/dialog/DefaultDialog;

    invoke-virtual {v1}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->isPermissionLayoutEmpty$permissionx_release()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 15
    invoke-interface {p1}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    .line 16
    :cond_1
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->getPositiveButton()Landroid/view/View;

    move-result-object v7

    const-string v1, "dialog.positiveButton"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialog;->getNegativeButton()Landroid/view/View;

    move-result-object v8

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p3, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 19
    invoke-virtual {p3, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 20
    invoke-virtual {v7, v0}, Landroid/view/View;->setClickable(Z)V

    .line 21
    new-instance v9, Lcom/sunia/HTREnginev2/g3l;

    move-object v1, v9

    move-object v2, p3

    move v3, p2

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/sunia/HTREnginev2/g3l;-><init>(Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_2

    .line 22
    invoke-virtual {v8, v0}, Landroid/view/View;->setClickable(Z)V

    .line 23
    new-instance p2, Lcom/sunia/HTREnginev2/h3l;

    invoke-direct {p2, p3, p1}, Lcom/sunia/HTREnginev2/h3l;-><init>(Lcom/permissionx/guolindev/dialog/RationaleDialog;Lcom/permissionx/guolindev/request/ChainTask;)V

    invoke-virtual {v8, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->currentDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_3

    new-instance p2, Lcom/sunia/HTREnginev2/i3l;

    invoke-direct {p2, p0}, Lcom/sunia/HTREnginev2/i3l;-><init>(Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_3
    return-void
.end method

.method public final showHandlePermissionDialog(Lcom/permissionx/guolindev/request/ChainTask;ZLcom/permissionx/guolindev/dialog/RationaleDialogFragment;)V
    .locals 10
    .param p1    # Lcom/permissionx/guolindev/request/ChainTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogFragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->showDialogCalled:Z

    .line 26
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;->getPermissionsToRequest()Ljava/util/List;

    move-result-object v5

    const-string v1, "dialogFragment.permissionsToRequest"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-interface {p1}, Lcom/permissionx/guolindev/request/ChainTask;->finish()V

    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->g()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "PermissionXRationaleDialogFragment"

    invoke-virtual {p3, v1, v2}, Landroidx/fragment/app/DialogFragment;->showNow(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;->getPositiveButton()Landroid/view/View;

    move-result-object v7

    const-string v1, "dialogFragment.positiveButton"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p3}, Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;->getNegativeButton()Landroid/view/View;

    move-result-object v8

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p3, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 33
    invoke-virtual {v7, v0}, Landroid/view/View;->setClickable(Z)V

    .line 34
    new-instance v9, Lcom/sunia/HTREnginev2/e3l;

    move-object v1, v9

    move-object v2, p3

    move v3, p2

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/sunia/HTREnginev2/e3l;-><init>(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;ZLcom/permissionx/guolindev/request/ChainTask;Ljava/util/List;Lcom/permissionx/guolindev/request/PermissionBuilder;)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_1

    .line 35
    invoke-virtual {v8, v0}, Landroid/view/View;->setClickable(Z)V

    .line 36
    new-instance p0, Lcom/sunia/HTREnginev2/f3l;

    invoke-direct {p0, p3, p1}, Lcom/sunia/HTREnginev2/f3l;-><init>(Lcom/permissionx/guolindev/dialog/RationaleDialogFragment;Lcom/permissionx/guolindev/request/ChainTask;)V

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final showHandlePermissionDialog(Lcom/permissionx/guolindev/request/ChainTask;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Lcom/permissionx/guolindev/request/ChainTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/permissionx/guolindev/request/ChainTask;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "chainTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positiveText"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/permissionx/guolindev/dialog/DefaultDialog;

    .line 2
    invoke-virtual {p0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 3
    iget v7, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->b:I

    .line 4
    iget v8, p0, Lcom/permissionx/guolindev/request/PermissionBuilder;->c:I

    move-object v1, v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 5
    invoke-direct/range {v1 .. v8}, Lcom/permissionx/guolindev/dialog/DefaultDialog;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/permissionx/guolindev/request/PermissionBuilder;->showHandlePermissionDialog(Lcom/permissionx/guolindev/request/ChainTask;ZLcom/permissionx/guolindev/dialog/RationaleDialog;)V

    return-void
.end method
