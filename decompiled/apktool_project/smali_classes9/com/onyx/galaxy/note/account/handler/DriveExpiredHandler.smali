.class public final Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\tH\u0002J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0002R\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;",
        "",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "provider",
        "",
        "onDriveTokenExpired",
        "Landroid/content/Context;",
        "activityContext",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "buildBindDriveAction",
        "h",
        "g",
        "e",
        "b",
        "authResult",
        "c",
        "",
        "handling",
        "d",
        "",
        "a",
        "Ljava/util/Set;",
        "providerHandlingSet",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->INSTANCE:Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->f(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method

.method public static final synthetic access$handleAuthFailed(Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$handleAuthResult(Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;Landroid/content/Context;Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->c(Landroid/content/Context;Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V

    return-void
.end method

.method public static final synthetic access$handleTokenExpire(Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->d(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Z)V

    return-void
.end method

.method public static final synthetic access$onBindDrive(Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->e(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method

.method public static final f(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 2

    const-string v0, "$provider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->INSTANCE:Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->d(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Z)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 2

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/onyx/galaxy/note/settings/ui/SettingsActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "menuName"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->cloud_backup_bind_fail_hint:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void
.end method

.method public final buildBindDriveAction(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$a;->e:Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$a;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$b;->e:Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$b;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$c;

    invoke-direct {v0, p1, p2}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$c;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p2, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$d;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p2, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$e;

    invoke-direct {p2, p1}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Landroid/content/Context;Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V
    .locals 1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->isSuccess()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p2, Lcom/onyx/galaxy/note/R$string;->cloud_backup_bind_success_hint:I

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->hasStoragePermissionByConfig(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/sync/MMKVBackup;->getCloudBackupAutoOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->g(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Z)V
    .locals 0

    if-eqz p2, :cond_0

    sget-object p0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final e(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->buildBindDriveAction(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/vif;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/vif;-><init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final g(Landroid/content/Context;)V
    .locals 3

    sget p0, Lcom/onyx/galaxy/note/R$string;->user_drive_token_expired_cancel_bind_tip_prefix:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_drive_token_expired_cancel_bind_tip_suffix:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public final h(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->Companion:Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider$Companion;->getNameByProvider(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_drive_token_expired_tip:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/onyx/android/sdk/base/R$string;->tip:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_drive_token_expired_not_bound_temporarily:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$string;->user_drive_token_expired_bind_now:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelable(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$showDialog$1;

    invoke-direct {v0, p1, p2}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$showDialog$1;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$showDialog$2;->INSTANCE:Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$showDialog$2;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$showDialog$3;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler$showDialog$3;-><init>(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setDismissCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-void
.end method

.method public final onDriveTokenExpired(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->d(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Z)V

    sget-object v0, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/extension/Activity;->getFrontActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/account/handler/DriveExpiredHandler;->h(Landroid/content/Context;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method
