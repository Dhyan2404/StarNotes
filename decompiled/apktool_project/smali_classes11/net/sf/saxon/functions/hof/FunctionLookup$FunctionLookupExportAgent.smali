.class public Lnet/sf/saxon/functions/hof/FunctionLookup$FunctionLookupExportAgent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ExportAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/hof/FunctionLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionLookupExportAgent"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/value/QNameValue;

.field public final f:Lnet/sf/saxon/value/IntegerValue;

.field public final g:Lnet/sf/saxon/functions/hof/FunctionLookup;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/functions/hof/FunctionLookup;Lnet/sf/saxon/value/QNameValue;Lnet/sf/saxon/value/IntegerValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lnet/sf/saxon/functions/hof/FunctionLookup$FunctionLookupExportAgent;->f:Lnet/sf/saxon/value/IntegerValue;

    iput-object p2, p0, Lnet/sf/saxon/functions/hof/FunctionLookup$FunctionLookupExportAgent;->e:Lnet/sf/saxon/value/QNameValue;

    iput-object p1, p0, Lnet/sf/saxon/functions/hof/FunctionLookup$FunctionLookupExportAgent;->g:Lnet/sf/saxon/functions/hof/FunctionLookup;

    return-void
.end method


# virtual methods
.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/functions/hof/FunctionLookup$FunctionLookupExportAgent;->g:Lnet/sf/saxon/functions/hof/FunctionLookup;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/sf/saxon/expr/Expression;

    iget-object v2, p0, Lnet/sf/saxon/functions/hof/FunctionLookup$FunctionLookupExportAgent;->e:Lnet/sf/saxon/value/QNameValue;

    invoke-static {v2}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lnet/sf/saxon/functions/hof/FunctionLookup$FunctionLookupExportAgent;->f:Lnet/sf/saxon/value/IntegerValue;

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lnet/sf/saxon/functions/hof/FunctionLookup;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    return-void
.end method
