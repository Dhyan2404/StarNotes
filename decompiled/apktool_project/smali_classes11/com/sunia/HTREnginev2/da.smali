.class public final synthetic Lcom/sunia/HTREnginev2/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ContextMappingFunction;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/regex/RegexIterator;

.field public final synthetic b:Lnet/sf/saxon/expr/Expression;

.field public final synthetic c:Lnet/sf/saxon/expr/XPathContextMajor;

.field public final synthetic d:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/regex/RegexIterator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/da;->a:Lnet/sf/saxon/regex/RegexIterator;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/da;->b:Lnet/sf/saxon/expr/Expression;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/da;->c:Lnet/sf/saxon/expr/XPathContextMajor;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/da;->d:Lnet/sf/saxon/expr/Expression;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/da;->a:Lnet/sf/saxon/regex/RegexIterator;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/da;->b:Lnet/sf/saxon/expr/Expression;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/da;->c:Lnet/sf/saxon/expr/XPathContextMajor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/da;->d:Lnet/sf/saxon/expr/Expression;

    invoke-static {v0, v1, v2, p0, p1}, Lnet/sf/saxon/expr/instruct/AnalyzeString;->d(Lnet/sf/saxon/regex/RegexIterator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContextMajor;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
