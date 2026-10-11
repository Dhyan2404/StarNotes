.class public abstract Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0004\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H&R\"\u0010\u0011\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;",
        "",
        "safelyExecuteImpl",
        "closeResources",
        "",
        "msg",
        "getMsg",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "bundle",
        "execute",
        "e",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "getReaderBundle",
        "()Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "setReaderBundle",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;)V",
        "readerBundle",
        "<init>",
        "sdk-reader_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/android/sdk/reader/ReaderBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "readerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->e:Lcom/onyx/android/sdk/reader/ReaderBundle;

    return-void
.end method


# virtual methods
.method public closeResources()V
    .locals 0

    return-void
.end method

.method public abstract execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public getMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->INSTANCE:Lcom/onyx/android/sdk/reader/config/ReaderConfig;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/reader/config/ReaderConfig;->getProcessTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getReaderBundle()Lcom/onyx/android/sdk/reader/ReaderBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->e:Lcom/onyx/android/sdk/reader/ReaderBundle;

    return-object p0
.end method

.method public final safelyExecuteImpl()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->e:Lcom/onyx/android/sdk/reader/ReaderBundle;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    return-void
.end method

.method public final setReaderBundle(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;->e:Lcom/onyx/android/sdk/reader/ReaderBundle;

    return-void
.end method
