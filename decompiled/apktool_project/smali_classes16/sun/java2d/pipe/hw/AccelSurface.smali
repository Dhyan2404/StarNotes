.class public interface abstract Lsun/java2d/pipe/hw/AccelSurface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/hw/BufferedContextProvider;
.implements Lsun/java2d/Surface;


# static fields
.field public static final FLIP_BACKBUFFER:I = 0x4

.field public static final RT_PLAIN:I = 0x2

.field public static final RT_TEXTURE:I = 0x5

.field public static final TEXTURE:I = 0x3

.field public static final UNDEFINED:I = 0x0

.field public static final WINDOW:I = 0x1


# virtual methods
.method public abstract getBounds()Ljava/awt/Rectangle;
.end method

.method public abstract getNativeBounds()Ljava/awt/Rectangle;
.end method

.method public abstract getNativeOps()J
.end method

.method public abstract getNativeResource(I)J
.end method

.method public abstract getType()I
.end method

.method public abstract isSurfaceLost()Z
.end method

.method public abstract isValid()Z
.end method

.method public abstract markDirty()V
.end method
