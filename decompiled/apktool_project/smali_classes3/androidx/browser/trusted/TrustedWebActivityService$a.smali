.class public Landroidx/browser/trusted/TrustedWebActivityService$a;
.super Landroid/support/customtabs/trusted/ITrustedWebActivityService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/TrustedWebActivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic i:Landroidx/browser/trusted/TrustedWebActivityService;


# direct methods
.method public constructor <init>(Landroidx/browser/trusted/TrustedWebActivityService;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->i:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-direct {p0}, Landroid/support/customtabs/trusted/ITrustedWebActivityService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public areNotificationsEnabled(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroidx/browser/trusted/TrustedWebActivityService$a;->e()V

    invoke-static {p1}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$d;->a(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityServiceConnection$d;

    move-result-object p1

    iget-object p0, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->i:Landroidx/browser/trusted/TrustedWebActivityService;

    iget-object p1, p1, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$d;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/browser/trusted/TrustedWebActivityService;->onAreNotificationsEnabled(Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$f;

    invoke-direct {p1, p0}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$f;-><init>(Z)V

    invoke-virtual {p1}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$f;->b()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public cancelNotification(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/browser/trusted/TrustedWebActivityService$a;->e()V

    invoke-static {p1}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$c;->a(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityServiceConnection$c;

    move-result-object p1

    iget-object p0, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->i:Landroidx/browser/trusted/TrustedWebActivityService;

    iget-object v0, p1, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$c;->a:Ljava/lang/String;

    iget p1, p1, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$c;->b:I

    invoke-virtual {p0, v0, p1}, Landroidx/browser/trusted/TrustedWebActivityService;->onCancelNotification(Ljava/lang/String;I)V

    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->i:Landroidx/browser/trusted/TrustedWebActivityService;

    iget v1, v0, Landroidx/browser/trusted/TrustedWebActivityService;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->i:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-virtual {v2}, Landroidx/browser/trusted/TrustedWebActivityService;->getTokenStore()Landroidx/browser/trusted/TokenStore;

    move-result-object v2

    invoke-interface {v2}, Landroidx/browser/trusted/TokenStore;->load()Landroidx/browser/trusted/Token;

    move-result-object v2

    iget-object v3, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->i:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v2, :cond_2

    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    invoke-virtual {v2, v5, v3}, Landroidx/browser/trusted/Token;->matches(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->i:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, v0, Landroidx/browser/trusted/TrustedWebActivityService;->f:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->i:Landroidx/browser/trusted/TrustedWebActivityService;

    iget p0, p0, Landroidx/browser/trusted/TrustedWebActivityService;->f:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p0, v0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not verified as Trusted Web Activity provider."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroidx/browser/trusted/TrustedWebActivityService$a;->e()V

    iget-object p0, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->i:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-static {p3}, Landroidx/browser/trusted/TrustedWebActivityCallbackRemote;->a(Landroid/os/IBinder;)Landroidx/browser/trusted/TrustedWebActivityCallbackRemote;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/browser/trusted/TrustedWebActivityService;->onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/browser/trusted/TrustedWebActivityCallbackRemote;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getActiveNotifications()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Landroidx/browser/trusted/TrustedWebActivityService$a;->e()V

    new-instance v0, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$b;

    iget-object p0, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->i:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-virtual {p0}, Landroidx/browser/trusted/TrustedWebActivityService;->onGetActiveNotifications()[Landroid/os/Parcelable;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$b;-><init>([Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$b;->b()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getSmallIconBitmap()Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0}, Landroidx/browser/trusted/TrustedWebActivityService$a;->e()V

    iget-object p0, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->i:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-virtual {p0}, Landroidx/browser/trusted/TrustedWebActivityService;->onGetSmallIconBitmap()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getSmallIconId()I
    .locals 0

    invoke-virtual {p0}, Landroidx/browser/trusted/TrustedWebActivityService$a;->e()V

    iget-object p0, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->i:Landroidx/browser/trusted/TrustedWebActivityService;

    invoke-virtual {p0}, Landroidx/browser/trusted/TrustedWebActivityService;->onGetSmallIconId()I

    move-result p0

    return p0
.end method

.method public notifyNotificationWithChannel(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Landroidx/browser/trusted/TrustedWebActivityService$a;->e()V

    invoke-static {p1}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$e;->a(Landroid/os/Bundle;)Landroidx/browser/trusted/TrustedWebActivityServiceConnection$e;

    move-result-object p1

    iget-object p0, p0, Landroidx/browser/trusted/TrustedWebActivityService$a;->i:Landroidx/browser/trusted/TrustedWebActivityService;

    iget-object v0, p1, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$e;->a:Ljava/lang/String;

    iget v1, p1, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$e;->b:I

    iget-object v2, p1, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$e;->c:Landroid/app/Notification;

    iget-object p1, p1, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$e;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/browser/trusted/TrustedWebActivityService;->onNotifyNotificationWithChannel(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$f;

    invoke-direct {p1, p0}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$f;-><init>(Z)V

    invoke-virtual {p1}, Landroidx/browser/trusted/TrustedWebActivityServiceConnection$f;->b()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
