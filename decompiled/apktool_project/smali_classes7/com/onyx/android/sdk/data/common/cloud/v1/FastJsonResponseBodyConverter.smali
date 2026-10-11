.class public final Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "Lokhttp3/ResponseBody;",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u000e*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\u000eB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\tJ\u0015\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\u0003H\u0016\u00a2\u0006\u0002\u0010\rR\u0018\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter;",
        "T",
        "Lretrofit2/Converter;",
        "Lokhttp3/ResponseBody;",
        "mType",
        "Ljava/lang/reflect/Type;",
        "features",
        "",
        "Lcom/alibaba/fastjson2/JSONReader$Feature;",
        "(Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V",
        "[Lcom/alibaba/fastjson2/JSONReader$Feature;",
        "convert",
        "value",
        "(Lokhttp3/ResponseBody;)Ljava/lang/Object;",
        "Companion",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EMPTY_SERIALIZER_FEATURES:[Lcom/alibaba/fastjson2/JSONReader$Feature;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final features:[Lcom/alibaba/fastjson2/JSONReader$Feature;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mType:Ljava/lang/reflect/Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter;->Companion:Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter$Companion;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    sput-object v0, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter;->EMPTY_SERIALIZER_FEATURES:[Lcom/alibaba/fastjson2/JSONReader$Feature;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 1
    .param p1    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lcom/alibaba/fastjson2/JSONReader$Feature;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "mType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter;->mType:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter;->features:[Lcom/alibaba/fastjson2/JSONReader$Feature;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter;->convert(Lokhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lokhttp3/ResponseBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter;->mType:Ljava/lang/reflect/Type;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter;->features:[Lcom/alibaba/fastjson2/JSONReader$Feature;

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/common/cloud/v1/FastJsonResponseBodyConverter;->EMPTY_SERIALIZER_FEATURES:[Lcom/alibaba/fastjson2/JSONReader$Feature;

    :cond_0
    array-length v2, p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 3
    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
