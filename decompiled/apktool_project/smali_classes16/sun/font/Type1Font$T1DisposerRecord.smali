.class Lsun/font/Type1Font$T1DisposerRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/Type1Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T1DisposerRecord"
.end annotation


# instance fields
.field fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/font/Type1Font$T1DisposerRecord;->fileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lsun/font/Type1Font$T1DisposerRecord$1;

    invoke-direct {v0, p0}, Lsun/font/Type1Font$T1DisposerRecord$1;-><init>(Lsun/font/Type1Font$T1DisposerRecord;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
