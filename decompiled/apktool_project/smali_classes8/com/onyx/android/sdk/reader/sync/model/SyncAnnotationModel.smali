.class public final Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;
.super Lcom/onyx/android/sdk/reader/sync/model/SyncReaderUserDataModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$Companion;,
        Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$PositionType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008/\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0018\u0000 R2\u00020\u0001:\u0002RSB\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000f\"\u0004\u0008\u0017\u0010\u0011R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001a\u0010\u001e\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000f\"\u0004\u0008 \u0010\u0011R\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R\u001c\u0010\'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R\u001a\u0010*\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u000f\"\u0004\u0008,\u0010\u0011R\u001c\u0010-\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010\u0008R\u001c\u00100\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0006\"\u0004\u00082\u0010\u0008R\u001a\u00103\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u000f\"\u0004\u00085\u0010\u0011R\u001c\u00106\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u0006\"\u0004\u00088\u0010\u0008R\u001c\u00109\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u0006\"\u0004\u0008;\u0010\u0008R \u0010<\u001a\u0008\u0012\u0004\u0012\u00020>0=X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u001a\u0010C\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\u000f\"\u0004\u0008E\u0010\u0011R\u001c\u0010F\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010\u0006\"\u0004\u0008H\u0010\u0008R\u001a\u0010I\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010\u000f\"\u0004\u0008K\u0010\u0011R\u001c\u0010L\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010\u0006\"\u0004\u0008N\u0010\u0008R\u001a\u0010O\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010\u000f\"\u0004\u0008Q\u0010\u0011\u00a8\u0006T"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;",
        "Lcom/onyx/android/sdk/reader/sync/model/SyncReaderUserDataModel;",
        "()V",
        "application",
        "",
        "getApplication",
        "()Ljava/lang/String;",
        "setApplication",
        "(Ljava/lang/String;)V",
        "chapter",
        "getChapter",
        "setChapter",
        "color",
        "",
        "getColor",
        "()I",
        "setColor",
        "(I)V",
        "endPosition",
        "getEndPosition",
        "setEndPosition",
        "endPositionInt",
        "getEndPositionInt",
        "setEndPositionInt",
        "endXPath",
        "getEndXPath",
        "setEndXPath",
        "linkNote",
        "getLinkNote",
        "setLinkNote",
        "modeType",
        "getModeType",
        "setModeType",
        "note",
        "getNote",
        "setNote",
        "oldEndPosition",
        "getOldEndPosition",
        "setOldEndPosition",
        "oldStartPosition",
        "getOldStartPosition",
        "setOldStartPosition",
        "pageNumber",
        "getPageNumber",
        "setPageNumber",
        "pageXPath",
        "getPageXPath",
        "setPageXPath",
        "position",
        "getPosition",
        "setPosition",
        "positionType",
        "getPositionType",
        "setPositionType",
        "positionV2",
        "getPositionV2",
        "setPositionV2",
        "quote",
        "getQuote",
        "setQuote",
        "rectangles",
        "",
        "Landroid/graphics/RectF;",
        "getRectangles",
        "()Ljava/util/List;",
        "setRectangles",
        "(Ljava/util/List;)V",
        "shape",
        "getShape",
        "setShape",
        "startPosition",
        "getStartPosition",
        "setStartPosition",
        "startPositionInt",
        "getStartPositionInt",
        "setStartPositionInt",
        "startXPath",
        "getStartXPath",
        "setStartXPath",
        "status",
        "getStatus",
        "setStatus",
        "Companion",
        "PositionType",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INVALID_POSITION:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final INVALID_POSITION_INT:I


# instance fields
.field private application:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private chapter:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private color:I

.field private endPosition:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private endPositionInt:I

.field private endXPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private linkNote:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private modeType:I

.field private note:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private oldEndPosition:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private oldStartPosition:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageNumber:I

.field private pageXPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private position:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private positionType:I

.field private positionV2:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private quote:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shape:I

.field private startPosition:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startPositionInt:I

