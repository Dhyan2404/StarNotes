.class public final Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008#\u0010$R2\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002j\u0002`\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bRA\u0010\u0016\u001a!\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00110\u0002j\u0002`\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0007\u001a\u0004\u0008\u0014\u0010\t\"\u0004\u0008\u0015\u0010\u000bRA\u0010\u001c\u001a!\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u00170\u0002j\u0002`\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0007\u001a\u0004\u0008\u001a\u0010\t\"\u0004\u0008\u001b\u0010\u000bRA\u0010\"\u001a!\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\u001d0\u0002j\u0002`\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u0007\u001a\u0004\u0008 \u0010\t\"\u0004\u0008!\u0010\u000b\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;",
        "",
        "Lkotlin/Function1;",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HwrRecognizerFactory;",
        "a",
        "Lkotlin/jvm/functions/Function1;",
        "getRecognizerFactory",
        "()Lkotlin/jvm/functions/Function1;",
        "setRecognizerFactory",
        "(Lkotlin/jvm/functions/Function1;)V",
        "recognizerFactory",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "engine",
        "Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HwrResultConverterFactory;",
        "b",
        "getResultConverterFactory",
        "setResultConverterFactory",
        "resultConverterFactory",
        "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HwrResourceCheckerFactory;",
        "c",
        "getResourceCheckerFactory",
        "setResourceCheckerFactory",
        "resourceCheckerFactory",
        "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HwrResourceDownloaderFactory;",
        "d",
        "getResourceDownloaderFactory",
        "setResourceDownloaderFactory",
        "resourceDownloaderFactory",
        "<init>",
        "()V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
            "+",
            "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory$recognizerFactory$1;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory$recognizerFactory$1;

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->a:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory$resultConverterFactory$1;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory$resultConverterFactory$1;

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->b:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory$resourceCheckerFactory$1;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory$resourceCheckerFactory$1;

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->c:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory$resourceDownloaderFactory$1;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory$resourceDownloaderFactory$1;

    sput-object v0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRecognizerFactory()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
            "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->a:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getResourceCheckerFactory()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->c:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getResourceDownloaderFactory()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->d:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getResultConverterFactory()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->b:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final setRecognizerFactory(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
            "+",
            "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setResourceCheckerFactory(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setResourceDownloaderFactory(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceDownloader;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setResultConverterFactory(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method
