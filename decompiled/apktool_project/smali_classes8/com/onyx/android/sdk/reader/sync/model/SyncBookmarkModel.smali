.class public final Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;
.super Lcom/onyx/android/sdk/reader/sync/model/SyncReaderUserDataModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000eR\u001a\u0010\u001b\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000c\"\u0004\u0008\u001d\u0010\u000eR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000eR\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R\u001a\u0010\'\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u000c\"\u0004\u0008)\u0010\u000eR\u001c\u0010*\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008R\u001c\u0010-\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010\u0008\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;",
        "Lcom/onyx/android/sdk/reader/sync/model/SyncReaderUserDataModel;",
        "()V",
        "application",
        "",
        "getApplication",
        "()Ljava/lang/String;",
        "setApplication",
        "(Ljava/lang/String;)V",
        "modeType",
        "",
        "getModeType",
        "()I",
        "setModeType",
        "(I)V",
        "oldPosition",
        "getOldPosition",
        "setOldPosition",
        "pageNumber",
        "getPageNumber",
        "setPageNumber",
        "position",
        "getPosition",
        "setPosition",
        "positionInt",
        "getPositionInt",
        "setPositionInt",
        "positionIntV2",
        "getPositionIntV2",
        "setPositionIntV2",
        "positionType",
        "getPositionType",
        "setPositionType",
        "positionV2",
        "getPositionV2",
        "setPositionV2",
        "quote",
        "getQuote",
        "setQuote",
        "status",
        "getStatus",
        "setStatus",
        "title",
        "getTitle",
        "setTitle",
        "xpath",
        "getXpath",
        "setXpath",
        "sdk-reader_overseasRelease"
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
.field private application:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private modeType:I

.field private oldPosition:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageNumber:I

.field private position:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private positionInt:I

.field private positionIntV2:I

.field private positionType:I

.field private positionV2:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private quote:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:I

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private xpath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/sync/model/SyncReaderUserDataModel;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->modeType:I

    sget-object v0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->Companion:Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$Companion;->getINVALID_POSITION_INT()I

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->positionInt:I

    invoke-virtual {v0}, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$Companion;->getINVALID_POSITION_INT()I

    move-result v0

    iput v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->positionIntV2:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->pageNumber:I

    return-void
.end method


# virtual methods
.method public final getApplication()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->application:Ljava/lang/String;

    return-object p0
.end method

.method public final getModeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->modeType:I

    return p0
.end method

.method public final getOldPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->oldPosition:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageNumber()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->pageNumber:I

    return p0
.end method

.method public final getPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->position:Ljava/lang/String;

    return-object p0
.end method

.method public final getPositionInt()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->positionInt:I

    return p0
.end method

.method public final getPositionIntV2()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->positionIntV2:I

    return p0
.end method

.method public final getPositionType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->positionType:I

    return p0
.end method

.method public final getPositionV2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->positionV2:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuote()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->quote:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->status:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getXpath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->xpath:Ljava/lang/String;

    return-object p0
.end method

.method public final setApplication(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->application:Ljava/lang/String;

    return-void
.end method

.method public final setModeType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->modeType:I

    return-void
.end method

.method public final setOldPosition(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->oldPosition:Ljava/lang/String;

    return-void
.end method

.method public final setPageNumber(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->pageNumber:I

    return-void
.end method

.method public final setPosition(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->position:Ljava/lang/String;

    return-void
.end method

.method public final setPositionInt(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->positionInt:I

    return-void
.end method

.method public final setPositionIntV2(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->positionIntV2:I

    return-void
.end method

.method public final setPositionType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->positionType:I

    return-void
.end method

.method public final setPositionV2(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->positionV2:Ljava/lang/String;

    return-void
.end method

.method public final setQuote(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->quote:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->status:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->title:Ljava/lang/String;

    return-void
.end method

.method public final setXpath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncBookmarkModel;->xpath:Ljava/lang/String;

    return-void
.end method
