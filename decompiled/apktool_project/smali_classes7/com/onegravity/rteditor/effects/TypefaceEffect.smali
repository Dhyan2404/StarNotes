.class public Lcom/onegravity/rteditor/effects/TypefaceEffect;
.super Lcom/sunia/HTREnginev2/brd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/brd<",
        "Lcom/onegravity/rteditor/fonts/RTTypeface;",
        "Lcom/onegravity/rteditor/spans/TypefaceSpan;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/brd;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyToSelection(Lcom/onegravity/rteditor/RTEditText;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sunia/HTREnginev2/brd;->applyToSelection(Lcom/onegravity/rteditor/RTEditText;Ljava/lang/Object;)V

    return-void
.end method

.method public newSpan(Lcom/onegravity/rteditor/fonts/RTTypeface;)Lcom/onegravity/rteditor/spans/RTSpan;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/fonts/RTTypeface;",
            ")",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "Lcom/onegravity/rteditor/fonts/RTTypeface;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lcom/onegravity/rteditor/spans/TypefaceSpan;

    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/spans/TypefaceSpan;-><init>(Lcom/onegravity/rteditor/fonts/RTTypeface;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic newSpan(Ljava/lang/Object;)Lcom/onegravity/rteditor/spans/RTSpan;
    .locals 0

    .line 1
    check-cast p1, Lcom/onegravity/rteditor/fonts/RTTypeface;

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/effects/TypefaceEffect;->newSpan(Lcom/onegravity/rteditor/fonts/RTTypeface;)Lcom/onegravity/rteditor/spans/RTSpan;

    move-result-object p0

    return-object p0
.end method
