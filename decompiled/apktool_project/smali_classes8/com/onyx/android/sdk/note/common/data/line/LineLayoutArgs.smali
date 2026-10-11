.class public final Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\t\u0008\u0017\u00a2\u0006\u0004\u0008$\u0010%B!\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008$\u0010&J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0002J\u0006\u0010\n\u001a\u00020\u0002J\u000e\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0002J \u0010\r\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002J\u0006\u0010\u0011\u001a\u00020\u0002J\u0010\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0002J\u0018\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0002R\u0016\u0010\u0008\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001cR\u0016\u0010\u000b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001cR\u0016\u0010 \u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001cR\u0016\u0010\u0015\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001cR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;",
        "",
        "",
        "getBaseLine",
        "baseLine",
        "",
        "setBaseLine",
        "getLineCount",
        "lineCount",
        "setLineCount",
        "getLineHeight",
        "lineHeight",
        "setLineHeight",
        "create",
        "line",
        "getLineBottom",
        "getLineTop",
        "getSpanTextFontHeight",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "cursorShape",
        "setCursorShape",
        "backgroundType",
        "setBackgroundType",
        "Landroid/widget/EditText;",
        "spanTextView",
        "spanMargin",
        "updateLineLayoutArgs",
        "a",
        "I",
        "b",
        "c",
        "d",
        "spanTextFontHeight",
        "e",
        "f",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "<init>",
        "()V",
        "(III)V",
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
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->b:I

    .line 4
    iput p2, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->a:I

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->c:I

    return-void
.end method

.method public static synthetic updateLineLayoutArgs$default(Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;Landroid/widget/EditText;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x5

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->updateLineLayoutArgs(Landroid/widget/EditText;I)V

    return-void
.end method


# virtual methods
.method public final create(III)Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;-><init>(III)V

    return-object p0
.end method

.method public final getBaseLine()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->b:I

    return p0
.end method

.method public final getLineBottom(I)I
    .locals 3

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->b:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget v2, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->c:I

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final getLineCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->a:I

    return p0
.end method

.method public final getLineHeight()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->c:I

    return p0
.end method

.method public final getLineTop(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->getLineBottom(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getSpanTextFontHeight()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->d:I

    return p0
.end method

.method public final setBackgroundType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->e:I

    return-void
.end method

.method public final setBaseLine(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->b:I

    return-void
.end method

.method public final setCursorShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method

.method public final setLineCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->a:I

    return-void
.end method

.method public final setLineHeight(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->c:I

    return-void
.end method

.method public final updateLineLayoutArgs(Landroid/widget/EditText;I)V
    .locals 3
    .param p1    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "spanTextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    iput v1, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->c:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    iget v2, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->c:I

    div-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    move v1, v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->b:I

    iput v1, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->a:I

    invoke-static {p1, p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->calculateFontHeight(Landroid/widget/TextView;I)I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/line/LineLayoutArgs;->d:I

    return-void
.end method
