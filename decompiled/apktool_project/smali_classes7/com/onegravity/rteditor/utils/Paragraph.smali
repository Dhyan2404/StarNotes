.class public Lcom/onegravity/rteditor/utils/Paragraph;
.super Lcom/onegravity/rteditor/utils/Selection;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x2259c5fa8920d782L


# instance fields
.field private final mIsFirst:Z

.field private final mIsLast:Z


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onegravity/rteditor/utils/Selection;-><init>(II)V

    iput-boolean p3, p0, Lcom/onegravity/rteditor/utils/Paragraph;->mIsFirst:Z

    iput-boolean p4, p0, Lcom/onegravity/rteditor/utils/Paragraph;->mIsLast:Z

    return-void
.end method


# virtual methods
.method public isFirst()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/utils/Paragraph;->mIsFirst:Z

    return p0
.end method

.method public isLast()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/utils/Paragraph;->mIsLast:Z

    return p0
.end method

.method public isSelected(Lcom/onegravity/rteditor/utils/Selection;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/onegravity/rteditor/utils/Selection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v3

    if-lt v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v3

    if-ge v1, v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v3

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v4

    if-lt v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result p1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result v3

    if-gt p1, v3, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lcom/onegravity/rteditor/utils/Paragraph;->mIsLast:Z

    if-eqz p0, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v1

    invoke-virtual {p1}, Lcom/onegravity/rteditor/utils/Selection;->start()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result p0

    invoke-virtual {p1}, Lcom/onegravity/rteditor/utils/Selection;->end()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-ge v1, p0, :cond_6

    move v0, v2

    :cond_6
    return v0
.end method
