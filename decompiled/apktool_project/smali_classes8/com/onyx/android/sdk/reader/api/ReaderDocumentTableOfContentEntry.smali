.class public final Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderDocumentTableOfContentEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderDocumentTableOfContentEntry.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1855#2,2:118\n*S KotlinDebug\n*F\n+ 1 ReaderDocumentTableOfContentEntry.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry\n*L\n37#1:118,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008C\u0008\u0086\u0008\u0018\u0000 ]2\u00020\u0001:\u0001]Bq\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\u0018\u0012\u0008\u0008\u0002\u0010$\u001a\u00020\u0007\u0012\u000e\u0008\u0002\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u001b\u00a2\u0006\u0004\u0008[\u0010\\J\u0018\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\u000c\u001a\u00020\u0002J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0002J\u0006\u0010\u000f\u001a\u00020\u0002J\t\u0010\u0010\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0002H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0012H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0018H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J\u000f\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u001bH\u00c6\u0003Js\u0010&\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00042\u0008\u0008\u0002\u0010 \u001a\u00020\u00072\u0008\u0008\u0002\u0010!\u001a\u00020\u00072\u0008\u0008\u0002\u0010\"\u001a\u00020\u00072\u0008\u0008\u0002\u0010#\u001a\u00020\u00182\u0008\u0008\u0002\u0010$\u001a\u00020\u00072\u000e\u0008\u0002\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u001bH\u00c6\u0001J\t\u0010\'\u001a\u00020\u0004H\u00d6\u0001J\t\u0010(\u001a\u00020\u0002H\u00d6\u0001J\u0013\u0010*\u001a\u00020\u00072\u0008\u0010)\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\"\u0010\u001d\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\"\u0010\u001e\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\"\u0010\u001f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010,\u001a\u0004\u0008>\u0010.\"\u0004\u0008?\u00100R\"\u0010 \u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\"\u0010!\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010A\u001a\u0004\u0008G\u0010C\"\u0004\u0008H\u0010ER\"\u0010\"\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010A\u001a\u0004\u0008J\u0010C\"\u0004\u0008K\u0010ER\"\u0010#\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\"\u0010$\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008R\u0010A\u001a\u0004\u0008S\u0010C\"\u0004\u0008T\u0010ER(\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u001b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010Z\u00a8\u0006^"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
        "",
        "",
        "limitLength",
        "",
        "kotlin.jvm.PlatformType",
        "getShowTitle",
        "",
        "desc",
        "copyAndSort",
        "isPageIndexValid",
        "isValidPosition",
        "getPositionInt",
        "pageIndex",
        "setPageNumber",
        "getSortId",
        "component1",
        "component2",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "",
        "component8",
        "component9",
        "",
        "component10",
        "title",
        "position",
        "id",
        "canRead",
        "chapterReady",
        "expanded",
        "tocEntryPtr",
        "sortByPageIndex",
        "children",
        "copy",
        "toString",
        "hashCode",
        "other",
        "equals",
        "a",
        "Ljava/lang/String;",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "b",
        "I",
        "getPageIndex",
        "()I",
        "setPageIndex",
        "(I)V",
        "c",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "getPosition",
        "()Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "setPosition",
        "(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V",
        "d",
        "getId",
        "setId",
        "e",
        "Z",
        "getCanRead",
        "()Z",
        "setCanRead",
        "(Z)V",
        "f",
        "getChapterReady",
        "setChapterReady",
        "g",
        "getExpanded",
        "setExpanded",
        "h",
        "J",
        "getTocEntryPtr",
        "()J",
        "setTocEntryPtr",
        "(J)V",
        "i",
        "getSortByPageIndex",
        "setSortByPageIndex",
        "j",
        "Ljava/util/List;",
        "getChildren",
        "()Ljava/util/List;",
        "setChildren",
        "(Ljava/util/List;)V",
        "<init>",
        "(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;)V",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReaderDocumentTableOfContentEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderDocumentTableOfContentEntry.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1855#2,2:118\n*S KotlinDebug\n*F\n+ 1 ReaderDocumentTableOfContentEntry.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry\n*L\n37#1:118,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_TITLE_LIMIT_LENGTH:I = 0x96


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I

