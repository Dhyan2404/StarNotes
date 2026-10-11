.class public final Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateImageShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateImageShapeRequest.kt\ncom/onyx/android/sdk/note/request/CreateImageShapeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,233:1\n1045#2:234\n1864#2,3:236\n1#3:235\n*S KotlinDebug\n*F\n+ 1 CreateImageShapeRequest.kt\ncom/onyx/android/sdk/note/request/CreateImageShapeRequest\n*L\n70#1:234\n212#1:236,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 L2\u00020\u0001:\u0001LB-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\"\u001a\u00020 \u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0006\u00a2\u0006\u0004\u0008J\u0010KJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J \u0010\u0012\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J(\u0010\u0016\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\u0018\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\tH\u0002J\u000e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0006H\u0002R\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010!R\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010#R\u001c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010$R\u0014\u0010(\u001a\u00020&8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\'R\u0014\u0010)\u001a\u00020&8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\'R$\u0010-\u001a\u0012\u0012\u0004\u0012\u00020\u00070*j\u0008\u0012\u0004\u0012\u00020\u0007`+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010,R0\u00102\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00130.j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0013`/8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R$\u00109\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\"\u0010A\u001a\u00020:8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\"\u0010I\u001a\u00020B8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010H\u00a8\u0006M"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getShapeList",
        "",
        "imageFilePath",
        "g",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;",
        "bean",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "downPoint",
        "f",
        "Lcom/onyx/android/sdk/base/data/Size;",
        "imageSize",
        "k",
        "j",
        "shape",
        "newShape",
        "Landroid/graphics/Matrix;",
        "h",
        "localPath",
        "documentId",
        "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;",
        "l",
        "i",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
        "renderContext",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "Ljava/util/List;",
        "beanList",
        "",
        "F",
        "MAX_IMAGE_SIZE_PERCENTAGE_FOR_SCRIBBLE_VIEW",
        "MAX_TOTAL_IMAGE_SIZE_PERCENT",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "Ljava/util/ArrayList;",
        "shapeList",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "m",
        "Ljava/util/HashMap;",
        "imageSizeMap",
        "n",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getInsertPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "setInsertPoint",
        "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "insertPoint",
        "",
        "o",
        "Z",
        "getAddToCmdStack",
        "()Z",
        "setAddToCmdStack",
        "(Z)V",
        "addToCmdStack",
        "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "p",
        "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "getCompositeCommand",
        "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;",
        "setCompositeCommand",
        "(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V",
        "compositeCommand",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;)V",
        "Companion",
        "sdk-note_overseasRelease"
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
        "SMAP\nCreateImageShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateImageShapeRequest.kt\ncom/onyx/android/sdk/note/request/CreateImageShapeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,233:1\n1045#2:234\n1864#2,3:236\n1#3:235\n*S KotlinDebug\n*F\n+ 1 CreateImageShapeRequest.kt\ncom/onyx/android/sdk/note/request/CreateImageShapeRequest\n*L\n70#1:234\n212#1:236,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final q:I = 0x4


# instance fields
.field public final g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:F

.field public final k:F

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/base/data/Size;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Z

.field public p:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->Companion:Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/data/render/RenderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/NoteBundle;",
            "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notePage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beanList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    iput-object p3, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iput-object p4, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->i:Ljava/util/List;

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->j:F

    const/high16 p1, 0x3f400000    # 0.75f

    iput p1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->k:F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->l:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->m:Ljava/util/HashMap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->o:Z

    new-instance p2, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, p3}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->p:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    return-void
.end method

