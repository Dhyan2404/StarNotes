.class public final Lcom/onyx/android/sdk/filepicker/FilePickerConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R \u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/filepicker/FilePickerConfig;",
        "Ljava/io/Serializable;",
        "()V",
        "importFontMaxCount",
        "",
        "getImportFontMaxCount",
        "()I",
        "setImportFontMaxCount",
        "(I)V",
        "importLocalBackupMaxCount",
        "getImportLocalBackupMaxCount",
        "setImportLocalBackupMaxCount",
        "supportDocumentType",
        "",
        "",
        "getSupportDocumentType",
        "()Ljava/util/List;",
        "setSupportDocumentType",
        "(Ljava/util/List;)V",
        "sdk-imagepicker_overseasRelease"
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
.field private importFontMaxCount:I

.field private importLocalBackupMaxCount:I

.field private supportDocumentType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerConfig;->supportDocumentType:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerConfig;->importFontMaxCount:I

    iput v0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerConfig;->importLocalBackupMaxCount:I

    return-void
.end method


# virtual methods
.method public final getImportFontMaxCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerConfig;->importFontMaxCount:I

    return p0
.end method

.method public final getImportLocalBackupMaxCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerConfig;->importLocalBackupMaxCount:I

    return p0
.end method

.method public final getSupportDocumentType()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerConfig;->supportDocumentType:Ljava/util/List;

    return-object p0
.end method

.method public final setImportFontMaxCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/filepicker/FilePickerConfig;->importFontMaxCount:I

    return-void
.end method

.method public final setImportLocalBackupMaxCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/filepicker/FilePickerConfig;->importLocalBackupMaxCount:I

    return-void
.end method

.method public final setSupportDocumentType(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/filepicker/FilePickerConfig;->supportDocumentType:Ljava/util/List;

    return-void
.end method
