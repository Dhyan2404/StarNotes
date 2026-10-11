.class public abstract Lnet/sf/saxon/style/XSLGeneralVariable;
.super Lnet/sf/saxon/style/StyleElement;
.source "SourceFile"


# instance fields
.field protected sourceBinding:Lnet/sf/saxon/style/SourceBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/style/StyleElement;-><init>()V

    new-instance v0, Lnet/sf/saxon/style/SourceBinding;

    invoke-direct {v0, p0}, Lnet/sf/saxon/style/SourceBinding;-><init>(Lnet/sf/saxon/style/StyleElement;)V

    iput-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    return-void
.end method


# virtual methods
.method public getObjectName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getSourceBinding()Lnet/sf/saxon/style/SourceBinding;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    return-object p0
.end method

.method public getVariableQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public isGlobal()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->isTopLevel()Z

    move-result p0

    return p0
.end method

.method public mayContainSequenceConstructor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public postValidate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->postValidate()V

    return-void
.end method

.method public validate(Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0}, Lnet/sf/saxon/style/SourceBinding;->validate()V

    return-void
.end method
