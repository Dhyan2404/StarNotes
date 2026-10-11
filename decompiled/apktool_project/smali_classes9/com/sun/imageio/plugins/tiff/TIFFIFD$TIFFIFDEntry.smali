.class Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/tiff/TIFFIFD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TIFFIFDEntry"
.end annotation


# instance fields
.field public final count:I

.field public final offset:J

.field public final tag:Ljavax/imageio/plugins/tiff/TIFFTag;

.field public final type:I


# direct methods
.method public constructor <init>(Ljavax/imageio/plugins/tiff/TIFFTag;IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;->tag:Ljavax/imageio/plugins/tiff/TIFFTag;

    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;->type:I

    iput p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;->count:I

    iput-wide p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFIFD$TIFFIFDEntry;->offset:J

    return-void
.end method
