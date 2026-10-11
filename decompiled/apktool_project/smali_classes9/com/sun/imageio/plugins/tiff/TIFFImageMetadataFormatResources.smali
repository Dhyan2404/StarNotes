.class public Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormatResources;
.super Ljava/util/ListResourceBundle;
.source "SourceFile"


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x2b

    new-array v0, v0, [[Ljava/lang/Object;

    const-string v1, "TIFFIFD"

    const-string v2, "An IFD (directory) containing fields"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TIFFIFD/parentTagNumber"

    const-string v2, "The tag number of the field pointing to this IFD"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "TIFFIFD/parentTagName"

    const-string v2, "A mnemonic name for the field pointing to this IFD, if known"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "TIFFField"

    const-string v2, "A field containing data"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "TIFFField/number"

    const-string v2, "The tag number asociated with the field"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "TIFFField/name"

    const-string v2, "A mnemonic name associated with the field, if known"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "TIFFUndefined"

    const-string v2, "Uninterpreted byte data"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "TIFFUndefined/value"

    const-string v2, "A list of comma-separated byte values"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "TIFFBytes"

    const-string v2, "A sequence of TIFFByte nodes"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "TIFFByte"

    const-string v2, "An integral value between 0 and 255"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "TIFFByte/value"

    const-string v2, "The value"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "TIFFByte/description"

    const-string v3, "A description, if available"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v0, v4

    const-string v1, "TIFFAsciis"

    const-string v4, "A sequence of TIFFAscii nodes"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0xc

    aput-object v1, v0, v4

    const-string v1, "TIFFAscii"

    const-string v4, "A String value"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0xd

    aput-object v1, v0, v4

    const-string v1, "TIFFAscii/value"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0xe

    aput-object v1, v0, v4

    const-string v1, "TIFFShorts"

    const-string v4, "A sequence of TIFFShort nodes"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0xf

    aput-object v1, v0, v4

    const-string v1, "TIFFShort"

    const-string v4, "An integral value between 0 and 65535"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v0, v4

    const-string v1, "TIFFShort/value"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x11

    aput-object v1, v0, v4

    const-string v1, "TIFFShort/description"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x12

    aput-object v1, v0, v4

    const-string v1, "TIFFSShorts"

    const-string v4, "A sequence of TIFFSShort nodes"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x13

    aput-object v1, v0, v4

    const-string v1, "TIFFSShort"

    const-string v4, "An integral value between -32768 and 32767"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x14

    aput-object v1, v0, v4

    const-string v1, "TIFFSShort/value"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x15

    aput-object v1, v0, v4

    const-string v1, "TIFFSShort/description"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x16

    aput-object v1, v0, v4

    const-string v1, "TIFFLongs"

    const-string v4, "A sequence of TIFFLong nodes"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x17

    aput-object v1, v0, v4

    const-string v1, "TIFFLong"

    const-string v4, "An integral value between 0 and 4294967295"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x18

    aput-object v1, v0, v4

    const-string v1, "TIFFLong/value"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x19

    aput-object v1, v0, v4

    const-string v1, "TIFFLong/description"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    const-string v1, "TIFFSLongs"

    const-string v4, "A sequence of TIFFSLong nodes"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x1b

    aput-object v1, v0, v4

    const-string v1, "TIFFSLong"

    const-string v4, "An integral value between -2147483648 and 2147483647"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x1c

    aput-object v1, v0, v4

    const-string v1, "TIFFSLong/value"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x1d

    aput-object v1, v0, v4

    const-string v1, "TIFFSLong/description"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    const-string v1, "TIFFRationals"

    const-string v3, "A sequence of TIFFRational nodes"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    const-string v1, "TIFFRational"

    const-string v3, "A rational value consisting of an unsigned numerator and denominator"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x20

    aput-object v1, v0, v3

    const-string v1, "TIFFRational/value"

    const-string v3, "The numerator and denominator, separated by a slash"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x21

    aput-object v1, v0, v4

    const-string v1, "TIFFSRationals"

    const-string v4, "A sequence of TIFFSRational nodes"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x22

    aput-object v1, v0, v4

    const-string v1, "TIFFSRational"

    const-string v4, "A rational value consisting of a signed numerator and denominator"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x23

    aput-object v1, v0, v4

    const-string v1, "TIFFSRational/value"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x24

    aput-object v1, v0, v3

    const-string v1, "TIFFFloats"

    const-string v3, "A sequence of TIFFFloat nodes"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x25

    aput-object v1, v0, v3

    const-string v1, "TIFFFloat"

    const-string v3, "A single-precision floating-point value"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x26

    aput-object v1, v0, v3

    const-string v1, "TIFFFloat/value"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x27

    aput-object v1, v0, v3

    const-string v1, "TIFFDoubles"

    const-string v3, "A sequence of TIFFDouble nodes"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x28

    aput-object v1, v0, v3

    const-string v1, "TIFFDouble"

    const-string v3, "A double-precision floating-point value"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x29

    aput-object v1, v0, v3

    const-string v1, "TIFFDouble/value"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormatResources;->contents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadataFormatResources;->contents:[[Ljava/lang/Object;

    invoke-virtual {p0}, [[Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/Object;

    return-object p0
.end method
