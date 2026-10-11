.class public interface abstract Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH&J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0008\u0010\u000c\u001a\u00020\u0006H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0016\u0010\u0014\u001a\u00020\u00112\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H&J\u0008\u0010\u0018\u001a\u00020\u0019H&J\u0008\u0010\u001a\u001a\u00020\u0003H&J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0007\u001a\u00020\u0003H&J\n\u0010\u001c\u001a\u0004\u0018\u00010\u0003H&J\u0008\u0010\u001d\u001a\u00020\u0013H\u0016J\u000e\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0016H&J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0012\u0010 \u001a\u0004\u0018\u00010\u00032\u0006\u0010!\u001a\u00020\u0005H&J\u0012\u0010 \u001a\u0004\u0018\u00010\u00032\u0006\u0010\"\u001a\u00020#H&J\u0012\u0010 \u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0008\u0010$\u001a\u00020#H&J\u0010\u0010%\u001a\u00020#2\u0006\u0010\u0012\u001a\u00020\u0013H&J\u000e\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0016H&J\u0010\u0010\'\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0018\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010*\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0010\u0010+\u001a\u00020\u00112\u0006\u0010)\u001a\u00020#H\u0016J\u0018\u0010,\u001a\u0008\u0012\u0004\u0012\u00020-0\u00162\u0008\u0008\u0002\u0010.\u001a\u00020\u0013H&J\n\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0016\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u00102\u001a\u000203H&J\u0010\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u000206H&J\u0012\u00107\u001a\u0004\u0018\u00010\u00032\u0006\u00108\u001a\u00020\nH&J\u0008\u00109\u001a\u00020\u0006H&J\u0008\u0010:\u001a\u00020;H&J\u000e\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00170=H&J\u0010\u0010>\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0008\u0010?\u001a\u00020\u0011H\u0016J\u0010\u0010@\u001a\u00020\u00112\u0006\u0010A\u001a\u00020-H&J\u0010\u0010B\u001a\u00020\u00062\u0006\u00108\u001a\u00020\nH&J\u0010\u0010C\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0018\u0010D\u001a\u00020\u00062\u0006\u0010)\u001a\u00020#2\u0006\u0010E\u001a\u00020FH&J\u0010\u0010G\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010H\u001a\u00020\u00062\u0006\u0010I\u001a\u00020\u0013H\u0016J\u0010\u0010J\u001a\u00020\u00062\u0006\u0010K\u001a\u00020LH&J\u0016\u0010M\u001a\u00020\u00112\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H&\u00a8\u0006N"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;",
        "",
        "addPage",
        "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
        "boxCellInfo",
        "Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;",
        "",
        "virtualPage",
        "boxInfoSnapshot",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "clearPage",
        "close",
        "copyPage",
        "copyPageArgs",
        "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;",
        "deleteBookmark",
        "",
        "pageId",
        "",
        "deleteTocEntry",
        "tocEntries",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
        "ensureGlobalNotePage",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "ensureGlobalPage",
        "ensureNotePage",
        "getCoverPage",
        "getCoverPageId",
        "getDirtyVirtualPages",
        "getNotePage",
        "getVirtualPage",
        "cellInfo",
        "index",
        "",
        "getVirtualPageCount",
        "getVirtualPageIndex",
        "getVirtualPageList",
        "gotoPage",
        "insertPage",
        "pageIndex",
        "isCoverPage",
        "isNeedUpdateCover",
        "loadBookmarkList",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
        "keyword",
        "loadGeoLayoutBackground",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "loadTocEntries",
        "queryArgs",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "movePage",
        "movePageArgs",
        "Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;",
        "obtainVirtualPage",
        "boxInfo",
        "onDocCreated",
        "onDocOpened",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;",
        "readTableOfContent",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "removePage",
        "save",
        "updateBookmark",
        "model",
        "updateBoxInfo",
        "updateCoverPage",
        "updateOriginPageRectF",
        "newOriginRectF",
        "Landroid/graphics/RectF;",
        "updatePage",
        "updatePageIdOnInit",
        "currentPageId",
        "updatePageMargin",
        "args",
        "Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;",
        "updateTocEntry",
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


# virtual methods
.method public abstract addPage(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract addPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract boxInfoSnapshot()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract clearPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract close()V
.end method

.method public abstract copyPage(Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract deleteBookmark(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract deleteTocEntry(Ljava/util/List;)Z
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract ensureGlobalNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract ensureGlobalPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract ensureNotePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getCoverPage()Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCoverPageId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getDirtyVirtualPages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getNotePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getVirtualPage(I)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getVirtualPage(Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxCellInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getVirtualPage(Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getVirtualPageCount()I
.end method

.method public abstract getVirtualPageIndex(Ljava/lang/String;)I
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getVirtualPageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract gotoPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)Z
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract insertPage(ILcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .param p2    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isCoverPage(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isNeedUpdateCover(I)Z
.end method

.method public abstract loadBookmarkList(Ljava/lang/String;)Ljava/util/List;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract loadGeoLayoutBackground()Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract loadTocEntries(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract movePage(Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;)V
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/MovePageArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract obtainVirtualPage(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract onDocCreated()V
.end method

.method public abstract onDocOpened()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract readTableOfContent()Lcom/onyx/android/sdk/base/data/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract removePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract save()Z
.end method

.method public abstract updateBookmark(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)Z
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updateBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updateCoverPage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updateOriginPageRectF(ILandroid/graphics/RectF;)V
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updatePage(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;)V
    .param p1    # Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updatePageIdOnInit(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updatePageMargin(Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;)V
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/PageMarginArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract updateTocEntry(Ljava/util/List;)Z
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)Z"
        }
    .end annotation
.end method
