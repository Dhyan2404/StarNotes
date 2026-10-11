.class public abstract Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge$LoggerConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/NeoPlatformLogger$ConfigurableBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LoggerConfiguration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPlatformLevel()Lsun/util/logging/NeoPlatformLogger$Level;
.end method

.method public abstract setPlatformLevel(Lsun/util/logging/NeoPlatformLogger$Level;)V
.end method
