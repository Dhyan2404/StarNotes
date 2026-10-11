.class public final Lcom/permissionx/guolindev/dialog/DefaultDialog;
.super Lcom/permissionx/guolindev/dialog/RationaleDialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010)\u001a\u00020(\u0012\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u0019\u001a\u00020\n\u0012\u0006\u0010\u001b\u001a\u00020\n\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010#\u001a\u00020\u001e\u00a2\u0006\u0004\u0008*\u0010+J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\n\u0010\u0008\u001a\u0004\u0018\u00010\u0006H\u0016J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0016J\u000f\u0010\u000f\u001a\u00020\u000cH\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0008\u0010\u0010\u001a\u00020\u0004H\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0002J\u0008\u0010\u0012\u001a\u00020\u0004H\u0002J\u0008\u0010\u0013\u001a\u00020\u000cH\u0002R\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u0018R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u0018R\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010#\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010 R\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006,"
    }
    d2 = {
        "Lcom/permissionx/guolindev/dialog/DefaultDialog;",
        "Lcom/permissionx/guolindev/dialog/RationaleDialog;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "Landroid/view/View;",
        "getPositiveButton",
        "getNegativeButton",
        "",
        "",
        "getPermissionsToRequest",
        "",
        "isPermissionLayoutEmpty$permissionx_release",
        "()Z",
        "isPermissionLayoutEmpty",
        "c",
        "a",
        "d",
        "b",
        "e",
        "Ljava/util/List;",
        "permissions",
        "f",
        "Ljava/lang/String;",
        "message",
        "g",
        "positiveText",
        "h",
        "negativeText",
        "",
        "i",
        "I",
        "lightColor",
        "j",
        "darkColor",
        "Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;",
        "k",
        "Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;",
        "binding",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V",
        "permissionx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final i:I

.field public final j:I

.field public k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positiveText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/permissionx/guolindev/R$style;->PermissionXDefaultDialog:I

    invoke-direct {p0, p1, v0}, Lcom/permissionx/guolindev/dialog/RationaleDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->e:Ljava/util/List;

    iput-object p3, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->h:Ljava/lang/String;

    iput p6, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->i:I

    iput p7, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->j:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x1d

    const/16 v5, 0x21

    if-ne v1, v4, :cond_1

    invoke-static {}, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->getPermissionMapOnQ()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/16 v4, 0x1e

    if-ne v1, v4, :cond_2

    invoke-static {}, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->getPermissionMapOnR()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/16 v4, 0x1f

    if-ne v1, v4, :cond_3

    invoke-static {}, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->getPermissionMapOnS()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-ne v1, v5, :cond_4

    invoke-static {}, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->getPermissionMapOnT()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->getPermissionMapOnT()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/permissionx/guolindev/dialog/PermissionMapKt;->getAllSpecialPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_6
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    iget-object v7, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    const/4 v8, 0x0

    const-string v9, "binding"

    if-nez v7, :cond_7

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v8

    :cond_7
    iget-object v7, v7, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->permissionsLayout:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;

    move-result-object v6

    const-string v7, "inflate(layoutInflater, \u2026permissionsLayout, false)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v11, Lcom/permissionx/guolindev/R$string;->permissionx_access_background_location:I

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v4, v10}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/PermissionGroupInfo;->icon:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_8
    const-string v7, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v10, Lcom/permissionx/guolindev/R$string;->permissionx_system_alert_window:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    sget v7, Lcom/permissionx/guolindev/R$drawable;->permissionx_ic_alert:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_9
    const-string v7, "android.permission.WRITE_SETTINGS"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v10, Lcom/permissionx/guolindev/R$string;->permissionx_write_settings:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    sget v7, Lcom/permissionx/guolindev/R$drawable;->permissionx_ic_setting:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_a
    const-string v7, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v11, Lcom/permissionx/guolindev/R$string;->permissionx_manage_external_storage:I

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v4, v10}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/PermissionGroupInfo;->icon:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_b
    const-string v7, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v10, Lcom/permissionx/guolindev/R$string;->permissionx_request_install_packages:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    sget v7, Lcom/permissionx/guolindev/R$drawable;->permissionx_ic_install:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_c
    const-string v7, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v5, :cond_d

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v10, Lcom/permissionx/guolindev/R$string;->permissionx_post_notification:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    sget v7, Lcom/permissionx/guolindev/R$drawable;->permissionx_ic_notification:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_d
    const-string v5, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v11, Lcom/permissionx/guolindev/R$string;->permissionx_body_sensor_background:I

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v4, v10}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/PermissionGroupInfo;->icon:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_e
    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, v4, v10}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v4, v10}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/PermissionGroupInfo;->icon:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->b()Z

    move-result v5

    const/4 v7, -0x1

    if-eqz v5, :cond_f

    iget v5, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->j:I

    if-eq v5, v7, :cond_10

    iget-object v7, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v5, v10}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_f
    iget v5, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->i:I

    if-eq v5, v7, :cond_10

    iget-object v7, v6, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->permissionIcon:Landroid/widget/ImageView;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v5, v10}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_10
    :goto_3
    iget-object v5, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    if-nez v5, :cond_11

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_11
    move-object v8, v5

    :goto_4
    iget-object v5, v8, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->permissionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Lcom/permissionx/guolindev/databinding/PermissionxPermissionItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-nez v4, :cond_12

    goto :goto_5

    :cond_12
    move-object v3, v4

    :goto_5
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->messageText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->positiveBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/permissionx/guolindev/dialog/DefaultDialog;->b()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->j:I

    if-eq v0, v3, :cond_b

    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->positiveBtn:Landroid/widget/Button;

    iget v3, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->j:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeBtn:Landroid/widget/Button;

    iget p0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->j:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->i:I

    if-eq v0, v3, :cond_b

    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9
    iget-object v0, v0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->positiveBtn:Landroid/widget/Button;

    iget v3, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->i:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    if-nez v0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object v1, v0

    :goto_2
    iget-object v0, v1, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeBtn:Landroid/widget/Button;

    iget p0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->i:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    :goto_3
    return-void
.end method

.method public final d()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x11

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v2}, Landroid/view/Window;->setGravity(I)V

    int-to-double v2, v0

    const-wide v4, 0x3feb851eb851eb85L    # 0.86

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v2}, Landroid/view/Window;->setGravity(I)V

    int-to-double v2, v0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getNegativeButton()Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->h:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->negativeBtn:Landroid/widget/Button;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getPermissionsToRequest()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->e:Ljava/util/List;

    return-object p0
.end method

.method public getPositiveButton()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->positiveBtn:Landroid/widget/Button;

    const-string v0, "binding.positiveBtn"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isPermissionLayoutEmpty$permissionx_release()Z
    .locals 0

    iget-object p0, p0, Lcom/permissionx/guolindev/dialog/DefaultDialog;->k:Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/permissionx/guolindev/databinding/PermissionxDefaultDialogLayoutBinding;->permissionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffff87

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
