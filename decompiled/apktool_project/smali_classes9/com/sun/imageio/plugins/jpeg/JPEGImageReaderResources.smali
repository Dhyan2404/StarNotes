.class public Lcom/sun/imageio/plugins/jpeg/JPEGImageReaderResources;
.super Ljava/util/ListResourceBundle;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 3

    const/4 p0, 0x3

    new-array p0, p0, [[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Truncated File - Missing EOI marker"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "JFIF markers not allowed in JFIF JPEG thumbnail; ignored"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Embedded color profile is invalid; ignored"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    return-object p0
.end method
