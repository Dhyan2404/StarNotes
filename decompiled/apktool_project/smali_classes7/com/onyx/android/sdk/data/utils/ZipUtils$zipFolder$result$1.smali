.class final Lcom/onyx/android/sdk/data/utils/ZipUtils$zipFolder$result$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/utils/ZipUtils;->zipFolder-RgG5Fkc(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/data/utils/ZipUtils;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
        "kotlin.jvm.PlatformType",
        "Lcom/onyx/android/sdk/data/utils/ZipUtils;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $dstPath:Ljava/lang/String;

.field final synthetic $parameters:Lnet/lingala/zip4j/model/ZipParameters;

.field final synthetic $password:Ljava/lang/String;

.field final synthetic $srcFolder:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$zipFolder$result$1;->$dstPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$zipFolder$result$1;->$password:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$zipFolder$result$1;->$srcFolder:Ljava/io/File;

    iput-object p4, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$zipFolder$result$1;->$parameters:Lnet/lingala/zip4j/model/ZipParameters;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/data/utils/ZipUtils;)Ljava/io/File;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/utils/ZipUtils;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$runCatching"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lnet/lingala/zip4j/ZipFile;

    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$zipFolder$result$1;->$dstPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->ZIP4J_DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/ZipFile;->setCharset(Ljava/nio/charset/Charset;)V

    .line 4
    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$zipFolder$result$1;->$password:Ljava/lang/String;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$zipFolder$result$1;->$password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/ZipFile;->setPassword([C)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$zipFolder$result$1;->$srcFolder:Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$zipFolder$result$1;->$parameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1, v0, p0}, Lnet/lingala/zip4j/ZipFile;->addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/ZipFile;->getFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/data/utils/ZipUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/ZipUtils$zipFolder$result$1;->invoke(Lcom/onyx/android/sdk/data/utils/ZipUtils;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
