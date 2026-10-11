.class abstract Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;
.super Ljava/util/ListResourceBundle;
.source "SourceFile"


# static fields
.field static final commonContents:[[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/Object;

    const-string v1, "dqt"

    const-string v2, "A Define Quantization Table(s) marker segment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "dqtable"

    const-string v2, "A single quantization table"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "dht"

    const-string v2, "A Define Huffman Table(s) marker segment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "dhtable"

    const-string v2, "A single Huffman table"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "dri"

    const-string v2, "A Define Restart Interval marker segment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "com"

    const-string v2, "A Comment marker segment.  The user object contains the actual bytes."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "unknown"

    const-string v2, "An unrecognized marker segment.  The user object contains the data not including length."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "dqtable/elementPrecision"

    const-string v2, "The number of bits in each table element (0 = 8, 1 = 16)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "dgtable/qtableId"

    const-string v2, "The table id"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "dhtable/class"

    const-string v3, "Indicates whether this is a DC (0) or an AC (1) table"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "dhtable/htableId"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "dri/interval"

    const-string v2, "The restart interval in MCUs"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "com/comment"

    const-string v2, "The comment as a string (used only if user object is null)"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "unknown/MarkerTag"

    const-string v2, "The tag identifying this marker segment"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;->commonContents:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method
