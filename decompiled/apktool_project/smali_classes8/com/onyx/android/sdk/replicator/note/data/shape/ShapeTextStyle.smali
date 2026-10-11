.class public final Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008*\u0018\u0000 H2\u00020\u0001:\u0001HB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0004J\u0008\u0010\u001b\u001a\u00020\u0000H\u0016J\u0006\u0010\u001c\u001a\u00020\u0019J\u0006\u0010\u001d\u001a\u00020\u0004J\u0008\u0010\u001e\u001a\u00020\u001fH\u0007J\u0008\u0010 \u001a\u0004\u0018\u00010\u0006J\u0006\u0010!\u001a\u00020\u0004J\u0006\u0010\"\u001a\u00020\u0004J\u0006\u0010#\u001a\u00020\u0004J\u0006\u0010$\u001a\u00020\rJ\u0006\u0010%\u001a\u00020\u0010J\u0006\u0010&\u001a\u00020\rJ\u0006\u0010\'\u001a\u00020\rJ\u0008\u0010(\u001a\u00020\rH\u0007J\u0006\u0010)\u001a\u00020\rJ\u0006\u0010*\u001a\u00020\rJ\u0006\u0010+\u001a\u00020\u0008J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010,\u001a\u00020\u0008J\u0006\u0010-\u001a\u00020\u0008J\u0006\u0010.\u001a\u00020\u0008J\u0008\u0010/\u001a\u00020\u0008H\u0007J\u0006\u00100\u001a\u00020\u0008J\u0006\u00101\u001a\u00020\u0008J\u0006\u00102\u001a\u00020\u0008J\u000e\u00103\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0004J\u0010\u00105\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u000e\u00106\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0004J\u000e\u00107\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u0004J\u000e\u00108\u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\u0004J\u000e\u00109\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010:\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0008J\u000e\u0010;\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0010J\u000e\u0010=\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0008J\u000e\u0010?\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\rJ\u000e\u0010@\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0008J\u000e\u0010A\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\rJ\u0010\u0010B\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\rH\u0007J\u000e\u0010D\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\rJ\u000e\u0010E\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0008J\u000e\u0010F\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0008J\u000e\u0010G\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006I"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "",
        "()V",
        "alignType",
        "",
        "fontFace",
        "",
        "isTextConverted",
        "",
        "orientation",
        "paddingEnd",
        "paddingStart",
        "pointScale",
        "",
        "textBold",
        "textConvertType",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;",
        "textHeight",
        "textItalic",
        "textSize",
        "textSpacing",
        "textTraditional",
        "textUnderline",
        "textWidth",
        "appendTextWidth",
        "",
        "append",
        "clone",
        "ensureTextWidth",
        "getAlignType",
        "getAlignment",
        "Landroid/text/Layout$Alignment;",
        "getFontFace",
        "getOrientation",
        "getPaddingEnd",
        "getPaddingStart",
        "getPointScale",
        "getTextConvertType",
        "getTextHeight",
        "getTextSize",
        "getTextSizeInPt",
        "getTextSpacing",
        "getTextWidth",
        "isTextBold",
        "isTextItalic",
        "isTextOriginConverted",
        "isTextSimplifiedConverted",
        "isTextTraditional",
        "isTextTraditionalConverted",
        "isTextUnderline",
        "isVertical",
        "setAlignType",
        "type",
        "setFontFace",
        "setOrientation",
        "setPaddingEnd",
        "setPaddingStart",
        "setPointScale",
        "setTextBold",
        "setTextConvertType",
        "convertType",
        "setTextConverted",
        "textConverted",
        "setTextHeight",
        "setTextItalic",
        "setTextSize",
        "setTextSizeInPt",
        "pt",
        "setTextSpacing",
        "setTextTraditional",
        "setTextUnderline",
        "setTextWidth",
        "Companion",
        "sdk-replicator_overseasRelease"
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
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_TEXT_SPACING:F = 1.2f

.field public static final DEFAULT_TEXT_WIDTH:I = 0x12c

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private alignType:I

