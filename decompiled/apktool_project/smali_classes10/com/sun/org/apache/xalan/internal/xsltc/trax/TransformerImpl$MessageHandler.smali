.class Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl$MessageHandler;
.super Lcom/sun/org/apache/xalan/internal/xsltc/runtime/MessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageHandler"
.end annotation


# instance fields
.field private _errorListener:Ljavax/xml/transform/ErrorListener;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/ErrorListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/MessageHandler;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl$MessageHandler;->_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void
.end method


# virtual methods
.method public displayMessage(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl$MessageHandler;->_errorListener:Ljavax/xml/transform/ErrorListener;

    if-nez p0, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
