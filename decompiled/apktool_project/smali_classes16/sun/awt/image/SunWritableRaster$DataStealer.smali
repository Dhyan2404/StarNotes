.class public interface abstract Lsun/awt/image/SunWritableRaster$DataStealer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/image/SunWritableRaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataStealer"
.end annotation


# virtual methods
.method public abstract getData(Ljava/awt/image/DataBufferByte;I)[B
.end method

.method public abstract getData(Ljava/awt/image/DataBufferInt;I)[I
.end method

.method public abstract getData(Ljava/awt/image/DataBufferUShort;I)[S
.end method

.method public abstract getTrackable(Ljava/awt/image/DataBuffer;)Lsun/java2d/StateTrackableDelegate;
.end method

.method public abstract setTrackable(Ljava/awt/image/DataBuffer;Lsun/java2d/StateTrackableDelegate;)V
.end method
