.class public final Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
.super Lorg/xml/sax/SAXException;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0xc328a3322b9870dL


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Translet error"

    .line 1
    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    return-void
.end method
