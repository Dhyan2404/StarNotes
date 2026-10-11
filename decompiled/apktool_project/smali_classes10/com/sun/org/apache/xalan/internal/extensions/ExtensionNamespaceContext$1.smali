.class Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext;->getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private isFirstIteration:Z

.field final synthetic this$0:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext$1;->this$0:Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext$1;->isFirstIteration:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext$1;->isFirstIteration:Z

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext$1;->isFirstIteration:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext$1;->isFirstIteration:Z

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/extensions/ExtensionNamespaceContext$1;->val$result:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
