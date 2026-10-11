.class public final Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0014\u0010\r\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\nR\u0014\u0010\u000f\u001a\u00020\u0008X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\nR\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector$Companion;",
        "",
        "()V",
        "ENCRYPTED_NODE_NAME_LIST",
        "",
        "",
        "ENCRYPTION_ENTRY",
        "ENCRYPT_TYPE_ABODE",
        "",
        "getENCRYPT_TYPE_ABODE",
        "()I",
        "ENCRYPT_TYPE_NONE",
        "getENCRYPT_TYPE_NONE",
        "ENCRYPT_TYPE_ONYX",
        "getENCRYPT_TYPE_ONYX",
        "ENCRYPT_TYPE_OTHER",
        "getENCRYPT_TYPE_OTHER",
        "IMPORTANT_FILE_EXTENSION_LIST",
        "ONYX_ADDITIONAL_FILE_ENTRY_NAME",
        "ONYX_MANIFEST_FILE_ENTRY_NAME",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getENCRYPT_TYPE_ABODE()I
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector;->access$getENCRYPT_TYPE_ABODE$cp()I

    move-result p0

    return p0
.end method

.method public final getENCRYPT_TYPE_NONE()I
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector;->access$getENCRYPT_TYPE_NONE$cp()I

    move-result p0

    return p0
.end method

.method public final getENCRYPT_TYPE_ONYX()I
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector;->access$getENCRYPT_TYPE_ONYX$cp()I

    move-result p0

    return p0
.end method

.method public final getENCRYPT_TYPE_OTHER()I
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/reader/plugins/epub/EpubDRMDetector;->access$getENCRYPT_TYPE_OTHER$cp()I

    move-result p0

    return p0
.end method
