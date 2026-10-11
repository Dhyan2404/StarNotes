.class public Lcom/sunia/HTREnginev2/lon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/lon$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "TwilightManager"

.field public static final e:I = 0x6

.field public static final f:I = 0x16

.field public static g:Lcom/sunia/HTREnginev2/lon;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/location/LocationManager;

.field public final c:Lcom/sunia/HTREnginev2/lon$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/lon$a;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/lon$a;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/lon;->c:Lcom/sunia/HTREnginev2/lon$a;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lon;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lon;->b:Landroid/location/LocationManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sunia/HTREnginev2/lon;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sunia/HTREnginev2/lon;->g:Lcom/sunia/HTREnginev2/lon;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/lon;

    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/lon;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Lcom/sunia/HTREnginev2/lon;->g:Lcom/sunia/HTREnginev2/lon;

    :cond_0
    sget-object p0, Lcom/sunia/HTREnginev2/lon;->g:Lcom/sunia/HTREnginev2/lon;

    return-object p0
.end method

.method public static f(Lcom/sunia/HTREnginev2/lon;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sunia/HTREnginev2/lon;->g:Lcom/sunia/HTREnginev2/lon;

    return-void
.end method


# virtual methods
.method public final b()Landroid/location/Location;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lon;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "network"

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/lon;->c(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/lon;->a:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "gps"

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/lon;->c(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-lez p0, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0

    :cond_3
    if-eqz v1, :cond_4

    move-object v0, v1

    :cond_4
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/lon;->b:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lon;->b:Landroid/location/LocationManager;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "TwilightManager"

    const-string v0, "Failed to get last known location"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lon;->c:Lcom/sunia/HTREnginev2/lon$a;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/lon;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean p0, v0, Lcom/sunia/HTREnginev2/lon$a;->a:Z

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/lon;->b()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/lon;->g(Landroid/location/Location;)V

    iget-boolean p0, v0, Lcom/sunia/HTREnginev2/lon$a;->a:Z

    return p0

    :cond_1
    const-string p0, "TwilightManager"

    const-string v0, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v0, 0x6

    if-lt p0, v0, :cond_3

    const/16 v0, 0x16

    if-lt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final e()Z
    .locals 4

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lon;->c:Lcom/sunia/HTREnginev2/lon$a;

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/lon$a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g(Landroid/location/Location;)V
    .locals 18
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sunia/HTREnginev2/lon;->c:Lcom/sunia/HTREnginev2/lon$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/sunia/HTREnginev2/kon;->b()Lcom/sunia/HTREnginev2/kon;

    move-result-object v10

    const-wide/32 v11, 0x5265c00

    sub-long v2, v8, v11

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object v1, v10

    invoke-virtual/range {v1 .. v7}, Lcom/sunia/HTREnginev2/kon;->a(JDD)V

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-wide v2, v8

    invoke-virtual/range {v1 .. v7}, Lcom/sunia/HTREnginev2/kon;->a(JDD)V

    iget v1, v10, Lcom/sunia/HTREnginev2/kon;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v13, v2

    iget-wide v14, v10, Lcom/sunia/HTREnginev2/kon;->b:J

    iget-wide v6, v10, Lcom/sunia/HTREnginev2/kon;->a:J

    add-long v2, v8, v11

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    move-object v1, v10

    move-wide/from16 v16, v6

    move-wide v6, v11

    invoke-virtual/range {v1 .. v7}, Lcom/sunia/HTREnginev2/kon;->a(JDD)V

    iget-wide v1, v10, Lcom/sunia/HTREnginev2/kon;->b:J

    const-wide/16 v3, -0x1

    cmp-long v5, v14, v3

    if-eqz v5, :cond_4

    cmp-long v3, v16, v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    cmp-long v3, v8, v16

    const-wide/16 v4, 0x0

    if-lez v3, :cond_2

    add-long/2addr v1, v4

    goto :goto_1

    :cond_2
    cmp-long v1, v8, v14

    if-lez v1, :cond_3

    add-long v1, v16, v4

    goto :goto_1

    :cond_3
    add-long v1, v14, v4

    :goto_1
    const-wide/32 v3, 0xea60

    add-long/2addr v1, v3

    goto :goto_3

    :cond_4
    :goto_2
    const-wide/32 v1, 0x2932e00

    add-long/2addr v1, v8

    :goto_3
    iput-boolean v13, v0, Lcom/sunia/HTREnginev2/lon$a;->a:Z

    iput-wide v1, v0, Lcom/sunia/HTREnginev2/lon$a;->b:J

    return-void
.end method
