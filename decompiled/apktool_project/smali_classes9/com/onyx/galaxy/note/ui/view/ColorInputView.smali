.class public final Lcom/onyx/galaxy/note/ui/view/ColorInputView;
.super Lcom/onyx/android/sdk/theme/widgets/TintEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorInputView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorInputView.kt\ncom/onyx/galaxy/note/ui/view/ColorInputView\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,93:1\n65#2,16:94\n93#2,3:110\n*S KotlinDebug\n*F\n+ 1 ColorInputView.kt\ncom/onyx/galaxy/note/ui/view/ColorInputView\n*L\n40#1:94,16\n40#1:110,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014B\u001b\u0008\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0013\u0010\u0017B#\u0008\u0016\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0019J$\u0010\u0007\u001a\u00020\u00002\u001c\u0010\u0006\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u0005J\u0008\u0010\u0008\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0003H\u0002J\u0012\u0010\u000e\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cH\u0002R0\u0010\u0006\u001a\u001c\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u00058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/view/ColorInputView;",
        "Lcom/onyx/android/sdk/theme/widgets/TintEditText;",
        "Lkotlin/Function1;",
        "",
        "",
        "Lcom/onyx/android/sdk/base/extension/SingleArgCallbackFunc;",
        "callback",
        "setCallback",
        "b",
        "g",
        "viewId",
        "f",
        "",
        "forceUpdate",
        "d",
        "h",
        "Lkotlin/jvm/functions/Function1;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
        "SMAP\nColorInputView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorInputView.kt\ncom/onyx/galaxy/note/ui/view/ColorInputView\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,93:1\n65#2,16:94\n93#2,3:110\n*S KotlinDebug\n*F\n+ 1 ColorInputView.kt\ncom/onyx/galaxy/note/ui/view/ColorInputView\n*L\n40#1:94,16\n40#1:110,3\n*E\n"
    }
.end annotation


# instance fields
.field public h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintEditText;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ColorInputView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/theme/widgets/TintEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ColorInputView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/TintEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ColorInputView;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/ui/view/ColorInputView;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/view/ColorInputView;->c(Lcom/onyx/galaxy/note/ui/view/ColorInputView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$onActionClick(Lcom/onyx/galaxy/note/ui/view/ColorInputView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/view/ColorInputView;->f(I)V

    return-void
.end method

.method public static final c(Lcom/onyx/galaxy/note/ui/view/ColorInputView;Landroid/view/View;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/view/ColorInputView;->g()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/ui/view/ColorInputView;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/view/ColorInputView;->d(Z)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$integer;->max_length_hex_color:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->allowed_chars_hex_color:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    sget-object v1, Lcom/onyx/android/sdk/ui/CharFilter;->INSTANCE:Lcom/onyx/android/sdk/ui/CharFilter;

    new-instance v3, Lcom/onyx/galaxy/note/ui/view/ColorInputView$initView$charFilter$1;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/ui/view/ColorInputView$initView$charFilter$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/ui/CharFilter;->toInputFilter(Lkotlin/jvm/functions/Function1;)Landroid/text/InputFilter;

    move-result-object v0

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/ui/EditTextExtsKt;->addFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/ui/EditTextExtsKt;->addFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V

    new-instance v0, Lcom/onyx/galaxy/note/ui/view/ColorInputView$initView$$inlined$addTextChangedListener$default$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/ui/view/ColorInputView$initView$$inlined$addTextChangedListener$default$1;-><init>(Lcom/onyx/galaxy/note/ui/view/ColorInputView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    const/high16 v1, 0x80000

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    new-instance v0, Lcom/sunia/HTREnginev2/q1e;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/q1e;-><init>(Lcom/onyx/galaxy/note/ui/view/ColorInputView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final d(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#FF"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toUpperCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x6

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/high16 p1, -0x1000000

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/ColorInputView;->h:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final f(I)V
    .locals 4

    sget v0, Lcom/onyx/galaxy/note/R$id;->copy:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string v0, "getText(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->copyToClipboard(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget v0, Lcom/onyx/galaxy/note/R$id;->paste:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ContextKt;->getClipTextData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-interface {v0, v2, v3, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/ui/view/ColorInputView;->d(Z)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    return-void
.end method

.method public final g()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/TextInputSelectionPopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/ui/view/ColorInputView$showCustomCopyPasteMenu$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/ui/view/ColorInputView$showCustomCopyPasteMenu$1;-><init>(Lcom/onyx/galaxy/note/ui/view/ColorInputView;)V

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/editor/view/popup/TextInputSelectionPopup;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method public final setCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/galaxy/note/ui/view/ColorInputView;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/galaxy/note/ui/view/ColorInputView;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/view/ColorInputView;->h:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
