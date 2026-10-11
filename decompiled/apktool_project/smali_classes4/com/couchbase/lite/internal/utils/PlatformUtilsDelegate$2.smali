.class Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Decoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;->getDecoder()Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final decoder:Ljava/util/Base64$Decoder;

.field final synthetic this$0:Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate$2;->this$0:Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate$2;->decoder:Ljava/util/Base64$Decoder;

    return-void
.end method


# virtual methods
.method public decodeString(Ljava/lang/String;)[B
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate$2;->decoder:Ljava/util/Base64$Decoder;

    invoke-virtual {p0, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method
