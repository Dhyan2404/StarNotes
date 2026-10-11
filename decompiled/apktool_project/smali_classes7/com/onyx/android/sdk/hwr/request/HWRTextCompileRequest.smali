.class public final Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest;
.super Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00142\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0014B\u0019\u0008\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u000f\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0002R\"\u0010\u000f\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest;",
        "Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;",
        "",
        "",
        "execute",
        "",
        "b",
        "compileData",
        "a",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "getInput",
        "()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "setInput",
        "(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V",
        "input",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "bundle",
        "<init>",
        "(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V",
        "Companion",
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
.field public static final Companion:Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "a"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/lang/String; = "Text Lexicon"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public b:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest;->Companion:Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;-><init>(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/request/HWRBaseRequest;->getBundle()Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getActiveRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Text Lexicon"

    invoke-interface {v0, v1, p1, p0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->compileTextModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/hwr/utils/MSResourceUtils;->getAdditionalLexPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lonyx/org/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "a"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest;->execute()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public execute()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final getInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-object p0
.end method

.method public final setInput(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/request/HWRTextCompileRequest;->b:Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    return-void
.end method
