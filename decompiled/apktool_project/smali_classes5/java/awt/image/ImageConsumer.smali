.class public interface abstract Ljava/awt/image/ImageConsumer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMPLETESCANLINES:I = 0x4

.field public static final IMAGEABORTED:I = 0x4

.field public static final IMAGEERROR:I = 0x1

.field public static final RANDOMPIXELORDER:I = 0x1

.field public static final SINGLEFRAME:I = 0x10

.field public static final SINGLEFRAMEDONE:I = 0x2

.field public static final SINGLEPASS:I = 0x8

.field public static final STATICIMAGEDONE:I = 0x3

.field public static final TOPDOWNLEFTRIGHT:I = 0x2


# virtual methods
.method public abstract imageComplete(I)V
.end method

.method public abstract setColorModel(Ljava/awt/image/ColorModel;)V
.end method

.method public abstract setDimensions(II)V
.end method

.method public abstract setHints(I)V
.end method

.method public abstract setPixels(IIIILjava/awt/image/ColorModel;[BII)V
.end method

.method public abstract setPixels(IIIILjava/awt/image/ColorModel;[III)V
.end method

.method public abstract setProperties(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "**>;)V"
        }
    .end annotation
.end method
