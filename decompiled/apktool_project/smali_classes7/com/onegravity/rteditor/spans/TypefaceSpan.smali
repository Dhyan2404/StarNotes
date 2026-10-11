.class public Lcom/onegravity/rteditor/spans/TypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/spans/RTSpan;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TypefaceSpan;",
        "Lcom/onegravity/rteditor/spans/RTSpan<",
        "Lcom/onegravity/rteditor/fonts/RTTypeface;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTypeface:Lcom/onegravity/rteditor/fonts/RTTypeface;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/fonts/RTTypeface;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/spans/TypefaceSpan;->mTypeface:Lcom/onegravity/rteditor/fonts/RTTypeface;

    return-void
.end method

.method private applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result p0

    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    not-int v0, v0

    and-int/2addr p0, v0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_1
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/high16 p0, -0x41800000    # -0.25f

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_2
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public getValue()Lcom/onegravity/rteditor/fonts/RTTypeface;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/onegravity/rteditor/spans/TypefaceSpan;->mTypeface:Lcom/onegravity/rteditor/fonts/RTTypeface;

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/TypefaceSpan;->getValue()Lcom/onegravity/rteditor/fonts/RTTypeface;

    move-result-object p0

    return-object p0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/spans/TypefaceSpan;->mTypeface:Lcom/onegravity/rteditor/fonts/RTTypeface;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/fonts/RTTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/onegravity/rteditor/spans/TypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/spans/TypefaceSpan;->mTypeface:Lcom/onegravity/rteditor/fonts/RTTypeface;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/fonts/RTTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/onegravity/rteditor/spans/TypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method
