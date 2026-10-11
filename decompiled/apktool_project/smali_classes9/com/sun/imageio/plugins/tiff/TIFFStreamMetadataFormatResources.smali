.class public Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormatResources;
.super Ljava/util/ListResourceBundle;
.source "SourceFile"


# static fields
.field private static final contents:[[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/Object;

    const-string v1, "ByteOrder"

    const-string v2, "The stream byte order"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ByteOrder/value"

    const-string v2, "One of \"BIG_ENDIAN\" or \"LITTLE_ENDIAN\""

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormatResources;->contents:[[Ljava/lang/Object;

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

    sget-object p0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadataFormatResources;->contents:[[Ljava/lang/Object;

    invoke-virtual {p0}, [[Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/Object;

    return-object p0
.end method
