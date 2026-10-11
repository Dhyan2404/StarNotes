.class final Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$pageRect$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/note/extension/NoteDocumentKt;->filterInPageRectShapeList(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocument.kt\ncom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$pageRect$1\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,99:1\n337#2:100\n*S KotlinDebug\n*F\n+ 1 NoteDocument.kt\ncom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$pageRect$1\n*L\n92#1:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/RectF;",
        "pageId",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocument.kt\ncom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$pageRect$1\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,99:1\n337#2:100\n*S KotlinDebug\n*F\n+ 1 NoteDocument.kt\ncom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$pageRect$1\n*L\n92#1:100\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $notePage:Lcom/onyx/android/sdk/note/common/document/page/NotePage;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$pageRect$1;->$notePage:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$pageRect$1;->$notePage:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getPageRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$pageRect$1;->invoke(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method
