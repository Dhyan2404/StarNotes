.class public Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/onegravity/rteditor/converter/ParagraphType;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/converter/ParagraphType;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->a:Lcom/onegravity/rteditor/converter/ParagraphType;

    iput p2, p0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->b:I

    iput p3, p0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->c:I

    return-void
.end method


# virtual methods
.method public getAbsoluteIndent()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->b:I

    return p0
.end method

.method public getRelativeIndent()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->c:I

    return p0
.end method

.method public getType()Lcom/onegravity/rteditor/converter/ParagraphType;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->a:Lcom/onegravity/rteditor/converter/ParagraphType;

    return-object p0
.end method

.method public setAbsoluteIndent(I)V
    .locals 0

    iput p1, p0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->b:I

    return-void
.end method

.method public setRelativeIndent(I)V
    .locals 0

    iput p1, p0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->a:Lcom/onegravity/rteditor/converter/ParagraphType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onegravity/rteditor/converter/AccumulatedParagraphStyle;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
