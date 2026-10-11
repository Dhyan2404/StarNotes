.class public Lorg/apache/xerces/impl/xpath/XPath$NodeTest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xpath/XPath;
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
.field public final name:Lorg/apache/xerces/xni/QName;

.field public final type:S


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    const/4 v1, 0x4

    iput-short v1, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0, p0, p2}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/impl/xpath/XPath$NodeTest;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-short v1, p1, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    iput-short v1, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    iget-object p0, p1, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/QName;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    const/4 v1, 0x1

    iput-short v1, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    invoke-virtual {v0, p1}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iput-short p1, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;-><init>(Lorg/apache/xerces/impl/xpath/XPath$NodeTest;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-short v0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

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
    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const-string v1, ":*"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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
    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const/16 v1, 0x3a

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    iget-object p0, p0, Lorg/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    return-object p0
.end method
