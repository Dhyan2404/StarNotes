.class public final Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/core/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/data/utils/ZipUtils;->unzipObservable(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/ObservableOnSubscribe<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0016\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1",
        "Lio/reactivex/rxjava3/core/ObservableOnSubscribe;",
        "",
        "subscribe",
        "",
        "emitter",
        "Lio/reactivex/rxjava3/core/ObservableEmitter;",
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


# instance fields
.field final synthetic $POLLING_INTERVAL:J

.field final synthetic $dstPath:Ljava/lang/String;

.field final synthetic $excludeFileHeaderNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $password:Ljava/lang/String;

.field final synthetic $srcFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1;->$srcFile:Ljava/io/File;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1;->$password:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1;->$dstPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1;->$excludeFileHeaderNames:Ljava/util/Collection;

    iput-wide p5, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1;->$POLLING_INTERVAL:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/rxjava3/core/ObservableEmitter;)V
    .locals 11
    .param p1    # Lio/reactivex/rxjava3/core/ObservableEmitter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/ObservableEmitter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v1, "emitter"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1;->$srcFile:Ljava/io/File;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    move-wide v6, v1

    :try_start_1
    new-instance v1, Lnet/lingala/zip4j/ZipFile;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1;->$srcFile:Ljava/io/File;

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;)V

    sget-object v2, Lnet/lingala/zip4j/util/InternalZipConstants;->ZIP4J_DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/ZipFile;->setCharset(Ljava/nio/charset/Charset;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1;->$password:Ljava/lang/String;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lnet/lingala/zip4j/ZipFile;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1;->$password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "this as java.lang.String).toCharArray()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v8

    :goto_0
    invoke-virtual {v1, v2}, Lnet/lingala/zip4j/ZipFile;->setPassword([C)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lnet/lingala/zip4j/ZipFile;->setRunInThread(Z)V

    sget-object v3, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    iget-object v4, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1;->$dstPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1;->$excludeFileHeaderNames:Ljava/util/Collection;

    invoke-static {v3, v1, v4, v2, v5}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->access$extractAll(Lcom/onyx/android/sdk/data/utils/ZipUtils;Lnet/lingala/zip4j/ZipFile;Ljava/lang/String;[CLjava/util/Collection;)V

    invoke-virtual {v1}, Lnet/lingala/zip4j/ZipFile;->getProgressMonitor()Lnet/lingala/zip4j/progress/ProgressMonitor;

    move-result-object v1

    new-instance v10, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1$subscribe$1;

    iget-wide v3, p0, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1;->$POLLING_INTERVAL:J

    const/4 v5, 0x0

    move-object v0, v10

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/data/utils/ZipUtils$unzipObservable$1$subscribe$1;-><init>(Lnet/lingala/zip4j/progress/ProgressMonitor;Lio/reactivex/rxjava3/core/ObservableEmitter;JLkotlin/coroutines/Continuation;)V

    invoke-static {v8, v10, v9, v8}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-wide v1, v6

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    sget-object v3, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unzipObservable failed,srcFile length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",e:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->access$logMsg(Lcom/onyx/android/sdk/data/utils/ZipUtils;Ljava/lang/String;)V

    :goto_2
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/Emitter;->onNext(Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/reactivex/rxjava3/core/Emitter;->onComplete()V

    return-void
.end method
