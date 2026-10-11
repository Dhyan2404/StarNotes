.class public Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field dataType:I

.field isRequired:Z

.field listMaxLength:I

.field listMinLength:I

.field valueType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->valueType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->isRequired:Z

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->listMinLength:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFAttrInfo;->listMaxLength:I

    return-void
.end method
