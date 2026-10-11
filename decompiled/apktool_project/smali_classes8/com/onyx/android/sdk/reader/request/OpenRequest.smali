.class public final Lcom/onyx/android/sdk/reader/request/OpenRequest;
.super Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/request/OpenRequest;",
        "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;",
        "Lcom/onyx/android/sdk/reader/ReaderBundle;",
        "bundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;",
        "openDocumentArgs",
        "f",
        "Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;",
        "getOpenDocumentArgs",
        "()Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;",
        "setOpenDocumentArgs",
        "(Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;)V",
        "readerBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/reader/ReaderBundle;)V",
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
.field public openDocumentArgs:Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "readerBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;-><init>(Lcom/onyx/android/sdk/reader/ReaderBundle;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/reader/ReaderBundle;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/reader/ReaderBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/OpenRequest;->getOpenDocumentArgs()Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;->getSize()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;->copy$default(Lcom/onyx/android/sdk/base/data/Size;IIILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/reader/ReaderBundle;->setViewSize(Lcom/onyx/android/sdk/base/data/Size;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/request/OpenRequest;->getOpenDocumentArgs()Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/request/OpenRequest;->f(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;)V
    .locals 3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/reader/ReaderBundle;->hasReader(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/reader/request/OpenRequest;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " association reader is empty, but has instance, do not open doc again!"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Lkotlin/reflect/KClass;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/reader/Reader;

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/Reader;-><init>()V

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/reader/extension/ReaderKt;->open(Lcom/onyx/android/sdk/reader/Reader;Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/onyx/android/sdk/reader/ReaderBundle;->putReaderByPath(Ljava/lang/String;Lcom/onyx/android/sdk/reader/Reader;)Lcom/onyx/android/sdk/reader/Reader;

    return-void
.end method

.method public final getOpenDocumentArgs()Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/request/OpenRequest;->openDocumentArgs:Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "openDocumentArgs"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setOpenDocumentArgs(Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/request/OpenRequest;->openDocumentArgs:Lcom/onyx/android/sdk/reader/data/OpenDocumentArgs;

    return-void
.end method
