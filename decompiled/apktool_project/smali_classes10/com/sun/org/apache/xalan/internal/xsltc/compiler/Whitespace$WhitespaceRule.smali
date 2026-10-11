.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WhitespaceRule"
.end annotation


# instance fields
.field private final _action:I

.field private _element:Ljava/lang/String;

.field private _namespace:Ljava/lang/String;

.field private _priority:I

.field private _type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_action:I

    const/16 p1, 0x3a

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const-string v0, ""

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_namespace:Ljava/lang/String;

    add-int/2addr p1, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_element:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_element:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x2

    shl-int/lit8 p2, p3, 0x2

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_priority:I

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_element:Ljava/lang/String;

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_namespace:Ljava/lang/String;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x3

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_type:I

    iget p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_priority:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_priority:I

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_type:I

    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_priority:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_priority:I

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_type:I

    :goto_1
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;)I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_priority:I

    iget p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_priority:I

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAction()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_action:I

    return p0
.end method

.method public getElement()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_element:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_namespace:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_priority:I

    return p0
.end method

.method public getStrength()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Whitespace$WhitespaceRule;->_type:I

    return p0
.end method
