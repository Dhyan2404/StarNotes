.class Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field attributeNames:[Ljava/lang/String;

.field childNames:[Ljava/lang/String;

.field childPolicy:I

.field maxChildren:I

.field minChildren:I

.field objectArrayMaxLength:I

.field objectArrayMinLength:I

.field objectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field objectDefaultValue:Ljava/lang/Object;

.field objectEnumerations:[Ljava/lang/Object;

.field objectMaxValue:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field objectMinValue:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field objectValueType:I


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->minChildren:I

    const v1, 0x7fffffff

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->maxChildren:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectValueType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectClass:Ljava/lang/Class;

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectDefaultValue:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectEnumerations:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectMinValue:Ljava/lang/Comparable;

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectMaxValue:Ljava/lang/Comparable;

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectArrayMinLength:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->objectArrayMaxLength:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->childNames:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->attributeNames:[Ljava/lang/String;

    iput p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFElementInfo;->childPolicy:I

    return-void
.end method
