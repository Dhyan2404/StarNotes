.class public final Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInkBeautifyTypesetViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyTypesetViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008+\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008I\u0010JJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\u000e\u001a\u00020\u000cJ\u0006\u0010\u000f\u001a\u00020\u000cJ\u0006\u0010\u0010\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0004J\u001e\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007J\u0006\u0010\u0017\u001a\u00020\u0007R(\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010\'\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\"\u0010+\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010\"\u001a\u0004\u0008)\u0010$\"\u0004\u0008*\u0010&R\"\u0010/\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010\"\u001a\u0004\u0008-\u0010$\"\u0004\u0008.\u0010&R\"\u0010\u0013\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010\"\u001a\u0004\u00081\u0010$\"\u0004\u00082\u0010&R\"\u0010\u0014\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010\"\u001a\u0004\u00084\u0010$\"\u0004\u00085\u0010&R\"\u0010\u0015\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010\"\u001a\u0004\u00087\u0010$\"\u0004\u00088\u0010&R\"\u0010;\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00089\u0010:\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\"\u0010@\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010:\u001a\u0004\u0008@\u0010<\"\u0004\u0008A\u0010>R\"\u0010C\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u0010:\u001a\u0004\u0008C\u0010<\"\u0004\u0008D\u0010>R\u0014\u0010H\u001a\u00020E8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010G\u00a8\u0006K"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "",
        "clear",
        "",
        "isDefaultTypeset",
        "restoreDefaultTypeset",
        "",
        "value",
        "updateFontSize",
        "updateCharSpacing",
        "updateLineSpacing",
        "",
        "getFontSizeSuffix",
        "getFontCharSpacing",
        "getFontLineSpacing",
        "getParamExpand",
        "expand",
        "updateParamExpand",
        "fontSize",
        "charSpacing",
        "lineSpacing",
        "setDefaultTypeset",
        "getRealFontSize",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        "i",
        "Ljava/util/List;",
        "getOriginTextShapes",
        "()Ljava/util/List;",
        "setOriginTextShapes",
        "(Ljava/util/List;)V",
        "originTextShapes",
        "j",
        "F",
        "getOriginFontSize",
        "()F",
        "setOriginFontSize",
        "(F)V",
        "originFontSize",
        "k",
        "getOriginCharSpacing",
        "setOriginCharSpacing",
        "originCharSpacing",
        "l",
        "getOriginLineSpacing",
        "setOriginLineSpacing",
        "originLineSpacing",
        "m",
        "getFontSize",
        "setFontSize",
        "n",
        "getCharSpacing",
        "setCharSpacing",
        "o",
        "getLineSpacing",
        "setLineSpacing",
        "p",
        "Z",
        "isFontSizeChanged",
        "()Z",
        "setFontSizeChanged",
        "(Z)V",
        "q",
        "isCharSpacingChanged",
        "setCharSpacingChanged",
        "r",
        "isLineSpacingChanged",
        "setLineSpacingChanged",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "s",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "paramExpandOption",
        "<init>",
        "()V",
        "note_overseasRelease"
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
        "SMAP\nInkBeautifyTypesetViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkBeautifyTypesetViewModel.kt\ncom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"
    }
.end annotation


# instance fields
.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:Z

.field public q:Z

.field public r:Z

.field public final s:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->i:Ljava/util/List;

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getInkLastBeautifyParamExpandOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->s:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->j:F

    iput v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->k:F

    iput v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->l:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->p:Z

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->q:Z

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->r:Z

    iput v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->m:F

    iput v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->n:F

    iput v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->o:F

    return-void
.end method

.method public final getCharSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->n:F

    return p0
.end method

.method public final getFontCharSpacing()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->q:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->ink_title_origin_char_spacing:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final getFontLineSpacing()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->r:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->ink_title_origin_line_spacing:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final getFontSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->m:F

    return p0
.end method

.method public final getFontSizeSuffix()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->p:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$string;->ink_title_origin_font_size:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public final getLineSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->o:F

    return p0
.end method

.method public final getOriginCharSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->k:F

    return p0
.end method

.method public final getOriginFontSize()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->j:F

    return p0
.end method

.method public final getOriginLineSpacing()F
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->l:F

    return p0
.end method

.method public final getOriginTextShapes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->i:Ljava/util/List;

    return-object p0
.end method

.method public final getParamExpand()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->s:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    return p0
.end method

.method public final getRealFontSize()F
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DimenUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DimenUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->m:F

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/base/utils/DimenUtils;->pt2px(Landroid/content/Context;F)F

    move-result p0

    return p0
.end method

.method public final isCharSpacingChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->q:Z

    return p0
.end method

.method public final isDefaultTypeset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->q:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->r:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFontSizeChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->p:Z

    return p0
.end method

.method public final isLineSpacingChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->r:Z

    return p0
.end method

.method public final restoreDefaultTypeset()V
    .locals 3

    iget v0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->j:F

    iget v1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->k:F

    iget v2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->l:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->setDefaultTypeset(FFF)V

    return-void
.end method

.method public final setCharSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->n:F

    return-void
.end method

.method public final setCharSpacingChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->q:Z

    return-void
.end method

.method public final setDefaultTypeset(FFF)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->j:F

    iput p2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->k:F

    iput p3, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->l:F

    iput p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->m:F

    iput p2, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->n:F

    iput p3, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->o:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->p:Z

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->q:Z

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->r:Z

    return-void
.end method

.method public final setFontSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->m:F

    return-void
.end method

.method public final setFontSizeChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->p:Z

    return-void
.end method

.method public final setLineSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->o:F

    return-void
.end method

.method public final setLineSpacingChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->r:Z

    return-void
.end method

.method public final setOriginCharSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->k:F

    return-void
.end method

.method public final setOriginFontSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->j:F

    return-void
.end method

.method public final setOriginLineSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->l:F

    return-void
.end method

.method public final setOriginTextShapes(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->i:Ljava/util/List;

    return-void
.end method

.method public final updateCharSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->n:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->q:Z

    return-void
.end method

.method public final updateFontSize(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->m:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->p:Z

    return-void
.end method

.method public final updateLineSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->o:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->r:Z

    return-void
.end method

.method public final updateParamExpand(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyTypesetViewModel;->s:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method