.field private fontFace:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isTextConverted:Z

.field private orientation:I

.field private paddingEnd:I

.field private paddingStart:I

.field private pointScale:F

.field private textBold:Z

.field private textConvertType:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private textHeight:F

.field private textItalic:Z

.field private textSize:F

.field private textSpacing:F

.field private textTraditional:Z

.field private textUnderline:Z

.field private textWidth:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textSpacing:F

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;->NONE:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textConvertType:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textWidth:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->pointScale:F

    return-void
.end method


# virtual methods
.method public final appendTextWidth(I)V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textWidth:F

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textWidth:F

    return-void
.end method

.method public clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->clone()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;

    move-result-object p0

    return-object p0
.end method

.method public final ensureTextWidth()V
    .locals 4

    iget v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textWidth:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "text width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Throwable;)V

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textWidth:F

    :cond_0
    return-void
.end method

.method public final getAlignType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->alignType:I

    return p0
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->alignType:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    return-object p0
.end method

.method public final getFontFace()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->fontFace:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrientation()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->orientation:I

    return p0
.end method

.method public final getPaddingEnd()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->paddingEnd:I

    return p0
.end method

.method public final getPaddingStart()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->paddingStart:I

    return p0
.end method

.method public final getPointScale()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->pointScale:F

    return p0
.end method

.method public final getTextConvertType()Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textConvertType:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    return-object p0
.end method

.method public final getTextHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textHeight:F

    return p0
.end method

.method public final getTextSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textSize:F

    return p0
.end method

.method public final getTextSizeInPt()F
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textSize:F

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->px2pt(Landroid/content/Context;F)F

    move-result p0

    return p0
.end method

.method public final getTextSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textSpacing:F

    return p0
.end method

.method public final getTextWidth()F
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->ensureTextWidth()V

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textWidth:F

    return p0
.end method

.method public final isTextBold()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textBold:Z

    return p0
.end method

.method public final isTextConverted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextConverted:Z

    return p0
.end method

.method public final isTextItalic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textItalic:Z

    return p0
.end method

.method public final isTextOriginConverted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextConvertType()Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;->NONE:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTextSimplifiedConverted()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextConvertType()Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;->T_TO_S:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextConverted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTextTraditional()Z
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textTraditional:Z

    return p0
.end method

.method public final isTextTraditionalConverted()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextConvertType()Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;->S_TO_T:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextConverted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTextUnderline()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textUnderline:Z

    return p0
.end method

.method public final isVertical()Z
    .locals 1

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setAlignType(I)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->alignType:I

    return-object p0
.end method

.method public final setFontFace(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->fontFace:Ljava/lang/String;

    return-object p0
.end method

.method public final setOrientation(I)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->orientation:I

    return-object p0
.end method

.method public final setPaddingEnd(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->paddingEnd:I

    return-void
.end method

.method public final setPaddingStart(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->paddingStart:I

    return-void
.end method

.method public final setPointScale(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->pointScale:F

    return-object p0
.end method

.method public final setTextBold(Z)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textBold:Z

    return-object p0
.end method

.method public final setTextConvertType(Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "convertType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textConvertType:Lcom/onyx/android/sdk/replicator/note/data/shape/NoteChineseConvertType;

    return-object p0
.end method

.method public final setTextConverted(Z)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextConverted:Z

    return-object p0
.end method

.method public final setTextHeight(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textHeight:F

    return-object p0
.end method

.method public final setTextItalic(Z)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textItalic:Z

    return-object p0
.end method

.method public final setTextSize(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textSize:F

    return-object p0
.end method

.method public final setTextSizeInPt(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->pt2px(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textSize:F

    return-object p0
.end method

.method public final setTextSpacing(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textSpacing:F

    return-object p0
.end method

.method public final setTextTraditional(Z)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textTraditional:Z

    return-object p0
.end method

.method public final setTextUnderline(Z)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textUnderline:Z

    return-object p0
.end method

.method public final setTextWidth(F)Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->textWidth:F

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->ensureTextWidth()V

    return-object p0
.end method
