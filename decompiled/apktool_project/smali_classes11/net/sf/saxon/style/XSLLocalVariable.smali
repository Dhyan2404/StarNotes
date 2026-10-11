.class public Lnet/sf/saxon/style/XSLLocalVariable;
.super Lnet/sf/saxon/style/XSLGeneralVariable;
.source "SourceFile"


# static fields
.field public static final u:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lnet/sf/saxon/style/SourceBinding$BindingProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->SELECT:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    sget-object v1, Lnet/sf/saxon/style/SourceBinding$BindingProperty;->AS:Lnet/sf/saxon/style/SourceBinding$BindingProperty;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/style/XSLLocalVariable;->u:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLGeneralVariable;-><init>()V

    return-void
.end method


# virtual methods
.method public compileLocalVariable(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/style/SourceBinding;->handleSequenceConstructor(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)V

    return-void
.end method

.method public fixupReferences()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/style/SourceBinding;->fixupReferences(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V

    invoke-super {p0}, Lnet/sf/saxon/style/StyleElement;->fixupReferences()V

    return-void
.end method

.method public getBindingInformation(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/style/SourceBinding;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    invoke-virtual {v0}, Lnet/sf/saxon/style/SourceBinding;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequiredType()Lnet/sf/saxon/value/SequenceType;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->getInferredType(Z)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public isInstruction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public prepareAttributes()V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/style/XSLGeneralVariable;->sourceBinding:Lnet/sf/saxon/style/SourceBinding;

    sget-object v0, Lnet/sf/saxon/style/XSLLocalVariable;->u:Ljava/util/EnumSet;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/SourceBinding;->prepareAttributes(Ljava/util/EnumSet;)V

    return-void
.end method
