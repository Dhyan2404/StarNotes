.class public Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/engine/sdk/ReaderTextStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageMargin"
.end annotation


# instance fields
.field private bottomMargin:F

.field private leftMargin:F

.field private rightMargin:F

.field private topMargin:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 2
    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->leftMargin:F

    .line 3
    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->topMargin:F

    .line 4
    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->rightMargin:F

    .line 5
    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->bottomMargin:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->leftMargin:F

    .line 8
    iput p2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->rightMargin:F

    .line 9
    iput p3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->topMargin:F

    .line 10
    iput p4, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->bottomMargin:F

    return-void
.end method

.method public static synthetic access$000(Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;)F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->leftMargin:F

    return p0
.end method

.method public static synthetic access$100(Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;)F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->topMargin:F

    return p0
.end method

.method public static synthetic access$200(Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;)F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->rightMargin:F

    return p0
.end method

.method public static synthetic access$300(Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;)F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->bottomMargin:F

    return p0
.end method


# virtual methods
.method public copy(Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->leftMargin:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->leftMargin:F

    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->topMargin:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->topMargin:F

    iget v0, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->rightMargin:F

    iput v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->rightMargin:F

    iget p1, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->bottomMargin:F

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->bottomMargin:F

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->leftMargin:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->leftMargin:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->topMargin:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->topMargin:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->rightMargin:F

    iget v3, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->rightMargin:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget p1, p1, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->bottomMargin:F

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->bottomMargin:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBottomMargin()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->bottomMargin:F

    return p0
.end method

.method public getLeftMargin()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->leftMargin:F

    return p0
.end method

.method public getRightMargin()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->rightMargin:F

    return p0
.end method

.method public getTopMargin()F
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->topMargin:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->leftMargin:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->topMargin:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->rightMargin:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget p0, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->bottomMargin:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setBottomMargin(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->bottomMargin:F

    return-void
.end method

.method public setLeftMargin(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->leftMargin:F

    return-void
.end method

.method public setRightMargin(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->rightMargin:F

    return-void
.end method

.method public setTopMargin(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/ReaderTextStyle$PageMargin;->topMargin:F

    return-void
.end method
