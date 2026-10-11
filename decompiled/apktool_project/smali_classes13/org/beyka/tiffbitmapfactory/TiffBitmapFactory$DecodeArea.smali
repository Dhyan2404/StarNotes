.class public final Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$DecodeArea;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecodeArea"
.end annotation


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$DecodeArea;->x:I

    .line 4
    iput p2, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$DecodeArea;->y:I

    .line 5
    iput p3, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$DecodeArea;->width:I

    .line 6
    iput p4, p0, Lorg/beyka/tiffbitmapfactory/TiffBitmapFactory$DecodeArea;->height:I

    return-void
.end method
