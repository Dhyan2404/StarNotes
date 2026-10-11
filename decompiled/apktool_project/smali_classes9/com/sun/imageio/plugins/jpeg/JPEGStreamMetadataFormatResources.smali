.class public Lcom/sun/imageio/plugins/jpeg/JPEGStreamMetadataFormatResources;
.super Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 5

    sget-object p0, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;->commonContents:[[Ljava/lang/Object;

    array-length p0, p0

    const/4 v0, 0x2

    filled-new-array {p0, v0}, [I

    move-result-object p0

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormatResources;->commonContents:[[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, p0, v1

    aget-object v4, v2, v1

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    aget-object v3, p0, v1

    aget-object v2, v2, v1

    const/4 v4, 0x1

    aget-object v2, v2, v4

    aput-object v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
