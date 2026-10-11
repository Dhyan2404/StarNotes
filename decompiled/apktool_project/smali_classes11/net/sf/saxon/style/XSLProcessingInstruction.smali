.class public Lnet/sf/saxon/style/XSLProcessingInstruction;
.super Lnet/sf/saxon/style/XSLLeafNodeConstructor;
.source "SourceFile"


# instance fields
.field public u:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;

    iget-object v1, p0, Lnet/sf/saxon/style/XSLProcessingInstruction;->u:Lnet/sf/saxon/expr/Expression;

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/instruct/ProcessingInstruction;-><init>(Lnet/sf/saxon/expr/Expression;)V

    new-instance v1, Lnet/sf/saxon/expr/StringLiteral;

    sget-object v2, Lnet/sf/saxon/value/StringValue;->SINGLE_SPACE:Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, v2}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->compileContent(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;Lnet/sf/saxon/expr/instruct/SimpleNodeConstructor;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public getErrorCodeForSelectPlusContent()Ljava/lang/String;
    .locals 0

    const-string p0, "XTSE0880"

    return-object p0
.end method

.method public prepareAttributes()V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->prepareAttributesNameAndSelect()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLProcessingInstruction;->u:Lnet/sf/saxon/expr/Expression;

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "name"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLProcessingInstruction;->u:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLProcessingInstruction;->u:Lnet/sf/saxon/expr/Expression;

    const-string v0, "select"

    iget-object v1, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/style/StyleElement;->typeCheck(Ljava/lang/String;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->select:Lnet/sf/saxon/expr/Expression;

    invoke-super {p0, p1}, Lnet/sf/saxon/style/XSLLeafNodeConstructor;->validate(Lnet/sf/saxon/style/ComponentDeclaration;)V

    return-void
.end method
