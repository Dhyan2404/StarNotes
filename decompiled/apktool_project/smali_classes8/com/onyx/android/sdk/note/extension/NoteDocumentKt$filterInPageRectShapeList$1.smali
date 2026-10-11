.class final Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$1;
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
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "it",
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


# instance fields
.field final synthetic $notePageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_filterInPageRectShapeList:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            ">;",
            "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$1;->$notePageMap:Ljava/util/Map;

    iput-object p2, p0, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$1;->$this_filterInPageRectShapeList:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$1;->invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$1;->$notePageMap:Ljava/util/Map;

    new-instance v1, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$1$1;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$1;->$this_filterInPageRectShapeList:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$1$1;-><init>(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)V

    new-instance p0, Lcom/onyx/android/sdk/note/extension/a;

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/note/extension/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/extension/NoteDocumentKt$filterInPageRectShapeList$1;->invoke(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    return-object p0
.end method
