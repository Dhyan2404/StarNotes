.class public final Lnet/sf/saxon/style/XSLOnNonEmpty;
.super Lnet/sf/saxon/style/XSLSequence;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/style/XSLSequence;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/style/XSLSequence;->compile(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/style/ComponentDeclaration;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/expr/instruct/OnNonEmptyExpr;

    invoke-direct {p1, p0}, Lnet/sf/saxon/expr/instruct/OnNonEmptyExpr;-><init>(Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method