.method public static final synthetic access$getImageSizeMap$p(Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->m:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->i:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->i:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest$execute$$inlined$sortedBy$1;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest$execute$$inlined$sortedBy$1;-><init>(Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;)V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->i:Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->i()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->l:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iget-object v5, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->i:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v4, v5, v6}, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->f(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/NoteBundle;->postAddShapeEvent(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->o:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->p:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/command/CompositeCommand;->addShapesUndoRedoCommand(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getCommandManager()Lcom/onyx/android/sdk/note/common/command/CommandManager;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->p:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->addCommand(Lcom/onyx/android/sdk/note/common/command/Command;)V

    :cond_3
    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->m:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->j(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/Size;Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    sget-object p2, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {p2, p1, p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->saveShape(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-object p0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/data/utils/SvgUtil;->INSTANCE:Lcom/onyx/android/sdk/data/utils/SvgUtil;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/utils/SvgUtil;->isSvgImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/data/utils/SvgUtil;->decodeSize(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapUtils;

    invoke-virtual {v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/BitmapUtils;->decodeBitmapSizeSupportExif(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)Z

    :goto_0
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->k(Lcom/onyx/android/sdk/base/data/Size;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->m:Ljava/util/HashMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode image file:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",size:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final getAddToCmdStack()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->o:Z

    return p0
.end method

.method public final getCompositeCommand()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->p:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    return-object p0
.end method

.method public final getInsertPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->n:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final getShapeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->l:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;
    .locals 4

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->getShapeMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->getTransformingMatrix(Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->getMatrixRotateAngel(Landroid/graphics/Matrix;Landroid/graphics/RectF;)F

    move-result v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->first()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->getPoints()Lcom/onyx/android/sdk/base/data/TouchPointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->first()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toPointF(Lcom/onyx/android/sdk/base/data/TouchPoint;)Landroid/graphics/PointF;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/base/extension/MatrixKt;->mapSelfPoint(Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p0

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->m:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->m:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v3

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/Size;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_2

    move v3, v4

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getPageRenderRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->k:F

    mul-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->k:F

    mul-float/2addr v5, v6

    sget-object v6, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v7, Lcom/onyx/android/sdk/note/R$dimen;->insert_image_shape_margin:I

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float v7, v6, v0

    add-float v8, v2, v7

    int-to-float v3, v3

    add-float/2addr v7, v3

    cmpl-float v8, v8, v4

    if-lez v8, :cond_4

    sub-float/2addr v4, v2

    div-float/2addr v4, v0

    goto :goto_2

    :cond_4
    move v4, v6

    :goto_2
    cmpl-float v2, v7, v5

    if-lez v2, :cond_5

    sub-float/2addr v5, v3

    div-float v6, v5, v0

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->i:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move v7, v5

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-gez v7, :cond_6

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_6
    check-cast v8, Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;

    iget-object v10, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->m:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/base/data/Size;

    if-nez v8, :cond_7

    new-instance v8, Lcom/onyx/android/sdk/base/data/Size;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-direct {v8, v5, v5, v10, v11}, Lcom/onyx/android/sdk/base/data/Size;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_7
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v10, Lcom/onyx/android/sdk/base/data/TouchPoint;

    int-to-float v7, v7

    mul-float v11, v4, v7

    mul-float/2addr v7, v6

    invoke-direct {v10, v11, v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v11

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v12

    invoke-virtual {v8}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v12, v8

    invoke-direct {v7, v11, v12}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v9

    goto :goto_3

    :cond_8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_4

    :cond_9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v2

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_5

    :cond_a
    new-instance p0, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {p0, v4, v4, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    sub-float/2addr v1, p0

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v1, v0, p0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_c
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_d
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final j(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/Size;Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 6

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;

    invoke-virtual {v1, p2, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->matrixTouchPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/data/utils/SvgUtil;->INSTANCE:Lcom/onyx/android/sdk/data/utils/SvgUtil;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/utils/SvgUtil;->isSvgImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x23

    goto :goto_0

    :cond_0
    const/16 v3, 0x13

    :goto_0
    sget-object v4, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v3

    invoke-interface {v3, v2, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v2, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {v2, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    invoke-virtual {v1, v2, v0}, Lcom/onyx/android/sdk/note/common/utils/ShapeMatrixUtils;->matrixTouchPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-interface {v3, p2, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeTime()V

    const/4 p2, 0x1

    invoke-static {v3, p2}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setBottom(Lcom/onyx/android/sdk/note/common/shape/Shape;Z)V

    sget-object p2, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {p2, v3, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->setShapeZOrder(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    invoke-virtual {p4}, Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;->getSourceShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, v3}, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->h(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/shape/Shape;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-interface {v3, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTransform;->setShapeMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    sget-object p2, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;->getFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->l(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object p0

    invoke-virtual {p2, v3, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeOptions;->setResource(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;)V

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    return-object v3
.end method

.method public final k(Lcom/onyx/android/sdk/base/data/Size;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->g:Lcom/onyx/android/sdk/note/common/data/render/RenderContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderContext;->getRenderMeasure()Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/render/RenderMeasure;->getPageRenderRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->j:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget p0, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->j:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/Size;->setHeight(I)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/base/data/Size;->setWidth(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v0

    if-le v0, p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/data/Size;->setWidth(I)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/data/Size;->setHeight(I)V

    :cond_1
    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->INSTANCE:Lcom/onyx/android/sdk/replicator/utils/ResourceModels;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/note/extension/ResourceModelKt;->loadAndSaveResource(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/utils/ResourceModels;->toShapeResource(Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;

    move-result-object p0

    return-object p0
.end method

.method public final setAddToCmdStack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->o:Z

    return-void
.end method

.method public final setCompositeCommand(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/command/CompositeCommand;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->p:Lcom/onyx/android/sdk/note/common/command/CompositeCommand;

    return-void
.end method

.method public final setInsertPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;->n:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-void
.end method
