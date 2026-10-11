.class public interface abstract Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/NeoPlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConfigurableBridge"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge$LoggerConfiguration;
    }
.end annotation


# direct methods
.method public static getLoggerConfiguration(Lsun/util/logging/NeoPlatformLogger$Bridge;)Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge$LoggerConfiguration;
    .locals 1

    .line 2
    instance-of v0, p0, Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge;

    invoke-interface {p0}, Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge;->getLoggerConfiguration()Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge$LoggerConfiguration;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getLoggerConfiguration()Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge$LoggerConfiguration;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method
