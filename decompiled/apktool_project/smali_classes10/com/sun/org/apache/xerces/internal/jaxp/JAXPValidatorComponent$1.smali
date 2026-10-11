.class Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$1;
.super Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;-><init>(Ljavax/xml/validation/ValidatorHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$1;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$1;->this$0:Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;->access$200(Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;)Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$DraconianErrorHandler;->getInstance()Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent$DraconianErrorHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    return-object p0
.end method
