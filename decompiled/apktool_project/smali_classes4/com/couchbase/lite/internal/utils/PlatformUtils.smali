.class public final Lcom/couchbase/lite/internal/utils/PlatformUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/utils/PlatformUtils$Delegate;,
        Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;,
        Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Decoder;
    }
.end annotation


# static fields
.field private static final DELEGATE:Lcom/couchbase/lite/internal/utils/PlatformUtils$Delegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/utils/PlatformUtilsDelegate;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/utils/PlatformUtils;->DELEGATE:Lcom/couchbase/lite/internal/utils/PlatformUtils$Delegate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/utils/PlatformUtils;->DELEGATE:Lcom/couchbase/lite/internal/utils/PlatformUtils$Delegate;

    invoke-interface {v0, p0}, Lcom/couchbase/lite/internal/utils/PlatformUtils$Delegate;->getAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static getDecoder()Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Decoder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/utils/PlatformUtils;->DELEGATE:Lcom/couchbase/lite/internal/utils/PlatformUtils$Delegate;

    invoke-interface {v0}, Lcom/couchbase/lite/internal/utils/PlatformUtils$Delegate;->getDecoder()Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Decoder;

    move-result-object v0

    return-object v0
.end method

.method public static getEncoder()Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/utils/PlatformUtils;->DELEGATE:Lcom/couchbase/lite/internal/utils/PlatformUtils$Delegate;

    invoke-interface {v0}, Lcom/couchbase/lite/internal/utils/PlatformUtils$Delegate;->getEncoder()Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;

    move-result-object v0

    return-object v0
.end method
