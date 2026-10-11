.class public Lcom/onegravity/rteditor/utils/Selection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x74c9f59ad2de7db0L


# instance fields
.field private mEnd:I

.field private mStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/onegravity/rteditor/utils/Selection;->mStart:I

    .line 3
    iput p2, p0, Lcom/onegravity/rteditor/utils/Selection;->mEnd:I

    if-le p1, p2, :cond_0

    .line 4
    iput p1, p0, Lcom/onegravity/rteditor/utils/Selection;->mEnd:I

    .line 5
    iput p2, p0, Lcom/onegravity/rteditor/utils/Selection;->mStart:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/onegravity/rteditor/utils/Selection;-><init>(II)V

    return-void
.end method


# virtual methods
.method public end()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/utils/Selection;->mEnd:I

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/onegravity/rteditor/utils/Selection;->mStart:I

    iget p0, p0, Lcom/onegravity/rteditor/utils/Selection;->mEnd:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public offset(II)Lcom/onegravity/rteditor/utils/Selection;
    .locals 1

    iget v0, p0, Lcom/onegravity/rteditor/utils/Selection;->mStart:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/onegravity/rteditor/utils/Selection;->mStart:I

    iget p1, p0, Lcom/onegravity/rteditor/utils/Selection;->mEnd:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/onegravity/rteditor/utils/Selection;->mEnd:I

    return-object p0
.end method

.method public start()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/utils/Selection;->mStart:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onegravity/rteditor/utils/Selection;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onegravity/rteditor/utils/Selection;->mEnd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
