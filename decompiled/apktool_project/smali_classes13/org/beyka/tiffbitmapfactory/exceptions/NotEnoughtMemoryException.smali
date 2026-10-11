.class public Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private availableMemory:I

.field private needMemory:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Available memory is not enought to decode image. Available "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes. Need "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;->availableMemory:I

    iput p2, p0, Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;->needMemory:I

    return-void
.end method


# virtual methods
.method public getAvailableMemory()I
    .locals 0

    iget p0, p0, Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;->availableMemory:I

    return p0
.end method

.method public getNeedMemory()I
    .locals 0

    iget p0, p0, Lorg/beyka/tiffbitmapfactory/exceptions/NotEnoughtMemoryException;->needMemory:I

    return p0
.end method
