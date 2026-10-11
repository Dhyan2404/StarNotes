.class public Lsun/java2d/cmm/CMSManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/cmm/CMSManager$CMMTracer;
    }
.end annotation


# static fields
.field public static GRAYspace:Ljava/awt/color/ColorSpace;

.field public static LINEAR_RGBspace:Ljava/awt/color/ColorSpace;

.field private static cmmImpl:Lsun/java2d/cmm/PCMM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized canCreateModule()Z
    .locals 2

    const-class v0, Lsun/java2d/cmm/CMSManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/java2d/cmm/CMSManager;->cmmImpl:Lsun/java2d/cmm/PCMM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getModule()Lsun/java2d/cmm/PCMM;
    .locals 4

    const-class v0, Lsun/java2d/cmm/CMSManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/java2d/cmm/CMSManager;->cmmImpl:Lsun/java2d/cmm/PCMM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string v2, "sun.java2d.cmm"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/java2d/cmm/CMMServiceProvider;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    :try_start_3
    new-instance v1, Lsun/java2d/cmm/lcms/LcmsServiceProvider;

    invoke-direct {v1}, Lsun/java2d/cmm/lcms/LcmsServiceProvider;-><init>()V

    :cond_2
    invoke-virtual {v1}, Lsun/java2d/cmm/CMMServiceProvider;->getColorManagementModule()Lsun/java2d/cmm/PCMM;

    move-result-object v1

    sput-object v1, Lsun/java2d/cmm/CMSManager;->cmmImpl:Lsun/java2d/cmm/PCMM;

    if-eqz v1, :cond_4

    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string v2, "sun.java2d.cmm.trace"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Lsun/java2d/cmm/CMSManager$CMMTracer;

    sget-object v2, Lsun/java2d/cmm/CMSManager;->cmmImpl:Lsun/java2d/cmm/PCMM;

    invoke-direct {v1, v2}, Lsun/java2d/cmm/CMSManager$CMMTracer;-><init>(Lsun/java2d/cmm/PCMM;)V

    sput-object v1, Lsun/java2d/cmm/CMSManager;->cmmImpl:Lsun/java2d/cmm/PCMM;

    :cond_3
    sget-object v1, Lsun/java2d/cmm/CMSManager;->cmmImpl:Lsun/java2d/cmm/PCMM;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_4
    :try_start_4
    new-instance v1, Ljava/awt/color/CMMException;

    const-string v2, "Cannot initialize Color Management System.No CM module found"

    invoke-direct {v1, v2}, Ljava/awt/color/CMMException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
