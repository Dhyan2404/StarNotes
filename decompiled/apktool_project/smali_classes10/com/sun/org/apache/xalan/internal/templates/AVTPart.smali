.class public abstract Lcom/sun/org/apache/xalan/internal/templates/AVTPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/sun/org/apache/xalan/internal/templates/XSLTVisitable;


# static fields
.field static final serialVersionUID:J = -0x1841414701217379L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canTraverseOutsideSubtree()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract evaluate(Lcom/sun/org/apache/xpath/internal/XPathContext;Lcom/sun/org/apache/xml/internal/utils/FastStringBuffer;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract fixupVariables(Ljava/util/Vector;I)V
.end method

.method public abstract getSimpleString()Ljava/lang/String;
.end method

.method public setXPathSupport(Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .locals 0

    return-void
.end method
