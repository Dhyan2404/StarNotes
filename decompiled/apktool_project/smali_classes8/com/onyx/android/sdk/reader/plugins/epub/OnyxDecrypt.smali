.class public final Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/engine/sdk/DrmSDK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u000e\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u001d\u0008\u0016\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\t\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0002H\u0016R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;",
        "Lcom/onyx/engine/sdk/DrmSDK;",
        "",
        "filePath",
        "",
        "setup",
        "",
        "content",
        "parameters",
        "decrypt",
        "path",
        "isEncrypted",
        "a",
        "Ljava/lang/String;",
        "drmDeviceId",
        "b",
        "drmCertificate",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Companion",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:I = 0x2800

.field public static final e:Ljava/lang/String; = "boox"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Ljava/lang/String; = "oad"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;->Companion:Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt$Companion;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "content.opf"

    const-string v2, "toc.ncx"

    const-string v3, "container.xml"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;->c:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDrmCertificate$p(Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getDrmDeviceId$p(Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public decrypt([BLjava/lang/String;)[B
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/base/utils/ArraysKt;->isNullOrEmpty([B)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    new-array p0, p2, [B

    return-object p0

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p0, p1

    new-array p0, p0, [B

    sget-object v0, Lcom/onyx/android/sdk/reader/utils/OnyxDrmUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/utils/OnyxDrmUtils;

    array-length v1, p1

    invoke-virtual {v0, p1, v1, p0}, Lcom/onyx/android/sdk/reader/utils/OnyxDrmUtils;->decrypt([BI[B)I

    move-result p1

    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-direct {v0, p2, p1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p0

    return-object p0
.end method

.method public isEncrypted(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "path"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt;->c:Ljava/util/HashSet;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/utils/ZipUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ZipUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/ZipUtils;->isEncryptedFile(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final setup(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt$setup$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/reader/plugins/epub/OnyxDecrypt$setup$1;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->runCatching$default(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
