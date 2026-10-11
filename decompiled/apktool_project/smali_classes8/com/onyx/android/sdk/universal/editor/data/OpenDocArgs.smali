.class public final Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 d2\u00020\u0001:\u0001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010`\u001a\u00020\u0010J\u0006\u0010a\u001a\u00020bJ\u0006\u0010c\u001a\u00020\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012\"\u0004\u0008\u001c\u0010\u0014R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u001a\u0010)\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0018\"\u0004\u0008+\u0010\u001aR\u001c\u0010,\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u0018\"\u0004\u0008.\u0010\u001aR\u001a\u0010/\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010\u0018\"\u0004\u00081\u0010\u001aR\u001a\u00102\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0018\"\u0004\u00084\u0010\u001aR \u00105\u001a\u0008\u0012\u0004\u0012\u00020706X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\"\u0010<\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010=X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u00109\"\u0004\u0008@\u0010;R\u001c\u0010A\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\u0018\"\u0004\u0008C\u0010\u001aR\u001a\u0010D\u001a\u00020EX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u001a\u0010J\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010\u0018\"\u0004\u0008L\u0010\u001aR\u001c\u0010M\u001a\u0004\u0018\u00010NX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR\u001a\u0010S\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010\u0012\"\u0004\u0008U\u0010\u0014R\u001a\u0010V\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010\u0018\"\u0004\u0008X\u0010\u001aR$\u0010[\u001a\u00020Z2\u0006\u0010Y\u001a\u00020Z@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_\u00a8\u0006e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;",
        "",
        "()V",
        "activeScene",
        "",
        "getActiveScene",
        "()I",
        "setActiveScene",
        "(I)V",
        "appType",
        "Lcom/onyx/android/sdk/universal/editor/config/AppType;",
        "getAppType",
        "()Lcom/onyx/android/sdk/universal/editor/config/AppType;",
        "setAppType",
        "(Lcom/onyx/android/sdk/universal/editor/config/AppType;)V",
        "doAnimation",
        "",
        "getDoAnimation",
        "()Z",
        "setDoAnimation",
        "(Z)V",
        "documentId",
        "",
        "getDocumentId",
        "()Ljava/lang/String;",
        "setDocumentId",
        "(Ljava/lang/String;)V",
        "isPreLoadData",
        "setPreLoadData",
        "noteCreateInfo",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "getNoteCreateInfo",
        "()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;",
        "setNoteCreateInfo",
        "(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V",
        "pageDataFetchType",
        "Lcom/onyx/android/sdk/replicator/bean/DataFetchType;",
        "getPageDataFetchType",
        "()Lcom/onyx/android/sdk/replicator/bean/DataFetchType;",
        "setPageDataFetchType",
        "(Lcom/onyx/android/sdk/replicator/bean/DataFetchType;)V",
        "pageId",
        "getPageId",
        "setPageId",
        "parentUniqueId",
        "getParentUniqueId",
        "setParentUniqueId",
        "password",
        "getPassword",
        "setPassword",
        "path",
        "getPath",
        "setPath",
        "readerPathInfoList",
        "",
        "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
        "getReaderPathInfoList",
        "()Ljava/util/List;",
        "setReaderPathInfoList",
        "(Ljava/util/List;)V",
        "searchRectList",
        "",
        "Landroid/graphics/RectF;",
        "getSearchRectList",
        "setSearchRectList",
        "searchText",
        "getSearchText",
        "setSearchText",
        "searchType",
        "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
        "getSearchType",
        "()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
        "setSearchType",
        "(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V",
        "title",
        "getTitle",
        "setTitle",
        "toc",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "getToc",
        "()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "setToc",
        "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V",
        "useExternalViewSize",
        "getUseExternalViewSize",
        "setUseExternalViewSize",
        "userId",
        "getUserId",
        "setUserId",
        "value",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "viewSize",
        "getViewSize",
        "()Lcom/onyx/android/sdk/base/data/Size;",
        "setViewSize",
        "(Lcom/onyx/android/sdk/base/data/Size;)V",
        "isValidArgs",
        "toNoteDocBean",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;",
        "toPerformanceStr",
        "Companion",
        "sdk-universal_overseasRelease"
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
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private activeScene:I

.field private appType:Lcom/onyx/android/sdk/universal/editor/config/AppType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private doAnimation:Z

.field private documentId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isPreLoadData:Z

.field private noteCreateInfo:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pageDataFetchType:Lcom/onyx/android/sdk/replicator/bean/DataFetchType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parentUniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private readerPathInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private searchRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchType:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private toc:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private useExternalViewSize:Z

.field private userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewSize:Lcom/onyx/android/sdk/base/data/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppType;->NOTE:Lcom/onyx/android/sdk/universal/editor/config/AppType;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->appType:Lcom/onyx/android/sdk/universal/editor/config/AppType;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->documentId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->pageId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->password:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/AppConfig;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/config/AppConfig;->getDEFAULT_SIZE()Lcom/onyx/android/sdk/base/data/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->viewSize:Lcom/onyx/android/sdk/base/data/Size;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->doAnimation:Z

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->ALL:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->searchType:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->readerPathInfoList:Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/replicator/bean/DataFetchType;->ENABLED:Lcom/onyx/android/sdk/replicator/bean/DataFetchType;

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->pageDataFetchType:Lcom/onyx/android/sdk/replicator/bean/DataFetchType;

    return-void
.end method


# virtual methods
.method public final getActiveScene()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->activeScene:I

    return p0
.end method

.method public final getAppType()Lcom/onyx/android/sdk/universal/editor/config/AppType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->appType:Lcom/onyx/android/sdk/universal/editor/config/AppType;

    return-object p0
.end method

.method public final getDoAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->doAnimation:Z

    return p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getNoteCreateInfo()Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->noteCreateInfo:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    return-object p0
.end method

.method public final getPageDataFetchType()Lcom/onyx/android/sdk/replicator/bean/DataFetchType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->pageDataFetchType:Lcom/onyx/android/sdk/replicator/bean/DataFetchType;

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method public final getParentUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->parentUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getReaderPathInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->readerPathInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getSearchRectList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->searchRectList:Ljava/util/List;

    return-object p0
.end method

.method public final getSearchText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->searchText:Ljava/lang/String;

    return-object p0
.end method

.method public final getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->searchType:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getToc()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->toc:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    return-object p0
.end method

.method public final getUseExternalViewSize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->useExternalViewSize:Z

    return p0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public final getViewSize()Lcom/onyx/android/sdk/base/data/Size;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->viewSize:Lcom/onyx/android/sdk/base/data/Size;

    return-object p0
.end method

.method public final isPreLoadData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->isPreLoadData:Z

    return p0
.end method

.method public final isValidArgs()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->documentId:Ljava/lang/String;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setActiveScene(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->activeScene:I

    return-void
.end method

.method public final setAppType(Lcom/onyx/android/sdk/universal/editor/config/AppType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/config/AppType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->appType:Lcom/onyx/android/sdk/universal/editor/config/AppType;

    return-void
.end method

.method public final setDoAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->doAnimation:Z

    return-void
.end method

.method public final setDocumentId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->documentId:Ljava/lang/String;

    return-void
.end method

.method public final setNoteCreateInfo(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->noteCreateInfo:Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    return-void
.end method

.method public final setPageDataFetchType(Lcom/onyx/android/sdk/replicator/bean/DataFetchType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/bean/DataFetchType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->pageDataFetchType:Lcom/onyx/android/sdk/replicator/bean/DataFetchType;

    return-void
.end method

.method public final setPageId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->pageId:Ljava/lang/String;

    return-void
.end method

.method public final setParentUniqueId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->parentUniqueId:Ljava/lang/String;

    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->password:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->path:Ljava/lang/String;

    return-void
.end method

.method public final setPreLoadData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->isPreLoadData:Z

    return-void
.end method

.method public final setReaderPathInfoList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->readerPathInfoList:Ljava/util/List;

    return-void
.end method

.method public final setSearchRectList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->searchRectList:Ljava/util/List;

    return-void
.end method

.method public final setSearchText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->searchText:Ljava/lang/String;

    return-void
.end method

.method public final setSearchType(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->searchType:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

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

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->title:Ljava/lang/String;

    return-void
.end method

.method public final setToc(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->toc:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    return-void
.end method

.method public final setUseExternalViewSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->useExternalViewSize:Z

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->userId:Ljava/lang/String;

    return-void
.end method

.method public final setViewSize(Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/Size;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "expected viewSize not empty, but actual is empty"

    invoke-virtual {p1, p0, v1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->viewSize:Lcom/onyx/android/sdk/base/data/Size;

    return-void
.end method

.method public final toNoteDocBean()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->documentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;->setDocumentId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;->setUserId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->parentUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;->setParentUniqueId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->viewSize:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;->setViewSize(Lcom/onyx/android/sdk/base/data/Size;)V

    return-object v0
.end method

.method public final toPerformanceStr()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AppType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->appType:Lcom/onyx/android/sdk/universal/editor/config/AppType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",activeScene:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->activeScene:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",documentId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->documentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->viewSize:Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
