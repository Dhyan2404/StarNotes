.class public Lcom/onegravity/rteditor/spans/IndentationSpan;
.super Landroid/text/style/LeadingMarginSpan$Standard;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/spans/RTSpan;
.implements Lcom/onegravity/rteditor/spans/RTParagraphSpan;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/LeadingMarginSpan$Standard;",
        "Lcom/onegravity/rteditor/spans/RTSpan<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/onegravity/rteditor/spans/RTParagraphSpan<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIgnoreSpan:Z

.field private final mIndentation:I


# direct methods
.method private constructor <init>(IZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    .line 5
    iput p1, p0, Lcom/onegravity/rteditor/spans/IndentationSpan;->mIndentation:I

    .line 6
    iput-boolean p2, p0, Lcom/onegravity/rteditor/spans/IndentationSpan;->mIgnoreSpan:Z

    return-void
.end method

.method public constructor <init>(IZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    .line 2
    iput p1, p0, Lcom/onegravity/rteditor/spans/IndentationSpan;->mIndentation:I

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Lcom/onegravity/rteditor/spans/IndentationSpan;->mIgnoreSpan:Z

    return-void
.end method


# virtual methods
.method public createClone()Lcom/onegravity/rteditor/spans/IndentationSpan;
    .locals 2

    .line 2
    new-instance v0, Lcom/onegravity/rteditor/spans/IndentationSpan;

    iget v1, p0, Lcom/onegravity/rteditor/spans/IndentationSpan;->mIndentation:I

    iget-boolean p0, p0, Lcom/onegravity/rteditor/spans/IndentationSpan;->mIgnoreSpan:Z

    invoke-direct {v0, v1, p0}, Lcom/onegravity/rteditor/spans/IndentationSpan;-><init>(IZ)V

    return-object v0
.end method

.method public bridge synthetic createClone()Lcom/onegravity/rteditor/spans/RTParagraphSpan;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/IndentationSpan;->createClone()Lcom/onegravity/rteditor/spans/IndentationSpan;

    move-result-object p0

    return-object p0
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    iget-boolean p1, p0, Lcom/onegravity/rteditor/spans/IndentationSpan;->mIgnoreSpan:Z

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/onegravity/rteditor/spans/IndentationSpan;->mIndentation:I

    :goto_0
    return p0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 0

    .line 2
    iget p0, p0, Lcom/onegravity/rteditor/spans/IndentationSpan;->mIndentation:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/IndentationSpan;->getValue()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
