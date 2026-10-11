.class public final Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs$Companion;",
        "",
        "()V",
        "fromTextStyle",
        "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;",
        "content",
        "",
        "textStyle",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromTextStyle(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "textStyle"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->setContent(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->setFontSize(F)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getTextSpacing()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->setLineHeight(F)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->setOrientation(I)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->getFontFace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->setFontPath(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;

    sget-object v1, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->INSTANCE:Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;

    invoke-virtual {v1, p2, p1}, Lcom/onyx/android/sdk/note/common/utils/TextRenderUtil;->getAlignTypeCompat(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextAlignType;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->setAlignType(Ljava/lang/String;)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextBold()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->setBold(Z)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextItalic()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->setItalic(Z)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeTextStyle;->isTextUnderline()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;->setUnderline(Z)Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;

    move-result-object p0

    return-object p0
.end method
