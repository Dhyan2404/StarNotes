.class public Lcom/onyx/engine/sdk/SelectionRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field positionEnd:Lcom/onyx/engine/sdk/VisiblePosition;

.field positionStart:Lcom/onyx/engine/sdk/VisiblePosition;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/SelectionRange;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/SelectionRange;

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/SelectionRange;

    return-object p0
.end method


# virtual methods
.method public getEndOffset()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SelectionRange;->positionEnd:Lcom/onyx/engine/sdk/VisiblePosition;

    iget p0, p0, Lcom/onyx/engine/sdk/VisiblePosition;->offset:I

    return p0
.end method

.method public getPositionEnd()Lcom/onyx/engine/sdk/VisiblePosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SelectionRange;->positionEnd:Lcom/onyx/engine/sdk/VisiblePosition;

    return-object p0
.end method

.method public getPositionStart()Lcom/onyx/engine/sdk/VisiblePosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SelectionRange;->positionStart:Lcom/onyx/engine/sdk/VisiblePosition;

    return-object p0
.end method

.method public getStartOffset()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/SelectionRange;->positionStart:Lcom/onyx/engine/sdk/VisiblePosition;

    iget p0, p0, Lcom/onyx/engine/sdk/VisiblePosition;->offset:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/engine/sdk/SelectionRange;->positionStart:Lcom/onyx/engine/sdk/VisiblePosition;

    iget-object v1, v0, Lcom/onyx/engine/sdk/VisiblePosition;->text:Ljava/lang/String;

    iget v0, v0, Lcom/onyx/engine/sdk/VisiblePosition;->offset:I

    iget-object p0, p0, Lcom/onyx/engine/sdk/SelectionRange;->positionEnd:Lcom/onyx/engine/sdk/VisiblePosition;

    iget p0, p0, Lcom/onyx/engine/sdk/VisiblePosition;->offset:I

    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setPositionEnd(Lcom/onyx/engine/sdk/VisiblePosition;)Lcom/onyx/engine/sdk/SelectionRange;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SelectionRange;->positionEnd:Lcom/onyx/engine/sdk/VisiblePosition;

    return-object p0
.end method

.method public setPositionStart(Lcom/onyx/engine/sdk/VisiblePosition;)Lcom/onyx/engine/sdk/SelectionRange;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/SelectionRange;->positionStart:Lcom/onyx/engine/sdk/VisiblePosition;

    return-object p0
.end method
