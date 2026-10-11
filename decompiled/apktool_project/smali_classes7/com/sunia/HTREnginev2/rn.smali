.class public abstract Lcom/sunia/HTREnginev2/rn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/text/Spanned;IIF)F
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/rn;->b(Landroid/text/Spanned;II)I

    move-result p0

    if-ltz p0, :cond_0

    const-class p2, Lcom/onegravity/rteditor/spans/AbsoluteSizeSpan;

    invoke-interface {p1, p0, p0, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/onegravity/rteditor/spans/AbsoluteSizeSpan;

    array-length p1, p0

    if-lez p1, :cond_0

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/AbsoluteSizeSpan;->getValue()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    return p4
.end method

.method public final b(Landroid/text/Spanned;II)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/rn;->c(C)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final c(C)Z
    .locals 0

    const/16 p0, 0x200b

    if-eq p1, p0, :cond_0

    const p0, 0xffef

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