.field private startXPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->Companion:Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel$Companion;

    const/4 v0, -0x1

    sput v0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->INVALID_POSITION_INT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/sync/model/SyncReaderUserDataModel;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->modeType:I

    sget-object v0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->INVALID_POSITION:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->startPosition:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->endPosition:Ljava/lang/String;

    sget v1, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->INVALID_POSITION_INT:I

    iput v1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->startPositionInt:I

    iput v1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->endPositionInt:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->pageNumber:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->rectangles:Ljava/util/List;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->oldStartPosition:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->oldEndPosition:Ljava/lang/String;

    iput v1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->color:I

    iput v1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->shape:I

    return-void
.end method

.method public static final synthetic access$getINVALID_POSITION$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->INVALID_POSITION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getINVALID_POSITION_INT$cp()I
    .locals 1

    sget v0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->INVALID_POSITION_INT:I

    return v0
.end method


# virtual methods
.method public final getApplication()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->application:Ljava/lang/String;

    return-object p0
.end method

.method public final getChapter()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->chapter:Ljava/lang/String;

    return-object p0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->color:I

    return p0
.end method

.method public final getEndPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->endPosition:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndPositionInt()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->endPositionInt:I

    return p0
.end method

.method public final getEndXPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->endXPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getLinkNote()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->linkNote:Ljava/lang/String;

    return-object p0
.end method

.method public final getModeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->modeType:I

    return p0
.end method

.method public final getNote()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->note:Ljava/lang/String;

    return-object p0
.end method

.method public final getOldEndPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->oldEndPosition:Ljava/lang/String;

    return-object p0
.end method

.method public final getOldStartPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->oldStartPosition:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageNumber()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->pageNumber:I

    return p0
.end method

.method public final getPageXPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->pageXPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->position:Ljava/lang/String;

    return-object p0
.end method

.method public final getPositionType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->positionType:I

    return p0
.end method

.method public final getPositionV2()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->positionV2:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuote()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->quote:Ljava/lang/String;

    return-object p0
.end method

.method public final getRectangles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->rectangles:Ljava/util/List;

    return-object p0
.end method

.method public final getShape()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->shape:I

    return p0
.end method

.method public final getStartPosition()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->startPosition:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartPositionInt()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->startPositionInt:I

    return p0
.end method

.method public final getStartXPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->startXPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->status:I

    return p0
.end method

.method public final setApplication(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->application:Ljava/lang/String;

    return-void
.end method

.method public final setChapter(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->chapter:Ljava/lang/String;

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->color:I

    return-void
.end method

.method public final setEndPosition(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->endPosition:Ljava/lang/String;

    return-void
.end method

.method public final setEndPositionInt(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->endPositionInt:I

    return-void
.end method

.method public final setEndXPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->endXPath:Ljava/lang/String;

    return-void
.end method

.method public final setLinkNote(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->linkNote:Ljava/lang/String;

    return-void
.end method

.method public final setModeType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->modeType:I

    return-void
.end method

.method public final setNote(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->note:Ljava/lang/String;

    return-void
.end method

.method public final setOldEndPosition(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->oldEndPosition:Ljava/lang/String;

    return-void
.end method

.method public final setOldStartPosition(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->oldStartPosition:Ljava/lang/String;

    return-void
.end method

.method public final setPageNumber(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->pageNumber:I

    return-void
.end method

.method public final setPageXPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->pageXPath:Ljava/lang/String;

    return-void
.end method

.method public final setPosition(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->position:Ljava/lang/String;

    return-void
.end method

.method public final setPositionType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->positionType:I

    return-void
.end method

.method public final setPositionV2(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->positionV2:Ljava/lang/String;

    return-void
.end method

.method public final setQuote(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->quote:Ljava/lang/String;

    return-void
.end method

.method public final setRectangles(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->rectangles:Ljava/util/List;

    return-void
.end method

.method public final setShape(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->shape:I

    return-void
.end method

.method public final setStartPosition(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->startPosition:Ljava/lang/String;

    return-void
.end method

.method public final setStartPositionInt(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->startPositionInt:I

    return-void
.end method

.method public final setStartXPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->startXPath:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;->status:I

    return-void
.end method
