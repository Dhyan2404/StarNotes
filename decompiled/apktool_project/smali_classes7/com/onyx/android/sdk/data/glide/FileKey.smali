.class public final Lcom/onyx/android/sdk/data/glide/FileKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/glide/FileKey;",
        "Lcom/bumptech/glide/load/Key;",
        "file",
        "Ljava/io/File;",
        "(Ljava/io/File;)V",
        "objectKey",
        "Lcom/bumptech/glide/signature/ObjectKey;",
        "getObjectKey",
        "()Lcom/bumptech/glide/signature/ObjectKey;",
        "objectKey$delegate",
        "Lkotlin/Lazy;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "updateDiskCacheKey",
        "",
        "messageDigest",
        "Ljava/security/MessageDigest;",
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
.field private final file:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final objectKey$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/glide/FileKey;->file:Ljava/io/File;

    new-instance p1, Lcom/onyx/android/sdk/data/glide/FileKey$objectKey$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/data/glide/FileKey$objectKey$2;-><init>(Lcom/onyx/android/sdk/data/glide/FileKey;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/glide/FileKey;->objectKey$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getFile$p(Lcom/onyx/android/sdk/data/glide/FileKey;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/glide/FileKey;->file:Ljava/io/File;

    return-object p0
.end method

.method private final getObjectKey()Lcom/bumptech/glide/signature/ObjectKey;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/glide/FileKey;->objectKey$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/signature/ObjectKey;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/onyx/android/sdk/data/glide/FileKey;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/onyx/android/sdk/data/glide/FileKey;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/glide/FileKey;->getObjectKey()Lcom/bumptech/glide/signature/ObjectKey;

    move-result-object p0

    invoke-direct {p1}, Lcom/onyx/android/sdk/data/glide/FileKey;->getObjectKey()Lcom/bumptech/glide/signature/ObjectKey;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/glide/FileKey;->getObjectKey()Lcom/bumptech/glide/signature/ObjectKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/signature/ObjectKey;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileKey{object="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/glide/FileKey;->getObjectKey()Lcom/bumptech/glide/signature/ObjectKey;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "`}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "messageDigest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/glide/FileKey;->getObjectKey()Lcom/bumptech/glide/signature/ObjectKey;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/signature/ObjectKey;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
