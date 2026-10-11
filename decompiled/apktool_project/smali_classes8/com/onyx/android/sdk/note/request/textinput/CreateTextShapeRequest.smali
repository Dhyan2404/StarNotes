.class public final Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010&\u001a\u00020$\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u00088\u00109J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015J\u0006\u0010\u0017\u001a\u00020\u000bJ\u0018\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0018\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001aH\u0002J\u0008\u0010\u001f\u001a\u00020\u0015H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u0015H\u0002J\u0010\u0010\"\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0008\u0010#\u001a\u00020\u0005H\u0002R\u0014\u0010&\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010%R\u0017\u0010\u0019\u001a\u00020\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\'\u001a\u0004\u0008(\u0010)R\u0017\u0010\u001b\u001a\u00020\u001a8\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010*\u001a\u0004\u0008+\u0010,R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010-R\u0018\u0010/\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010.R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107\u00a8\u0006:"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "",
        "inputText",
        "setInputText",
        "Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;",
        "inputConfig",
        "setInputConfig",
        "",
        "inputTextShapeDefaultX",
        "setInputTextShapeDefaultX",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "textStyle",
        "setTextStyle",
        "",
        "limitShapeInNotePage",
        "limitShapeRectInNotePage",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "getTextShape",
        "defaultShapeTextStyle",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "notePage",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "h",
        "insertPoint",
        "k",
        "g",
        "shape",
        "f",
        "i",
        "j",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "getNotePage",
        "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "getTouchPoint",
        "()Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "l",
        "Ljava/lang/String;",
        "m",
        "Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;",
        "n",
        "F",
        "o",
        "Z",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/base/data/TouchPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:F

.field public o:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualBoxInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notePage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchPoint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p3, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iput-object p4, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object p1, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getInputTextShapeDefaultX()F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->n:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->o:Z

    return-void
.end method


# virtual methods
.method public final defaultShapeTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getActualScale()F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->j()Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;->toDefaultTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->i(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/note/R$dimen;->text_box_default_width:I

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    sget v3, Lcom/onyx/android/sdk/note/R$dimen;->text_box_default_height:I

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextWidth(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    div-float/2addr p0, v0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setTextHeight(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    return-object v1
.end method

.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->h(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v1, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {v1, p0, v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->saveShape(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/NoteBundle;->postAddShapeEvent(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->defaultShapeTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    :cond_0
    invoke-interface {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new textShape textStyle.textWidth/height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextHeight()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final g()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeFactory;->create(I)Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->l:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->l:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/note/common/utils/ShapeTextUtils;->convertToHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->setRichText(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->j()Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeColor(I)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->f(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-object v0
.end method

.method public final getNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->h:Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    return-object p0
.end method

.method public final getTextShape()Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->k:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-object p0
.end method

.method public final getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->i:Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/note/common/shape/Shape;
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->g()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->k(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {v0, p2, p2}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onDown(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextHeight()F

    move-result v1

    add-float/2addr p2, v1

    invoke-direct {p0, v2, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-interface {v0, p0, p0}, Lcom/onyx/android/sdk/note/common/shape/ShapePoints;->onUp(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->ensureShapeUniqueId()V

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeRect()V

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeTime()V

    sget-object p0, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/note/common/utils/ShapeUtils;->setShapeZOrder(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    return-object v0
.end method

.method public final i(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, ""

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->setFontFace(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    return-void
.end method

.method public final j()Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->m:Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->m:Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->m:Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final k(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 4

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextHeight()F

    move-result p1

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->g:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getOriginRectFWithMargin()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    add-float/2addr v2, v0

    iget v3, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget p0, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->n:F

    sub-float/2addr v3, v0

    sub-float/2addr v3, p0

    invoke-static {p0, v3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    :cond_1
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    add-float/2addr p0, p1

    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_2

    const/4 p0, 0x0

    sub-float/2addr v0, p1

    invoke-static {p0, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    :cond_2
    return-void
.end method

.method public final limitShapeRectInNotePage(Z)Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->o:Z

    return-object p0
.end method

.method public final setInputConfig(Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;)Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "inputConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->m:Lcom/onyx/android/sdk/note/common/data/text/TextInputConfig;

    return-object p0
.end method

.method public final setInputText(Ljava/lang/String;)Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final setInputTextShapeDefaultX(F)Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->n:F

    return-object p0
.end method

.method public final setTextStyle(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/textinput/CreateTextShapeRequest;->j:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    return-object p0
.end method
