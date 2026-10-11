.class public Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeTest"
.end annotation


# static fields
.field public static final NAMESPACE:S = 0x4s

.field public static final NODE:S = 0x3s

.field public static final QNAME:S = 0x1s

.field public static final WILDCARD:S = 0x2s


# instance fields
.field public final name:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field public type:S


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 14
    iget-short v1, p1, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->type:S

    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->type:S

    .line 15
    iget-object p0, p1, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v1, 0x1

    .line 6
    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->type:S

    .line 7
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 v1, 0x4

    .line 10
    iput-short v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->type:S

    const/4 p0, 0x0

    .line 11
    invoke-virtual {v0, p1, p0, p0, p2}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    .line 3
    iput-short p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->type:S

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;-><init>(Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-short v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->type:S

    const/4 v1, 0x1

    const/16 v2, 0x7d

    const-string v3, "{"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p0, "???"

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    const-string v1, ":*"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "???:*"

    return-object p0

    :cond_3
    const-string p0, "node()"

    return-object p0

    :cond_4
    const-string p0, "*"

    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    const/16 v1, 0x3a

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/XPath$NodeTest;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    return-object p0
.end method
