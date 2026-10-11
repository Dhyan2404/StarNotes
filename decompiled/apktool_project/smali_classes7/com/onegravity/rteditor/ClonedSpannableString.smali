.class public Lcom/onegravity/rteditor/ClonedSpannableString;
.super Landroid/text/SpannableString;
.source "SourceFile"


# static fields
.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3


# instance fields
.field public e:[Ljava/lang/Object;

.field public f:[I

.field public g:I


# direct methods
.method public constructor <init>(Landroid/text/Spanned;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/ClonedSpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/onegravity/rteditor/ClonedSpannableString;->a(Ljava/lang/CharSequence;II)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;II)V
    .locals 7

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->e:[Ljava/lang/Object;

    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->f:[I

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/text/Spanned;

    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    instance-of v4, v3, Landroid/text/style/CharacterStyle;

    if-nez v4, :cond_0

    instance-of v4, v3, Landroid/text/style/ParagraphStyle;

    if-eqz v4, :cond_3

    :cond_0
    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-ge v4, p2, :cond_1

    move v4, p2

    :cond_1
    if-le v5, p3, :cond_2

    move v5, p3

    :cond_2
    sub-int/2addr v4, p2

    sub-int/2addr v5, p2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/onegravity/rteditor/ClonedSpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->g:I

    iget-object v1, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->e:[Ljava/lang/Object;

    iget-object p0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->f:[I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->g:I

    iget-object v1, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->e:[Ljava/lang/Object;

    iget-object p0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->f:[I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 3

    iget v0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->g:I

    iget-object v1, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->e:[Ljava/lang/Object;

    iget-object p0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->f:[I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x0

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    iget v0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->g:I

    iget-object v1, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->e:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->f:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v3

    move v7, v6

    move-object v5, v4

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v0, :cond_a

    if-eqz p3, :cond_0

    aget-object v9, v1, v6

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_4

    :cond_0
    mul-int/lit8 v9, v6, 0x3

    add-int/lit8 v10, v9, 0x0

    aget v10, v2, v10

    add-int/lit8 v11, v9, 0x1

    aget v11, v2, v11

    if-le v10, p2, :cond_1

    goto :goto_4

    :cond_1
    if-ge v11, p1, :cond_2

    goto :goto_4

    :cond_2
    if-eq v10, v11, :cond_4

    if-eq p1, p2, :cond_4

    if-ne v10, p2, :cond_3

    goto :goto_4

    :cond_3
    if-ne v11, p1, :cond_4

    goto :goto_4

    :cond_4
    if-nez v7, :cond_5

    aget-object v5, v1, v6

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    if-ne v7, v8, :cond_6

    sub-int v4, v0, v6

    add-int/2addr v4, v8

    invoke-static {p3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    :cond_6
    add-int/lit8 v9, v9, 0x2

    aget v8, v2, v9

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    move v10, v3

    :goto_2
    if-ge v10, v7, :cond_8

    aget-object v11, v4, v10

    invoke-virtual {p0, v11}, Lcom/onegravity/rteditor/ClonedSpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v11

    and-int/2addr v11, v9

    if-le v8, v11, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v8, v10, 0x1

    sub-int v9, v7, v10

    invoke-static {v4, v10, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v8, v1, v6

    aput-object v8, v4, v10

    goto :goto_1

    :cond_9
    add-int/lit8 v8, v7, 0x1

    aget-object v9, v1, v6

    aput-object v9, v4, v7

    move v7, v8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_a
    if-nez v7, :cond_b

    invoke-static {p3, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_b
    if-ne v7, v8, :cond_c

    invoke-static {p3, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    aput-object v5, p0, v3

    return-object p0

    :cond_c
    array-length p0, v4

    if-ne v7, p0, :cond_d

    return-object v4

    :cond_d
    invoke-static {p3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v4, v3, p0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 6

    iget v0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->g:I

    iget-object v1, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->e:[Ljava/lang/Object;

    iget-object p0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->f:[I

    if-nez p3, :cond_0

    const-class p3, Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    mul-int/lit8 v3, v2, 0x3

    add-int/lit8 v4, v3, 0x0

    aget v4, p0, v4

    add-int/lit8 v3, v3, 0x1

    aget v3, p0, v3

    if-le v4, p1, :cond_1

    if-ge v4, p2, :cond_1

    aget-object v5, v1, v2

    invoke-virtual {p3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move p2, v4

    :cond_1
    if-le v3, p1, :cond_2

    if-ge v3, p2, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {p3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move p2, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return p2
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->g:I

    iget-object v1, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->e:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->f:[I

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_1

    aget-object v4, v1, v3

    if-ne v4, p1, :cond_0

    add-int/lit8 p1, v3, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v2, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->g:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 5

    iget v0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->g:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->e:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v1, v3, :cond_0

    add-int/lit8 v1, v0, 0xa

    new-array v3, v1, [Ljava/lang/Object;

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [I

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->f:[I

    iget v2, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->g:I

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->e:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->f:[I

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->e:[Ljava/lang/Object;

    iget v1, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->g:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->f:[I

    mul-int/lit8 v0, v1, 0x3

    add-int/2addr v0, v4

    aput p2, p1, v0

    mul-int/lit8 p2, v1, 0x3

    add-int/lit8 p2, p2, 0x1

    aput p3, p1, p2

    mul-int/lit8 p2, v1, 0x3

    add-int/lit8 p2, p2, 0x2

    aput p4, p1, p2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/onegravity/rteditor/ClonedSpannableString;->g:I

    return-void
.end method
