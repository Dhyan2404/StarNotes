.class public abstract Lsun/font/FontAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static access:Lsun/font/FontAccess;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getFontAccess()Lsun/font/FontAccess;
    .locals 2

    const-class v0, Lsun/font/FontAccess;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/FontAccess;->access:Lsun/font/FontAccess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setFontAccess(Lsun/font/FontAccess;)V
    .locals 2

    const-class v0, Lsun/font/FontAccess;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/FontAccess;->access:Lsun/font/FontAccess;

    if-nez v1, :cond_0

    sput-object p0, Lsun/font/FontAccess;->access:Lsun/font/FontAccess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/InternalError;

    const-string v1, "Attempt to set FontAccessor twice"

    invoke-direct {p0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract getFont2D(Ljava/awt/Font;)Lsun/font/Font2D;
.end method

.method public abstract isCreatedFont(Ljava/awt/Font;)Z
.end method

.method public abstract setCreatedFont(Ljava/awt/Font;)V
.end method

.method public abstract setFont2D(Ljava/awt/Font;Lsun/font/Font2DHandle;)V
.end method
