.class public final Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ<\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0016J<\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0002J\u0008\u0010\r\u001a\u00020\u0004H\u0002R\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0012R\"\u0010\u001a\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;",
        "Landroid/text/InputFilter$LengthFilter;",
        "",
        "source",
        "",
        "start",
        "end",
        "Landroid/text/Spanned;",
        "dest",
        "dstart",
        "dend",
        "filter",
        "a",
        "b",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "textBox",
        "Lcom/onegravity/rteditor/RTEditText;",
        "Lcom/onegravity/rteditor/RTEditText;",
        "rtEditor",
        "c",
        "I",
        "getOriginContentLen",
        "()I",
        "setOriginContentLen",
        "(I)V",
        "originContentLen",
        "<init>",
        "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onegravity/rteditor/RTEditText;)V",
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
.field public final a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onegravity/rteditor/RTEditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onegravity/rteditor/RTEditText;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onegravity/rteditor/RTEditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtEditor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/textbox/R$integer;->editor_content_max_length:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    iput-object p2, p0, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;->b:Lcom/onegravity/rteditor/RTEditText;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;->b()I

    move-result p0

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    sub-int/2addr p6, p5

    sub-int/2addr p4, p6

    sub-int/2addr p0, p4

    const-string p4, ""

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p3, p2

    if-lt p0, p3, :cond_1

    const/4 p4, 0x0

    goto :goto_0

    :cond_1
    add-int/2addr p0, p2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    add-int/lit8 p3, p0, -0x1

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_2

    add-int/lit8 p0, p0, -0x1

    if-ne p0, p2, :cond_2

    return-object p4

    :cond_2
    invoke-interface {p1, p2, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p4

    :goto_0
    return-object p4
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;->b:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;->c:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/text/Spanned;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "dest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;->b:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v2

    if-lt v0, v2, :cond_1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v3, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input exceeds max len "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", current len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v2, Lcom/onyx/android/sdk/textbox/R$string;->text_box_input_exceed_max_len:I

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;->a(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getOriginContentLen()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;->c:I

    return p0
.end method

.method public final setOriginContentLen(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/textbox/filter/InputLengthFilter;->c:I

    return-void
.end method
