.class public Lsun/java2d/SunCompositeContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/CompositeContext;


# instance fields
.field composite:Ljava/awt/Composite;

.field dstCM:Ljava/awt/image/ColorModel;

.field srcCM:Ljava/awt/image/ColorModel;


# direct methods
.method public constructor <init>(Ljava/awt/AlphaComposite;Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 2
    iput-object p2, p0, Lsun/java2d/SunCompositeContext;->srcCM:Ljava/awt/image/ColorModel;

    .line 3
    iput-object p3, p0, Lsun/java2d/SunCompositeContext;->dstCM:Ljava/awt/image/ColorModel;

    .line 4
    iput-object p1, p0, Lsun/java2d/SunCompositeContext;->composite:Ljava/awt/Composite;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Destination color model cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Source color model cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lsun/java2d/loops/XORComposite;Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 8
    iput-object p2, p0, Lsun/java2d/SunCompositeContext;->srcCM:Ljava/awt/image/ColorModel;

    .line 9
    iput-object p3, p0, Lsun/java2d/SunCompositeContext;->dstCM:Ljava/awt/image/ColorModel;

    .line 10
    iput-object p1, p0, Lsun/java2d/SunCompositeContext;->composite:Ljava/awt/Composite;

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Destination color model cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Source color model cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compose(Ljava/awt/image/Raster;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method
