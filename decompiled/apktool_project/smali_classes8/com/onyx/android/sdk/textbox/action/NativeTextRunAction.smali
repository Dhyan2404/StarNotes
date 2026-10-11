.class public final Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0005\u001a\u00020\u0000J$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001a\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000f\u001a\u00020\u0008H\u0002R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0012R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;",
        "",
        "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;",
        "getRichTextRun",
        "getRichTextRunValue",
        "renderContent",
        "Lcom/onegravity/rteditor/RTEditText;",
        "textRender",
        "",
        "customWidth",
        "customHeight",
        "",
        "c",
        "b",
        "measureTextRun",
        "line",
        "a",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "textShape",
        "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;",
        "richTextRun",
        "<init>",
        "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;Lcom/onegravity/rteditor/RTEditText;IIILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->c(Lcom/onegravity/rteditor/RTEditText;II)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onegravity/rteditor/RTEditText;I)Lcom/onegravity/rteditor/RTEditText;
    .locals 4

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->initEditor(Landroid/content/Context;)Lcom/onegravity/rteditor/RTEditText;

    move-result-object v0

    new-instance v1, Lcom/onegravity/rteditor/api/RTApi;

    new-instance v2, Lcom/onegravity/rteditor/api/DefaultProxyImpl;

    invoke-direct {v2}, Lcom/onegravity/rteditor/api/DefaultProxyImpl;-><init>()V

    new-instance v3, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;

    invoke-direct {v3, p1}, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/onegravity/rteditor/api/RTApi;-><init>(Landroid/content/Context;Lcom/onegravity/rteditor/api/RTProxy;Lcom/onegravity/rteditor/api/RTMediaFactory;)V

    new-instance p1, Lcom/onegravity/rteditor/RTManager;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/onegravity/rteditor/RTManager;-><init>(Lcom/onegravity/rteditor/api/RTApi;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/onegravity/rteditor/RTManager;->registerEditor(Lcom/onegravity/rteditor/RTEditText;Z)V

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    mul-int/2addr v2, p2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    invoke-virtual {p0, v0, v2, p2}, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->c(Lcom/onegravity/rteditor/RTEditText;II)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/onegravity/rteditor/RTManager;->onDestroy(Z)V

    return-object v0
.end method

.method public final b(Lcom/onegravity/rteditor/RTEditText;)V
    .locals 12

    new-instance v0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    invoke-direct {v0}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;-><init>()V

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    move v4, v2

    move-object v5, v3

    :goto_1
    if-ge v4, v1, :cond_c

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setSelection(I)V

    new-instance v7, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;

    invoke-direct {v7}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;-><init>()V

    new-instance v8, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    invoke-direct {v8}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;-><init>()V

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    goto :goto_2

    :cond_1
    move-object v9, v3

    :goto_2
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->setText(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    add-int/lit8 v10, v1, -0x1

    if-eq v4, v10, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    if-le v10, v9, :cond_2

    goto :goto_3

    :cond_2
    move v10, v2

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v10, 0x1

    :goto_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    invoke-virtual {v7, v11}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->setX(F)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v7, v11}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->setY(F)V

    if-eqz v10, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-virtual {v7}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v7, v10}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->setWidth(F)V

    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    invoke-virtual {v7}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v7, v10}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->setWidth(F)V

    :goto_5
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->setHeight(F)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->setBaseline(F)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getWidth()F

    move-result v9

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    invoke-virtual {p0, v5, v9}, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->a(Lcom/onegravity/rteditor/RTEditText;I)Lcom/onegravity/rteditor/RTEditText;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v9

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v7, v9}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->setWidth(F)V

    :cond_5
    invoke-static {p1, v4, v6}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->getStyleInfo(Lcom/onegravity/rteditor/RTEditText;II)Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getTextColor()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->setTextColor(Ljava/lang/Integer;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getFontSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->setFontSize(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getFontFamily()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/onegravity/rteditor/fonts/FontManager;->getTypeface(Ljava/lang/String;)Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/onegravity/rteditor/fonts/RTTypeface;->getFontPath()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_8

    :cond_6
    iget-object v9, p0, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v9}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_7
    move-object v9, v3

    :cond_8
    :goto_6
    invoke-virtual {v8, v9}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->setFontPath(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getLineHeight()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->setLineHeight(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getBold()Z

    move-result v9

    const-string v10, ""

    if-eqz v9, :cond_9

    const-string v9, "bold"

    goto :goto_7

    :cond_9
    move-object v9, v10

    :goto_7
    invoke-virtual {v8, v9}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->setFontWeight(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getItalic()Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "italic"

    goto :goto_8

    :cond_a
    move-object v9, v10

    :goto_8
    invoke-virtual {v8, v9}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->setFontStyle(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/textbox/data/EditorStyleInfo;->getUnderline()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v10, "underline"

    :cond_b
    invoke-virtual {v8, v10}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->setTextDecoration(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->setStyle(Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto/16 :goto_1

    :cond_c
    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->b:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    return-void
.end method

.method public final c(Lcom/onegravity/rteditor/RTEditText;II)V
    .locals 5

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {p2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getOriginRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-static {p3}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    move v4, p3

    move p3, p2

    move p2, v4

    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getTextStyle()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/onegravity/rteditor/fonts/FontManager;->getTypeFaceByCustomFontPath(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;

    sget-object v2, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getAlignTypeCompat(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->toTextAlignment(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->getStrokeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSpacing()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->a:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {p0}, Lcom/onyx/android/sdk/note/common/shape/ShapeRichText;->getRichText()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/onegravity/rteditor/RTEditText;->setRichTextEditing(ZLjava/lang/String;)V

    const/high16 p0, 0x40000000    # 2.0f

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p3, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, v2, v2, p0, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final getRichTextRun()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->renderContent()Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->b:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    return-object p0
.end method

.method public final getRichTextRunValue()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->b:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    return-object p0
.end method

.method public final renderContent()Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/textbox/utils/RTEditorExtKt;->initEditor(Landroid/content/Context;)Lcom/onegravity/rteditor/RTEditText;

    move-result-object v7

    new-instance v1, Lcom/onegravity/rteditor/api/RTApi;

    new-instance v2, Lcom/onegravity/rteditor/api/DefaultProxyImpl;

    invoke-direct {v2}, Lcom/onegravity/rteditor/api/DefaultProxyImpl;-><init>()V

    new-instance v3, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;

    invoke-direct {v3, v0}, Lcom/onegravity/rteditor/api/RTMediaFactoryImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/onegravity/rteditor/api/RTApi;-><init>(Landroid/content/Context;Lcom/onegravity/rteditor/api/RTProxy;Lcom/onegravity/rteditor/api/RTMediaFactory;)V

    new-instance v0, Lcom/onegravity/rteditor/RTManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onegravity/rteditor/RTManager;-><init>(Lcom/onegravity/rteditor/api/RTApi;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v7, v1}, Lcom/onegravity/rteditor/RTManager;->registerEditor(Lcom/onegravity/rteditor/RTEditText;Z)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->d(Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;Lcom/onegravity/rteditor/RTEditText;IIILjava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/onyx/android/sdk/textbox/action/NativeTextRunAction;->b(Lcom/onegravity/rteditor/RTEditText;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onegravity/rteditor/RTManager;->onDestroy(Z)V

    return-object p0
.end method
