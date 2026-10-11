.class public abstract Lcom/tencent/qcloud/core/http/ResponseBodyConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/http/ResponseBodyConverter$InputStreamConverter;,
        Lcom/tencent/qcloud/core/http/ResponseBodyConverter$BytesConverter;,
        Lcom/tencent/qcloud/core/http/ResponseBodyConverter$StringConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes()Lcom/tencent/qcloud/core/http/ResponseBodyConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qcloud/core/http/ResponseBodyConverter<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/qcloud/core/http/ResponseBodyConverter$BytesConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qcloud/core/http/ResponseBodyConverter$BytesConverter;-><init>(Lcom/tencent/qcloud/core/http/ResponseBodyConverter$1;)V

    return-object v0
.end method

.method public static file(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/ResponseBodyConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/qcloud/core/http/ResponseBodyConverter<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/tencent/qcloud/core/http/ResponseBodyConverter;->file(Ljava/lang/String;J)Lcom/tencent/qcloud/core/http/ResponseBodyConverter;

    move-result-object p0

    return-object p0
.end method

.method public static file(Ljava/lang/String;J)Lcom/tencent/qcloud/core/http/ResponseBodyConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/tencent/qcloud/core/http/ResponseBodyConverter<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/tencent/qcloud/core/http/ResponseFileConverter;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/qcloud/core/http/ResponseFileConverter;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static inputStream()Lcom/tencent/qcloud/core/http/ResponseBodyConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qcloud/core/http/ResponseBodyConverter<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/qcloud/core/http/ResponseBodyConverter$InputStreamConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qcloud/core/http/ResponseBodyConverter$InputStreamConverter;-><init>(Lcom/tencent/qcloud/core/http/ResponseBodyConverter$1;)V

    return-object v0
.end method

.method public static string()Lcom/tencent/qcloud/core/http/ResponseBodyConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qcloud/core/http/ResponseBodyConverter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/qcloud/core/http/ResponseBodyConverter$StringConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qcloud/core/http/ResponseBodyConverter$StringConverter;-><init>(Lcom/tencent/qcloud/core/http/ResponseBodyConverter$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract convert(Lcom/tencent/qcloud/core/http/HttpResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpResponse<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;,
            Lcom/tencent/qcloud/core/common/QCloudServiceException;
        }
    .end annotation
.end method
