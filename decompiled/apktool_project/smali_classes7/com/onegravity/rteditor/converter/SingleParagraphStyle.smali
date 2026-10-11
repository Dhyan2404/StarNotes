.class public Lcom/onegravity/rteditor/converter/SingleParagraphStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/ParagraphStyle;


# instance fields
.field public final e:Lcom/onegravity/rteditor/converter/ParagraphType;

.field public final f:Landroid/text/style/ParagraphStyle;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/converter/ParagraphType;Landroid/text/style/ParagraphStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->e:Lcom/onegravity/rteditor/converter/ParagraphType;

    iput-object p2, p0, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->f:Landroid/text/style/ParagraphStyle;

    return-void
.end method


# virtual methods
.method public getIndentation()I
    .locals 1

    iget-object v0, p0, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->e:Lcom/onegravity/rteditor/converter/ParagraphType;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/ParagraphType;->isIndentation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onegravity/rteditor/utils/Helper;->getLeadingMarging()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->f:Landroid/text/style/ParagraphStyle;

    check-cast p0, Lcom/onegravity/rteditor/spans/IndentationSpan;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/IndentationSpan;->getValue()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->e:Lcom/onegravity/rteditor/converter/ParagraphType;

    invoke-virtual {v0}, Lcom/onegravity/rteditor/converter/ParagraphType;->isBullet()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->e:Lcom/onegravity/rteditor/converter/ParagraphType;

    invoke-virtual {p0}, Lcom/onegravity/rteditor/converter/ParagraphType;->isNumbering()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public getStyle()Landroid/text/style/ParagraphStyle;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->f:Landroid/text/style/ParagraphStyle;

    return-object p0
.end method

.method public getType()Lcom/onegravity/rteditor/converter/ParagraphType;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->e:Lcom/onegravity/rteditor/converter/ParagraphType;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->e:Lcom/onegravity/rteditor/converter/ParagraphType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/SingleParagraphStyle;->f:Landroid/text/style/ParagraphStyle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
