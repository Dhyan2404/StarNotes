.class Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter$1;
.super Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getSAXErrorHandler()Lorg/xml/sax/ErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter$1;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorHandler()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter$1;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->fErrorHandler:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    return-object p0
.end method
