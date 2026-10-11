.class public Lorg/apache/logging/log4j/internal/LogManagerStatus;
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

.method public static isInitialized()Z
    .locals 1

    sget-boolean v0, Lorg/apache/logging/log4j/internal/LogManagerStatus;->a:Z

    return v0
.end method

.method public static setInitialized(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "managerStatus"
        }
    .end annotation

    sput-boolean p0, Lorg/apache/logging/log4j/internal/LogManagerStatus;->a:Z

    return-void
.end method
