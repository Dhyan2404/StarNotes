.class Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;->getEncoder()Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final encoder:Ljava/util/Base64$Encoder;

.field final synthetic this$0:Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate$1;->this$0:Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate$1;->encoder:Ljava/util/Base64$Encoder;

    return-void
.end method


# virtual methods
.method public encodeToString([B)Ljava/lang/String;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate$1;->encoder:Ljava/util/Base64$Encoder;

    invoke-virtual {p0, p1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
