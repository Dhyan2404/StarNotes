.class public final synthetic Lcom/sunia/HTREnginev2/bmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bmo;->a:Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bmo;->a:Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;->a(Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;I)Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext$PathContext;

    move-result-object p0

    return-object p0
.end method
