.class public final Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextRunStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008,\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u0000 ;2\u00020\u0001:\u0001;B\u0007\u00a2\u0006\u0004\u00089\u0010:J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0007R$\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0012\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\n\u001a\u0004\u0008\u0003\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR$\u0010\u0016\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\n\u001a\u0004\u0008\u0014\u0010\u000c\"\u0004\u0008\u0015\u0010\u000eR$\u0010\u0019\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\n\u001a\u0004\u0008\u0008\u0010\u000c\"\u0004\u0008\u0018\u0010\u000eR$\u0010\u001c\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\n\u001a\u0004\u0008\u0006\u0010\u000c\"\u0004\u0008\u001b\u0010\u000eR$\u0010 \u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\n\u001a\u0004\u0008\u001e\u0010\u000c\"\u0004\u0008\u001f\u0010\u000eR$\u0010$\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\n\u001a\u0004\u0008\"\u0010\u000c\"\u0004\u0008#\u0010\u000eR$\u0010(\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\n\u001a\u0004\u0008&\u0010\u000c\"\u0004\u0008\'\u0010\u000eR$\u0010,\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010\n\u001a\u0004\u0008*\u0010\u000c\"\u0004\u0008+\u0010\u000eR$\u00103\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u0011\u00105\u001a\u0002048F\u00a2\u0006\u0006\u001a\u0004\u00085\u00106R\u0011\u00107\u001a\u0002048F\u00a2\u0006\u0006\u001a\u0004\u00087\u00106R\u0011\u00108\u001a\u0002048F\u00a2\u0006\u0006\u001a\u0004\u00088\u00106\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;",
        "",
        "",
        "getColor",
        "",
        "defValue",
        "getFontSize",
        "",
        "getFontPath",
        "a",
        "Ljava/lang/String;",
        "getBackgroundColor",
        "()Ljava/lang/String;",
        "setBackgroundColor",
        "(Ljava/lang/String;)V",
        "backgroundColor",
        "b",
        "setColor",
        "color",
        "c",
        "getFontFamily",
        "setFontFamily",
        "fontFamily",
        "d",
        "setFontPath",
        "fontPath",
        "e",
        "setFontSize",
        "fontSize",
        "f",
        "getFontStyle",
        "setFontStyle",
        "fontStyle",
        "g",
        "getFontWeight",
        "setFontWeight",
        "fontWeight",
        "h",
        "getLineHeight",
        "setLineHeight",
        "lineHeight",
        "i",
        "getTextDecoration",
        "setTextDecoration",
        "textDecoration",
        "j",
        "Ljava/lang/Integer;",
        "getTextColor",
        "()Ljava/lang/Integer;",
        "setTextColor",
        "(Ljava/lang/Integer;)V",
        "textColor",
        "",
        "isUnderline",
        "()Z",
        "isBold",
        "isItalic",
        "<init>",
        "()V",
        "Companion",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DECORATION_UNDERLINE:Ljava/lang/String; = "underline"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FONT_STYLE_ITALIC:Ljava/lang/String; = "italic"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FONT_WEIGHT_BOLD:Ljava/lang/String; = "bold"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->Companion:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getColor()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ColorUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/ColorUtils;->parseRGBColor(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getColor()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getFontFamily()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getFontPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getFontPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "defValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->d:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->d:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getFontSize(F)F
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->e:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 3
    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->e:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "px"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    move p1, p0

    :cond_1
    return p1
.end method

.method public final getFontSize()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getFontStyle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getFontWeight()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final getLineHeight()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final getTextColor()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getTextDecoration()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final isBold()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->g:Ljava/lang/String;

    const-string v0, "bold"

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isItalic()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->f:Ljava/lang/String;

    const-string v0, "italic"

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isUnderline()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->i:Ljava/lang/String;

    const-string v0, "underline"

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final setBackgroundColor(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->a:Ljava/lang/String;

    return-void
.end method

.method public final setColor(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->b:Ljava/lang/String;

    return-void
.end method

.method public final setFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->c:Ljava/lang/String;

    return-void
.end method

.method public final setFontPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->d:Ljava/lang/String;

    return-void
.end method

.method public final setFontSize(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->e:Ljava/lang/String;

    return-void
.end method

.method public final setFontStyle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->f:Ljava/lang/String;

    return-void
.end method

.method public final setFontWeight(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->g:Ljava/lang/String;

    return-void
.end method

.method public final setLineHeight(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->h:Ljava/lang/String;

    return-void
.end method

.method public final setTextColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->j:Ljava/lang/Integer;

    return-void
.end method

.method public final setTextDecoration(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;->i:Ljava/lang/String;

    return-void
.end method
