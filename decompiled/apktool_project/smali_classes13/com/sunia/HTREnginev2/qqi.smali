.class public Lcom/sunia/HTREnginev2/qqi;
.super Lorg/apache/xerces/util/ErrorHandlerProxy;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/sqi;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/sqi;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/util/ErrorHandlerProxy;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qqi;->e:Lcom/sunia/HTREnginev2/sqi;

    return-void
.end method


# virtual methods
.method public getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qqi;->e:Lcom/sunia/HTREnginev2/sqi;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/sqi;->q(Lcom/sunia/HTREnginev2/sqi;)Lorg/apache/xerces/impl/XMLErrorReporter;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    invoke-static {}, Lcom/sunia/HTREnginev2/sqi$a;->a()Lcom/sunia/HTREnginev2/sqi$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    return-object p0
.end method
