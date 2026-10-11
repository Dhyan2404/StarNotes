.class public Ljavax/imageio/ImageTypeSpecifier$f;
.super Ljavax/imageio/ImageTypeSpecifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/imageio/ImageTypeSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public c:Ljava/awt/color/ColorSpace;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/awt/color/ColorSpace;IIIIIZ)V
    .locals 12

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljavax/imageio/ImageTypeSpecifier$a;)V

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    if-eq v9, v10, :cond_1

    const/4 v1, 0x3

    if-ne v9, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad value for transferType!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No mask has at least 1 bit set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iput-object v2, v0, Ljavax/imageio/ImageTypeSpecifier$f;->c:Ljava/awt/color/ColorSpace;

    iput v4, v0, Ljavax/imageio/ImageTypeSpecifier$f;->d:I

    iput v5, v0, Ljavax/imageio/ImageTypeSpecifier$f;->e:I

    iput v6, v0, Ljavax/imageio/ImageTypeSpecifier$f;->f:I

    iput v7, v0, Ljavax/imageio/ImageTypeSpecifier$f;->g:I

    iput v9, v0, Ljavax/imageio/ImageTypeSpecifier$f;->h:I

    move/from16 v8, p7

    iput-boolean v8, v0, Ljavax/imageio/ImageTypeSpecifier$f;->i:Z

    const/16 v3, 0x20

    new-instance v11, Ljava/awt/image/DirectColorModel;

    move-object v1, v11

    move-object v2, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Ljava/awt/image/DirectColorModel;-><init>(Ljava/awt/color/ColorSpace;IIIIIZI)V

    iput-object v11, v0, Ljavax/imageio/ImageTypeSpecifier;->colorModel:Ljava/awt/image/ColorModel;

    invoke-virtual {v11, v10, v10}, Ljava/awt/image/ColorModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object v1

    iput-object v1, v0, Ljavax/imageio/ImageTypeSpecifier;->sampleModel:Ljava/awt/image/SampleModel;

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colorSpace is not of type TYPE_RGB!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "colorSpace == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
