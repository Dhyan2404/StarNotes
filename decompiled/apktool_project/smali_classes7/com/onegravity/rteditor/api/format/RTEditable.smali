.class public final Lcom/onegravity/rteditor/api/format/RTEditable;
.super Lcom/onegravity/rteditor/api/format/RTSpanned;
.source "SourceFile"


# instance fields
.field public c:Lcom/onegravity/rteditor/RTEditText;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/RTEditText;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/onegravity/rteditor/api/format/RTSpanned;-><init>(Landroid/text/Spanned;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onegravity/rteditor/api/format/RTEditable;->d:Z

    iput-object p1, p0, Lcom/onegravity/rteditor/api/format/RTEditable;->c:Lcom/onegravity/rteditor/RTEditText;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/onegravity/rteditor/api/format/RTEditable;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/api/format/RTEditable;->c:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    iget-object p0, p0, Lcom/onegravity/rteditor/api/format/RTEditable;->c:Lcom/onegravity/rteditor/RTEditText;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/onegravity/rteditor/effects/Effect;

    invoke-static {p0, v0}, Lcom/onegravity/rteditor/effects/Effects;->cleanupParagraphs(Lcom/onegravity/rteditor/RTEditText;[Lcom/onegravity/rteditor/effects/Effect;)V

    return-void
.end method

.method public convertTo(Lcom/onegravity/rteditor/api/format/RTFormat;Lcom/onegravity/rteditor/api/RTMediaFactory;)Lcom/onegravity/rteditor/api/format/RTText;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/api/format/RTFormat;",
            "Lcom/onegravity/rteditor/api/RTMediaFactory<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;)",
            "Lcom/onegravity/rteditor/api/format/RTText;"
        }
    .end annotation

    instance-of v0, p1, Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onegravity/rteditor/api/format/RTEditable;->a()V

    new-instance p2, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;

    invoke-direct {p2}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;-><init>()V

    iget-object p0, p0, Lcom/onegravity/rteditor/api/format/RTEditable;->c:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    check-cast p1, Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    invoke-virtual {p2, p0, p1}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->convert(Landroid/text/Spanned;Lcom/onegravity/rteditor/api/format/RTFormat$Html;)Lcom/onegravity/rteditor/api/format/RTHtml;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/api/format/RTEditable;->a()V

    new-instance p1, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;

    invoke-direct {p1}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;-><init>()V

    iget-object p0, p0, Lcom/onegravity/rteditor/api/format/RTEditable;->c:Lcom/onegravity/rteditor/RTEditText;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    sget-object v0, Lcom/onegravity/rteditor/api/format/RTFormat;->HTML:Lcom/onegravity/rteditor/api/format/RTFormat$Html;

    invoke-virtual {p1, p0, v0}, Lcom/onegravity/rteditor/converter/ConverterSpannedToHtml;->convert(Landroid/text/Spanned;Lcom/onegravity/rteditor/api/format/RTFormat$Html;)Lcom/onegravity/rteditor/api/format/RTHtml;

    move-result-object p0

    sget-object p1, Lcom/onegravity/rteditor/api/format/RTFormat;->PLAIN_TEXT:Lcom/onegravity/rteditor/api/format/RTFormat$PlainText;

    invoke-virtual {p0, p1, p2}, Lcom/onegravity/rteditor/api/format/RTHtml;->convertTo(Lcom/onegravity/rteditor/api/format/RTFormat;Lcom/onegravity/rteditor/api/RTMediaFactory;)Lcom/onegravity/rteditor/api/format/RTText;

    move-result-object p0

    new-instance p1, Lcom/onegravity/rteditor/api/format/RTPlainText;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/api/format/RTText;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/onegravity/rteditor/api/format/RTPlainText;-><init>(Ljava/lang/CharSequence;)V

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/onegravity/rteditor/api/format/RTText;->convertTo(Lcom/onegravity/rteditor/api/format/RTFormat;Lcom/onegravity/rteditor/api/RTMediaFactory;)Lcom/onegravity/rteditor/api/format/RTText;

    move-result-object p0

    return-object p0
.end method

.method public setCleanComposing(Z)Lcom/onegravity/rteditor/api/format/RTEditable;
    .locals 0

    iput-boolean p1, p0, Lcom/onegravity/rteditor/api/format/RTEditable;->d:Z

    return-object p0
.end method
