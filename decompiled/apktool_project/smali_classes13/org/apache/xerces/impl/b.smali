.class public Lorg/apache/xerces/impl/b;
.super Lorg/apache/xerces/util/ErrorHandlerProxy;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lorg/apache/xerces/impl/XMLErrorReporter;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/XMLErrorReporter;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/util/ErrorHandlerProxy;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/b;->e:Lorg/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method


# virtual methods
.method public getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/b;->e:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLErrorReporter;->fErrorHandler:Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    return-object p0
.end method
