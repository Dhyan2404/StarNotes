.class public Landroidx/core/service/quicksettings/TileServiceCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/service/quicksettings/TileServiceCompat$c;,
        Landroidx/core/service/quicksettings/TileServiceCompat$b;,
        Landroidx/core/service/quicksettings/TileServiceCompat$a;
    }
.end annotation


# static fields
.field public static a:Landroidx/core/service/quicksettings/TileServiceCompat$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearTileServiceWrapper()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Landroidx/core/service/quicksettings/TileServiceCompat;->a:Landroidx/core/service/quicksettings/TileServiceCompat$c;

    return-void
.end method

.method public static setTileServiceWrapper(Landroidx/core/service/quicksettings/TileServiceCompat$c;)V
    .locals 0
    .param p0    # Landroidx/core/service/quicksettings/TileServiceCompat$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    sput-object p0, Landroidx/core/service/quicksettings/TileServiceCompat;->a:Landroidx/core/service/quicksettings/TileServiceCompat$c;

    return-void
.end method

.method public static startActivityAndCollapse(Landroid/service/quicksettings/TileService;Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;)V
    .locals 2
    .param p0    # Landroid/service/quicksettings/TileService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    sget-object v0, Landroidx/core/service/quicksettings/TileServiceCompat;->a:Landroidx/core/service/quicksettings/TileServiceCompat$c;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/core/service/quicksettings/TileServiceCompat$c;->b(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/service/quicksettings/TileServiceCompat$b;->a(Landroid/service/quicksettings/TileService;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/core/service/quicksettings/TileServiceCompat;->a:Landroidx/core/service/quicksettings/TileServiceCompat$c;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/core/service/quicksettings/TileServiceCompat$c;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/core/service/quicksettings/PendingIntentActivityWrapper;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/service/quicksettings/TileServiceCompat$a;->a(Landroid/service/quicksettings/TileService;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
