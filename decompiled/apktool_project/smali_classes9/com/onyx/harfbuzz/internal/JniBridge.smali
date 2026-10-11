.class public Lcom/onyx/harfbuzz/internal/JniBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


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

.method public static loadLibrary()V
    .locals 2

    sget-boolean v0, Lcom/onyx/harfbuzz/internal/JniBridge;->a:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/onyx/harfbuzz/internal/JniBridge;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/onyx/harfbuzz/internal/JniBridge;->a:Z

    if-nez v1, :cond_0

    const-string v1, "hbwrapper"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/onyx/harfbuzz/internal/JniBridge;->a:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
