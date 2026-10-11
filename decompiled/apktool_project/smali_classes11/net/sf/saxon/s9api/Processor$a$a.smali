.class public Lnet/sf/saxon/s9api/Processor$a$a;
.super Lnet/sf/saxon/lib/ExtensionFunctionCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/s9api/Processor$a;->makeCallExpression()Lnet/sf/saxon/lib/ExtensionFunctionCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lnet/sf/saxon/s9api/Processor$a;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Processor$a;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/Processor$a$a;->f:Lnet/sf/saxon/s9api/Processor$a;

    invoke-direct {p0}, Lnet/sf/saxon/lib/ExtensionFunctionCall;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length p1, p2

    new-array v0, p1, [Lnet/sf/saxon/s9api/XdmValue;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/Processor$a$a;->f:Lnet/sf/saxon/s9api/Processor$a;

    invoke-static {p0}, Lnet/sf/saxon/s9api/Processor$a;->a(Lnet/sf/saxon/s9api/Processor$a;)Lnet/sf/saxon/s9api/ExtensionFunction;

    move-result-object p0

    invoke-interface {p0, v0}, Lnet/sf/saxon/s9api/ExtensionFunction;->call([Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
