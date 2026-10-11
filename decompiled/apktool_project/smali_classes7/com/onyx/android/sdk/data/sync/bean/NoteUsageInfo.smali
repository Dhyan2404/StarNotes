.class public final Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0014\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;",
        "",
        "()V",
        "docCount",
        "",
        "getDocCount",
        "()I",
        "setDocCount",
        "(I)V",
        "docCountIncludeDustbin",
        "getDocCountIncludeDustbin",
        "setDocCountIncludeDustbin",
        "docHistoryCount",
        "getDocHistoryCount",
        "setDocHistoryCount",
        "folderCount",
        "getFolderCount",
        "setFolderCount",
        "folderCountIncludeDustbin",
        "getFolderCountIncludeDustbin",
        "setFolderCountIncludeDustbin",
        "folderHistoryCount",
        "getFolderHistoryCount",
        "setFolderHistoryCount",
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
.field private docCount:I

.field private docCountIncludeDustbin:I

.field private docHistoryCount:I

.field private folderCount:I

.field private folderCountIncludeDustbin:I

.field private folderHistoryCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDocCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->docCount:I

    return p0
.end method

.method public final getDocCountIncludeDustbin()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->docCountIncludeDustbin:I

    return p0
.end method

.method public final getDocHistoryCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->docHistoryCount:I

    return p0
.end method

.method public final getFolderCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->folderCount:I

    return p0
.end method

.method public final getFolderCountIncludeDustbin()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->folderCountIncludeDustbin:I

    return p0
.end method

.method public final getFolderHistoryCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->folderHistoryCount:I

    return p0
.end method

.method public final setDocCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->docCount:I

    return-void
.end method

.method public final setDocCountIncludeDustbin(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->docCountIncludeDustbin:I

    return-void
.end method

.method public final setDocHistoryCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->docHistoryCount:I

    return-void
.end method

.method public final setFolderCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->folderCount:I

    return-void
.end method

.method public final setFolderCountIncludeDustbin(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->folderCountIncludeDustbin:I

    return-void
.end method

.method public final setFolderHistoryCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->folderHistoryCount:I

    return-void
.end method
