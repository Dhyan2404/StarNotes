.class interface abstract Lcom/couchbase/lite/internal/utils/PlatformUtils$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/utils/PlatformUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract getAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getDecoder()Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Decoder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getEncoder()Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
