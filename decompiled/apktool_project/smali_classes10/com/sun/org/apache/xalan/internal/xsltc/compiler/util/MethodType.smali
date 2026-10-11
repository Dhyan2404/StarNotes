.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
.source "SourceFile"


# instance fields
.field private final _argsType:Ljava/util/Vector;

.field private final _resultType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_resultType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;-><init>()V

    .line 5
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    if-eq p2, v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    .line 7
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    .line 9
    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_resultType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    .line 12
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 14
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_resultType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    .line 17
    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0, p4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 20
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_resultType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Ljava/util/Vector;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_resultType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    .line 23
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public argsCount()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public argsType()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    return-object p0
.end method

.method public distanceTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)I
    .locals 7

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    const v1, 0x7fffffff

    if-eqz v0, :cond_3

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v3, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object v5, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->distanceTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)I

    move-result v6

    if-ne v6, v1, :cond_0

    move v1, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->distanceTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    if-nez p0, :cond_3

    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z
    .locals 4

    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_resultType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_resultType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->argsCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->argsCount()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    iget-object v3, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->identicalTo(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public resultType()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_resultType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method

.method public toJCType()Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public toSignature()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->toSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_resultType:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->toSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "method{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;->_argsType:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "void"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
