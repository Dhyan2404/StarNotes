.class public interface abstract Lsun/java2d/cmm/ColorTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Any:I = -0x1

.field public static final Gamut:I = 0x3

.field public static final In:I = 0x1

.field public static final Out:I = 0x2

.field public static final Simulation:I = 0x4


# virtual methods
.method public abstract colorConvert(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)V
.end method

.method public abstract colorConvert(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)V
.end method

.method public abstract colorConvert(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;[F[F[F[F)V
.end method

.method public abstract colorConvert([B[B)[B
.end method

.method public abstract colorConvert([S[S)[S
.end method

.method public abstract getNumInComponents()I
.end method

.method public abstract getNumOutComponents()I
.end method
