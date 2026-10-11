.class public Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap$DTMException;
.super Lorg/w3c/dom/DOMException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DTMException"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x730cd7a4dcdecc2eL


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;S)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap$DTMException;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;

    const-string p1, ""

    .line 4
    invoke-direct {p0, p2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;SLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap$DTMException;->this$0:Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNamedNodeMap;

    .line 2
    invoke-direct {p0, p2, p3}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-void
.end method
