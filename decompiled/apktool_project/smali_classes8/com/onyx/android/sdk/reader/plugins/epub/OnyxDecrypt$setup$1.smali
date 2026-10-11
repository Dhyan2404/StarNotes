.class final Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt$setup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;->setup(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;",
        "invoke",
        "(Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;)Ljava/lang/Boolean;"
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
.field final synthetic $filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt$setup$1;->$filePath:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;)Ljava/lang/Boolean;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$runCatching"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt$setup$1;->$filePath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object p0, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    const-string v1, "boox"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->readEntryString(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oad"

    .line 3
    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->readEntryString(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object v2, Lcom/onyx/android/sdk/reader/utils/OnyxDrmUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/OnyxDrmUtils;

    invoke-static {p1}, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;->access$getDrmDeviceId$p(Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;->access$getDrmCertificate$p(Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v1, p0}, Lcom/onyx/android/sdk/reader/utils/OnyxDrmUtils;->setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 5
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt$setup$1;->invoke(Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