.field public c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Z

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->Companion:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3ff

    const/4 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            "Ljava/lang/String;",
            "ZZZJZ",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "children"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->b:I

    .line 5
    iput-object p3, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    .line 6
    iput-object p4, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->d:Ljava/lang/String;

    .line 7
    iput-boolean p5, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->e:Z

    .line 8
    iput-boolean p6, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->f:Z

    .line 9
    iput-boolean p7, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->g:Z

    .line 10
    iput-wide p8, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->h:J

    .line 11
    iput-boolean p10, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->i:Z

    .line 12
    iput-object p11, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->j:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p13, p12, 0x1

    const-string v0, ""

    if-eqz p13, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    const/4 v1, 0x0

    if-eqz p13, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    .line 13
    sget-object p3, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->Companion:Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl$Companion;->getDummy()Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p3

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    const/4 v0, 0x1

    if-eqz p13, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    move p7, v1

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    const-wide/16 p8, 0x0

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    move p10, v1

    :cond_8
    and-int/lit16 p12, p12, 0x200

    if-eqz p12, :cond_9

    .line 14
    new-instance p11, Ljava/util/ArrayList;

    invoke-direct {p11}, Ljava/util/ArrayList;-><init>()V

    .line 15
    :cond_9
    invoke-direct/range {p0 .. p11}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->b:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->e:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->f:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->g:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-wide v9, v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->h:J

    goto :goto_7

    :cond_7
    move-wide/from16 v9, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-boolean v11, v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->i:Z

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->j:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p11

    :goto_9
    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-wide/from16 p8, v9

    move/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->copy(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getShowTitle$default(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x96

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getShowTitle(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->j:Ljava/util/List;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->b:I

    return p0
.end method

.method public final component3()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->e:Z

    return p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->f:Z

    return p0
.end method

.method public final component7()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->g:Z

    return p0
.end method

.method public final component8()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->h:J

    return-wide v0
.end method

.method public final component9()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->i:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
            "Ljava/lang/String;",
            "ZZZJZ",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "title"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "children"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-object v1, v0

    move v3, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;)V

    return-object v0
.end method

.method public final copyAndSort(Z)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/16 v12, 0x1ff

    const/4 v13, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v13}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->copy$default(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;ILjava/lang/Object;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->j:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->j:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    if-eqz p1, :cond_3

    iget-object v4, v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->j:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->copyAndSort(Z)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object v1

    invoke-interface {v4, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v4, v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->j:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->copyAndSort(Z)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->b:I

    iget v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->e:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->f:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->g:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->h:J

    iget-wide v5, p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->i:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->j:Ljava/util/List;

    iget-object p1, p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->j:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getCanRead()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->e:Z

    return p0
.end method

.method public final getChapterReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->f:Z

    return p0
.end method

.method public final getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->j:Ljava/util/List;

    return-object p0
.end method

.method public final getExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->g:Z

    return p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->b:I

    return p0
.end method

.method public final getPosition()Lcom/onyx/android/sdk/reader/api/ReaderPosition;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-object p0
.end method

.method public final getPositionInt()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p0

    return p0
.end method

.method public final getShowTitle(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSortByPageIndex()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->i:Z

    return p0
.end method

.method public final getSortId()I
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->i:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->b:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {p0}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->asInteger()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getTocEntryPtr()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->h:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->f:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->g:Z

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->i:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->j:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isPageIndexValid()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/PageInfoUtils;

    iget p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->b:I

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/PageInfoUtils;->isValidPage(I)Z

    move-result p0

    return p0
.end method

.method public final isValidPosition()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/extension/ReaderPositionImplKt;->isValid(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result p0

    return p0
.end method

.method public final setCanRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->e:Z

    return-void
.end method

.method public final setChapterReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->f:Z

    return-void
.end method

.method public final setChildren(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->j:Ljava/util/List;

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->g:Z

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->d:Ljava/lang/String;

    return-void
.end method

.method public final setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->b:I

    return-void
.end method

.method public final setPageNumber(I)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->b:I

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-static {v0}, Lcom/onyx/android/sdk/reader/extension/ReaderPositionImplKt;->isValid(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-interface {v0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->fromPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->INSTANCE:Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/reader/plugins/internal/PluginPositionUtils;->getPositionByPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    :goto_0
    return-object p0
.end method

.method public final setPosition(Lcom/onyx/android/sdk/reader/api/ReaderPosition;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    return-void
.end method

.method public final setSortByPageIndex(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->i:Z

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->a:Ljava/lang/String;

    return-void
.end method

.method public final setTocEntryPtr(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->h:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReaderDocumentTableOfContentEntry(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->c:Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", canRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", chapterReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", expanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tocEntryPtr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sortByPageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->j:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
