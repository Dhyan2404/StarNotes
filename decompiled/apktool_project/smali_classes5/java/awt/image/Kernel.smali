.class public Ljava/awt/image/Kernel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private data:[F

.field private height:I

.field private width:I

.field private xOrigin:I

.field private yOrigin:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Ljava/awt/image/ColorModel;->loadLibraries()V

    invoke-static {}, Ljava/awt/image/Kernel;->initIDs()V

    return-void
.end method

.method public constructor <init>(II[F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/awt/image/Kernel;->width:I

    iput p2, p0, Ljava/awt/image/Kernel;->height:I

    add-int/lit8 v0, p1, -0x1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/awt/image/Kernel;->xOrigin:I

    add-int/lit8 v0, p2, -0x1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/awt/image/Kernel;->yOrigin:I

    mul-int/2addr p1, p2

    array-length p2, p3

    if-lt p2, p1, :cond_0

    new-array p2, p1, [F

    iput-object p2, p0, Ljava/awt/image/Kernel;->data:[F

    const/4 p0, 0x0

    invoke-static {p3, p0, p2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Data array too small (is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " and should be "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/awt/InternalError;

    invoke-direct {v0, p0}, Ljava/awt/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Ljava/awt/image/Kernel;->height:I

    return p0
.end method

.method public final getKernelData([F)[F
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Ljava/awt/image/Kernel;->data:[F

    array-length p1, p1

    new-array p1, p1, [F

    goto :goto_0

    :cond_0
    array-length v0, p1

    iget-object v1, p0, Ljava/awt/image/Kernel;->data:[F

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :goto_0
    iget-object p0, p0, Ljava/awt/image/Kernel;->data:[F

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data array too small (should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ljava/awt/image/Kernel;->data:[F

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but is "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Ljava/awt/image/Kernel;->width:I

    return p0
.end method

.method public final getXOrigin()I
    .locals 0

    iget p0, p0, Ljava/awt/image/Kernel;->xOrigin:I

    return p0
.end method

.method public final getYOrigin()I
    .locals 0

    iget p0, p0, Ljava/awt/image/Kernel;->yOrigin:I

    return p0
.end method
