.class public Lnet/sf/saxon/type/AlphaCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/type/AlphaCode$c;,
        Lnet/sf/saxon/type/AlphaCode$b;,
        Lnet/sf/saxon/type/AlphaCode$f;,
        Lnet/sf/saxon/type/AlphaCode$d;,
        Lnet/sf/saxon/type/AlphaCode$e;
    }
.end annotation


# static fields
.field public static final synthetic a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Q{http://www.w3.org/2001/XMLSchema}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static b(Lnet/sf/saxon/type/AlphaCode$c;ZLjava/lang/StringBuilder;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->q:Lnet/sf/saxon/type/AlphaCode$c;

    if-eqz p1, :cond_1

    const-string p0, ".."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, " n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    invoke-static {p1}, Lnet/sf/saxon/type/AlphaCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->d:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p1, " c"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->d:Ljava/lang/String;

    invoke-static {p1}, Lnet/sf/saxon/type/AlphaCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->e:Z

    if-eqz p1, :cond_3

    const-string p1, "?"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->g:Lnet/sf/saxon/type/AlphaCode$c;

    const-string v0, "]"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-string p1, " k["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->g:Lnet/sf/saxon/type/AlphaCode$c;

    invoke-static {p1, v1, p2}, Lnet/sf/saxon/type/AlphaCode;->b(Lnet/sf/saxon/type/AlphaCode$c;ZLjava/lang/StringBuilder;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->h:Lnet/sf/saxon/type/AlphaCode$c;

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    const-string p1, " v["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->h:Lnet/sf/saxon/type/AlphaCode$c;

    invoke-static {p1, v2, p2}, Lnet/sf/saxon/type/AlphaCode;->b(Lnet/sf/saxon/type/AlphaCode$c;ZLjava/lang/StringBuilder;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->i:Lnet/sf/saxon/type/AlphaCode$c;

    if-eqz p1, :cond_6

    const-string p1, " r["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->i:Lnet/sf/saxon/type/AlphaCode$c;

    invoke-static {p1, v2, p2}, Lnet/sf/saxon/type/AlphaCode;->b(Lnet/sf/saxon/type/AlphaCode$c;ZLjava/lang/StringBuilder;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->j:Ljava/util/List;

    const-string v3, ","

    if-eqz p1, :cond_9

    const-string p1, " a["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v4, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/type/AlphaCode$c;

    if-eqz v4, :cond_7

    move v4, v1

    goto :goto_1

    :cond_7
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {v5, v2, p2}, Lnet/sf/saxon/type/AlphaCode;->b(Lnet/sf/saxon/type/AlphaCode$c;ZLjava/lang/StringBuilder;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->f:Ljava/util/List;

    if-eqz p1, :cond_c

    const-string p1, " m["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v4, v2

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/type/AlphaCode$c;

    if-eqz v4, :cond_a

    move v4, v1

    goto :goto_3

    :cond_a
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-static {v5, v1, p2}, Lnet/sf/saxon/type/AlphaCode;->b(Lnet/sf/saxon/type/AlphaCode$c;ZLjava/lang/StringBuilder;)V

    goto :goto_2

    :cond_b
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->k:Lnet/sf/saxon/type/AlphaCode$c;

    if-eqz p1, :cond_d

    const-string p1, " e["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->k:Lnet/sf/saxon/type/AlphaCode$c;

    invoke-static {p1, v1, p2}, Lnet/sf/saxon/type/AlphaCode;->b(Lnet/sf/saxon/type/AlphaCode$c;ZLjava/lang/StringBuilder;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->m:[Lnet/sf/saxon/type/AlphaCode$c;

    if-eqz p1, :cond_12

    iget p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->l:I

    const/16 v4, 0x17

    if-ne p1, v4, :cond_e

    const-string p1, "i"

    goto :goto_4

    :cond_e
    if-ne p1, v2, :cond_f

    const-string p1, "u"

    goto :goto_4

    :cond_f
    const-string p1, "d"

    :goto_4
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, v1

    :goto_5
    iget-object v4, p0, Lnet/sf/saxon/type/AlphaCode$c;->m:[Lnet/sf/saxon/type/AlphaCode$c;

    array-length v4, v4

    if-ge p1, v4, :cond_11

    if-eqz p1, :cond_10

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v4, p0, Lnet/sf/saxon/type/AlphaCode$c;->m:[Lnet/sf/saxon/type/AlphaCode$c;

    aget-object v4, v4, p1

    invoke-static {v4, v1, p2}, Lnet/sf/saxon/type/AlphaCode;->b(Lnet/sf/saxon/type/AlphaCode$c;ZLjava/lang/StringBuilder;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_11
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->n:Ljava/util/List;

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->p:Z

    if-eqz p1, :cond_13

    const-string p1, " F["

    goto :goto_6

    :cond_13
    const-string p1, " f["

    :goto_6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sf/saxon/type/AlphaCode$c;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v2, :cond_15

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_15
    move v2, v1

    :goto_8
    invoke-static {v4}, Lnet/sf/saxon/type/AlphaCode;->escapeNCName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/sf/saxon/type/AlphaCode$c;->o:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v4, 0x3f

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_16
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    return-void
.end method

.method public static c(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/AlphaCode$c;
    .locals 9

    new-instance v0, Lnet/sf/saxon/type/AlphaCode$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/AlphaCode$c;-><init>(Lnet/sf/saxon/type/AlphaCode$a;)V

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getBasicAlphaCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lnet/sf/saxon/type/AlphaCode$c;->b:Ljava/lang/String;

    const-string v2, "1"

    iput-object v2, v0, Lnet/sf/saxon/type/AlphaCode$c;->a:Ljava/lang/String;

    instance-of v3, p0, Lnet/sf/saxon/type/AtomicType;

    if-eqz v3, :cond_0

    move-object v3, p0

    check-cast v3, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v3}, Lnet/sf/saxon/type/AtomicType;->isBuiltInType()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Lnet/sf/saxon/type/SchemaType;->getEQName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    goto/16 :goto_6

    :cond_0
    instance-of v3, p0, Lnet/sf/saxon/type/UnionType;

    if-eqz v3, :cond_4

    move-object v1, p0

    check-cast v1, Lnet/sf/saxon/type/UnionType;

    invoke-interface {v1}, Lnet/sf/saxon/type/UnionType;->getTypeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "~"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://ns.saxonica.com/anonymous-type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Lnet/sf/saxon/type/UnionType;

    invoke-interface {p0}, Lnet/sf/saxon/type/UnionType;->getPlainMemberTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/type/PlainType;

    invoke-static {v2}, Lnet/sf/saxon/type/AlphaCode;->c(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v1, v0, Lnet/sf/saxon/type/AlphaCode$c;->f:Ljava/util/List;
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    goto/16 :goto_6

    :cond_4
    instance-of v3, p0, Lnet/sf/saxon/pattern/NameTest;

    if-eqz v3, :cond_5

    check-cast p0, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NameTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    goto/16 :goto_6

    :cond_5
    instance-of v3, p0, Lnet/sf/saxon/pattern/SchemaNodeTest;

    if-eqz v3, :cond_6

    check-cast p0, Lnet/sf/saxon/pattern/SchemaNodeTest;

    invoke-interface {p0}, Lnet/sf/saxon/pattern/SchemaNodeTest;->getNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    goto/16 :goto_6

    :cond_6
    instance-of v3, p0, Lnet/sf/saxon/pattern/LocalNameTest;

    if-eqz v3, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lnet/sf/saxon/pattern/LocalNameTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/LocalNameTest;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    goto/16 :goto_6

    :cond_7
    instance-of v3, p0, Lnet/sf/saxon/pattern/NamespaceTest;

    if-eqz v3, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Q{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lnet/sf/saxon/pattern/NamespaceTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/NamespaceTest;->getNamespaceURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}*"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    goto/16 :goto_6

    :cond_8
    instance-of v3, p0, Lnet/sf/saxon/pattern/CombinedNodeTest;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_b

    check-cast p0, Lnet/sf/saxon/pattern/CombinedNodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/CombinedNodeTest;->getContentTypeForAlphaCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "Q{http://ns.saxonica.com/anonymous-type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iput-object v1, v0, Lnet/sf/saxon/type/AlphaCode$c;->d:Ljava/lang/String;

    :cond_9
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/CombinedNodeTest;->getMatchingNodeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/CombinedNodeTest;->isNillable()Z

    move-result p0

    iput-boolean p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->e:Z

    goto/16 :goto_6

    :cond_a
    invoke-virtual {p0}, Lnet/sf/saxon/pattern/CombinedNodeTest;->getOperator()I

    move-result v1

    iput v1, v0, Lnet/sf/saxon/type/AlphaCode$c;->l:I

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/sf/saxon/type/AlphaCode$c;

    iput-object v1, v0, Lnet/sf/saxon/type/AlphaCode$c;->m:[Lnet/sf/saxon/type/AlphaCode$c;

    invoke-virtual {p0, v4}, Lnet/sf/saxon/pattern/CombinedNodeTest;->getOperand(I)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/type/AlphaCode;->c(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v1, v0, Lnet/sf/saxon/type/AlphaCode$c;->m:[Lnet/sf/saxon/type/AlphaCode$c;

    invoke-virtual {p0, v5}, Lnet/sf/saxon/pattern/CombinedNodeTest;->getOperand(I)Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/type/AlphaCode;->c(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object p0

    aput-object p0, v1, v5

    goto/16 :goto_6

    :cond_b
    instance-of v3, p0, Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    if-eqz v3, :cond_c

    iput v5, v0, Lnet/sf/saxon/type/AlphaCode$c;->l:I

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/type/UType;->decompose()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lnet/sf/saxon/type/AlphaCode$c;

    iput-object v1, v0, Lnet/sf/saxon/type/AlphaCode$c;->m:[Lnet/sf/saxon/type/AlphaCode$c;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/type/PrimitiveUType;

    iget-object v2, v0, Lnet/sf/saxon/type/AlphaCode$c;->m:[Lnet/sf/saxon/type/AlphaCode$c;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v1}, Lnet/sf/saxon/type/PrimitiveUType;->toItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/type/AlphaCode;->c(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object v1

    aput-object v1, v2, v4

    move v4, v3

    goto :goto_1

    :cond_c
    instance-of v3, p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    if-eqz v3, :cond_d

    check-cast p0, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/ContentTypeTest;->getContentType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getEQName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->d:Ljava/lang/String;

    goto/16 :goto_6

    :cond_d
    instance-of v3, p0, Lnet/sf/saxon/pattern/DocumentNodeTest;

    if-eqz v3, :cond_e

    check-cast p0, Lnet/sf/saxon/pattern/DocumentNodeTest;

    invoke-virtual {p0}, Lnet/sf/saxon/pattern/DocumentNodeTest;->getElementTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/type/AlphaCode;->c(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->k:Lnet/sf/saxon/type/AlphaCode$c;

    goto/16 :goto_6

    :cond_e
    instance-of v3, p0, Lnet/sf/saxon/type/FunctionItemType;

    if-eqz v3, :cond_18

    instance-of v3, p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    if-eqz v3, :cond_f

    check-cast p0, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;->getMemberType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-eq p0, v1, :cond_19

    invoke-static {p0}, Lnet/sf/saxon/type/AlphaCode;->d(Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->h:Lnet/sf/saxon/type/AlphaCode$c;

    goto/16 :goto_6

    :cond_f
    instance-of v3, p0, Lnet/sf/saxon/ma/map/RecordTest;

    if-eqz v3, :cond_13

    check-cast p0, Lnet/sf/saxon/ma/map/RecordTest;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/RecordTest;->isExtensible()Z

    move-result v3

    iput-boolean v3, v0, Lnet/sf/saxon/type/AlphaCode$c;->p:Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lnet/sf/saxon/type/AlphaCode$c;->o:Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lnet/sf/saxon/type/AlphaCode$c;->n:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lnet/sf/saxon/type/AlphaCode$c;->j:Ljava/util/List;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/RecordTest;->getFieldNames()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lnet/sf/saxon/type/AlphaCode$c;->n:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lnet/sf/saxon/ma/map/RecordTest;->getFieldType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    instance-of v6, v6, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;

    if-eqz v6, :cond_12

    new-instance v6, Lnet/sf/saxon/type/AlphaCode$c;

    invoke-direct {v6, v1}, Lnet/sf/saxon/type/AlphaCode$c;-><init>(Lnet/sf/saxon/type/AlphaCode$a;)V

    iput-object v0, v6, Lnet/sf/saxon/type/AlphaCode$c;->q:Lnet/sf/saxon/type/AlphaCode$c;

    invoke-virtual {v5}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v7

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_11

    move-object v5, v2

    goto :goto_3

    :cond_11
    invoke-virtual {v5}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v5

    invoke-static {v5}, Lnet/sf/saxon/value/Cardinality;->getOccurrenceIndicator(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    iput-object v5, v6, Lnet/sf/saxon/type/AlphaCode$c;->a:Ljava/lang/String;

    iget-object v5, v0, Lnet/sf/saxon/type/AlphaCode$c;->j:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    iget-object v5, v0, Lnet/sf/saxon/type/AlphaCode$c;->j:Ljava/util/List;

    invoke-virtual {p0, v4}, Lnet/sf/saxon/ma/map/RecordTest;->getFieldType(Ljava/lang/String;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v6

    invoke-static {v6}, Lnet/sf/saxon/type/AlphaCode;->d(Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {p0, v4}, Lnet/sf/saxon/ma/map/RecordTest;->isOptionalField(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, v0, Lnet/sf/saxon/type/AlphaCode$c;->o:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_13
    instance-of v1, p0, Lnet/sf/saxon/ma/map/MapType;

    if-eqz v1, :cond_15

    check-cast p0, Lnet/sf/saxon/ma/map/MapType;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapType;->getKeyType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-eq v1, v2, :cond_14

    invoke-static {v1}, Lnet/sf/saxon/type/AlphaCode;->c(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/type/AlphaCode$c;->g:Lnet/sf/saxon/type/AlphaCode$c;

    :cond_14
    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapType;->getValueType()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-eq p0, v1, :cond_19

    invoke-static {p0}, Lnet/sf/saxon/type/AlphaCode;->d(Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->h:Lnet/sf/saxon/type/AlphaCode$c;

    goto :goto_6

    :cond_15
    check-cast p0, Lnet/sf/saxon/type/FunctionItemType;

    invoke-interface {p0}, Lnet/sf/saxon/type/FunctionItemType;->getResultType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-eq v1, v2, :cond_16

    invoke-static {v1}, Lnet/sf/saxon/type/AlphaCode;->d(Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/type/AlphaCode$c;->i:Lnet/sf/saxon/type/AlphaCode$c;

    :cond_16
    invoke-interface {p0}, Lnet/sf/saxon/type/FunctionItemType;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    if-eqz p0, :cond_19

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    :goto_5
    if-ge v4, v2, :cond_17

    aget-object v3, p0, v4

    invoke-static {v3}, Lnet/sf/saxon/type/AlphaCode;->d(Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_17
    iput-object v1, v0, Lnet/sf/saxon/type/AlphaCode$c;->j:Ljava/util/List;

    goto :goto_6

    :cond_18
    instance-of v1, p0, Lnet/sf/saxon/type/ExternalObjectType;

    if-eqz v1, :cond_19

    check-cast p0, Lnet/sf/saxon/type/ExternalObjectType;

    invoke-virtual {p0}, Lnet/sf/saxon/type/ExternalObjectType;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    :catch_0
    :cond_19
    :goto_6
    return-object v0
.end method

.method public static d(Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/type/AlphaCode$c;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/type/AlphaCode;->c(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v1

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->getOccurrenceIndicator(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/sf/saxon/type/AlphaCode$c;->a:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static e(Lnet/sf/saxon/type/AlphaCode$c;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lnet/sf/saxon/type/AlphaCode$c;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v1

    :goto_0
    move-object v3, v0

    goto/16 :goto_16

    :cond_0
    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "Unknown type "

    if-eqz v3, :cond_6

    invoke-static {v2}, Lnet/sf/saxon/type/BuiltInAtomicType;->fromAlphaCode(Ljava/lang/String;)Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v2, v0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v1

    instance-of v2, v1, Lnet/sf/saxon/type/PlainType;

    if-eqz v2, :cond_1

    check-cast v1, Lnet/sf/saxon/type/PlainType;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Schema type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not known"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v3, v2, :cond_a

    iget-object v2, v0, Lnet/sf/saxon/type/AlphaCode$c;->f:Ljava/util/List;

    if-eqz v2, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lnet/sf/saxon/type/AlphaCode$c;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/type/AlphaCode$c;

    invoke-static {v4, v1}, Lnet/sf/saxon/type/AlphaCode;->e(Lnet/sf/saxon/type/AlphaCode$c;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/type/ItemType;->isAtomicType()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v1, Lnet/sf/saxon/type/LocalUnionType;

    invoke-direct {v1, v2}, Lnet/sf/saxon/type/LocalUnionType;-><init>(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v3, "N"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_30

    iget-object v5, v0, Lnet/sf/saxon/type/AlphaCode$c;->d:Ljava/lang/String;

    iget-boolean v8, v0, Lnet/sf/saxon/type/AlphaCode$c;->e:Z

    const-string v9, "NE"

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eqz v5, :cond_9

    invoke-static {v5}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v12

    invoke-virtual {v1, v12}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object v12

    if-eqz v12, :cond_8

    new-instance v4, Lnet/sf/saxon/pattern/ContentTypeTest;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v10

    goto :goto_2

    :cond_7
    move v5, v11

    :goto_2
    invoke-direct {v4, v5, v12, v1, v8}, Lnet/sf/saxon/pattern/ContentTypeTest;-><init>(ILnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/Configuration;Z)V

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v4, 0x0

    :goto_3
    iget-object v5, v0, Lnet/sf/saxon/type/AlphaCode$c;->m:[Lnet/sf/saxon/type/AlphaCode$c;

    if-eqz v5, :cond_d

    array-length v2, v5

    if-ne v2, v11, :cond_b

    aget-object v2, v5, v6

    invoke-static {v2, v1}, Lnet/sf/saxon/type/AlphaCode;->e(Lnet/sf/saxon/type/AlphaCode$c;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/pattern/NodeTest;

    iget-object v3, v0, Lnet/sf/saxon/type/AlphaCode$c;->m:[Lnet/sf/saxon/type/AlphaCode$c;

    aget-object v3, v3, v10

    invoke-static {v3, v1}, Lnet/sf/saxon/type/AlphaCode;->e(Lnet/sf/saxon/type/AlphaCode$c;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/pattern/NodeTest;

    new-instance v3, Lnet/sf/saxon/pattern/CombinedNodeTest;

    iget v4, v0, Lnet/sf/saxon/type/AlphaCode$c;->l:I

    invoke-direct {v3, v2, v4, v1}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    :cond_a
    move-object v1, v3

    goto/16 :goto_0

    :cond_b
    sget-object v2, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    :goto_4
    iget-object v3, v0, Lnet/sf/saxon/type/AlphaCode$c;->m:[Lnet/sf/saxon/type/AlphaCode$c;

    array-length v4, v3

    if-ge v6, v4, :cond_c

    aget-object v3, v3, v6

    invoke-static {v3, v1}, Lnet/sf/saxon/type/AlphaCode;->e(Lnet/sf/saxon/type/AlphaCode$c;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/type/UType;->union(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    new-instance v1, Lnet/sf/saxon/pattern/MultipleNodeKindTest;

    invoke-direct {v1, v2}, Lnet/sf/saxon/pattern/MultipleNodeKindTest;-><init>(Lnet/sf/saxon/type/UType;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v14, "NT"

    const-string v7, "NP"

    const/16 v16, 0x4

    const-string v12, "NN"

    const-string v13, "ND"

    const-string v15, "NC"

    const-string v8, "NA"

    const/16 v17, -0x1

    const/16 v18, 0x3

    if-lt v5, v11, :cond_15

    invoke-virtual {v2, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_0

    :goto_5
    move/from16 v5, v17

    goto :goto_6

    :sswitch_0
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_5

    :cond_e
    const/4 v5, 0x6

    goto :goto_6

    :sswitch_1
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_5

    :cond_f
    const/4 v5, 0x5

    goto :goto_6

    :sswitch_2
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_5

    :cond_10
    move/from16 v5, v16

    goto :goto_6

    :sswitch_3
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_5

    :cond_11
    move/from16 v5, v18

    goto :goto_6

    :sswitch_4
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_5

    :cond_12
    move v5, v11

    goto :goto_6

    :sswitch_5
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_5

    :cond_13
    const/4 v5, 0x1

    goto :goto_6

    :sswitch_6
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_5

    :cond_14
    move v5, v6

    :goto_6
    packed-switch v5, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    move/from16 v5, v18

    goto :goto_8

    :pswitch_1
    const/4 v5, 0x7

    goto :goto_8

    :pswitch_2
    const/16 v5, 0xd

    goto :goto_8

    :pswitch_3
    const/4 v5, 0x1

    goto :goto_8

    :pswitch_4
    const/16 v5, 0x9

    goto :goto_8

    :pswitch_5
    const/16 v5, 0x8

    goto :goto_8

    :pswitch_6
    move v5, v11

    goto :goto_8

    :cond_15
    :goto_7
    move v5, v6

    :goto_8
    iget-object v6, v0, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    if-eqz v6, :cond_17

    const-string v10, "*"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_17

    const-string v10, "*:"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    new-instance v10, Lnet/sf/saxon/pattern/LocalNameTest;

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    move-object/from16 v20, v4

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v0, v5, v4}, Lnet/sf/saxon/pattern/LocalNameTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    goto :goto_9

    :cond_16
    move-object/from16 v20, v4

    const-string v0, "}*"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-virtual {v6, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lnet/sf/saxon/pattern/NamespaceTest;

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v4

    invoke-direct {v10, v4, v5, v0}, Lnet/sf/saxon/pattern/NamespaceTest;-><init>(Lnet/sf/saxon/om/NamePool;ILjava/lang/String;)V

    goto :goto_9

    :cond_17
    move-object/from16 v20, v4

    :cond_18
    const/4 v10, 0x0

    :goto_9
    if-eqz v10, :cond_19

    move-object/from16 v3, p0

    move-object v1, v10

    goto/16 :goto_16

    :cond_19
    if-nez v6, :cond_1a

    const/4 v0, 0x0

    goto :goto_a

    :cond_1a
    invoke-static {v6}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    :goto_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    goto/16 :goto_b

    :sswitch_7
    const-string v3, "NES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_b

    :cond_1b
    const/16 v2, 0x9

    move/from16 v17, v2

    goto/16 :goto_b

    :sswitch_8
    const-string v3, "NAS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_b

    :cond_1c
    const/16 v17, 0x8

    goto :goto_b

    :sswitch_9
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_b

    :cond_1d
    const/16 v17, 0x7

    goto :goto_b

    :sswitch_a
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_b

    :cond_1e
    const/16 v17, 0x6

    goto :goto_b

    :sswitch_b
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_b

    :cond_1f
    const/16 v17, 0x5

    goto :goto_b

    :sswitch_c
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_b

    :cond_20
    move/from16 v17, v16

    goto :goto_b

    :sswitch_d
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_b

    :cond_21
    move/from16 v17, v18

    goto :goto_b

    :sswitch_e
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_b

    :cond_22
    move/from16 v17, v11

    goto :goto_b

    :sswitch_f
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_b

    :cond_23
    const/16 v17, 0x1

    goto :goto_b

    :sswitch_10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_b

    :cond_24
    const/16 v17, 0x0

    :goto_b
    packed-switch v17, :pswitch_data_1

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v0

    goto :goto_e

    :pswitch_7
    invoke-virtual {v1, v0}, Lnet/sf/saxon/Configuration;->getElementDeclaration(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object v2

    if-eqz v2, :cond_25

    :try_start_0
    invoke-interface {v2}, Lnet/sf/saxon/type/SchemaDeclaration;->makeSchemaNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v7
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    :cond_25
    const/4 v7, 0x0

    :goto_c
    if-nez v7, :cond_26

    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3, v0, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    goto :goto_f

    :cond_26
    move-object/from16 v3, p0

    move-object v1, v7

    goto/16 :goto_16

    :pswitch_8
    invoke-virtual {v1, v0}, Lnet/sf/saxon/Configuration;->getAttributeDeclaration(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaDeclaration;

    move-result-object v2

    if-eqz v2, :cond_27

    :try_start_1
    invoke-interface {v2}, Lnet/sf/saxon/type/SchemaDeclaration;->makeSchemaNodeTest()Lnet/sf/saxon/pattern/NodeTest;

    move-result-object v7
    :try_end_1
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    :cond_27
    const/4 v7, 0x0

    :goto_d
    if-nez v7, :cond_26

    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    invoke-direct {v2, v11, v3, v0, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    goto :goto_f

    :pswitch_9
    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->TEXT:Lnet/sf/saxon/pattern/NodeKindTest;

    :goto_e
    move-object/from16 v3, p0

    goto/16 :goto_15

    :pswitch_a
    if-nez v6, :cond_28

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/pattern/NodeKindTest;

    goto :goto_e

    :cond_28
    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    const-string v3, ""

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3, v0, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    goto :goto_f

    :pswitch_b
    if-nez v6, :cond_29

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->NAMESPACE:Lnet/sf/saxon/pattern/NodeKindTest;

    goto :goto_e

    :cond_29
    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    const-string v3, ""

    const/16 v4, 0xd

    invoke-direct {v2, v4, v3, v0, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    :cond_2a
    :goto_f
    move-object/from16 v3, p0

    goto/16 :goto_12

    :pswitch_c
    if-nez v0, :cond_2c

    if-nez v20, :cond_2b

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    goto :goto_e

    :cond_2b
    move-object/from16 v3, p0

    move-object/from16 v4, v20

    goto :goto_10

    :cond_2c
    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3, v0, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    if-eqz v20, :cond_2a

    new-instance v0, Lnet/sf/saxon/pattern/CombinedNodeTest;

    const/16 v1, 0x17

    move-object/from16 v4, v20

    invoke-direct {v0, v2, v1, v4}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    goto :goto_e

    :pswitch_d
    move-object/from16 v3, p0

    iget-object v0, v3, Lnet/sf/saxon/type/AlphaCode$c;->k:Lnet/sf/saxon/type/AlphaCode$c;

    if-nez v0, :cond_2d

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    goto/16 :goto_15

    :cond_2d
    invoke-static {v0, v1}, Lnet/sf/saxon/type/AlphaCode;->e(Lnet/sf/saxon/type/AlphaCode$c;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/pattern/DocumentNodeTest;

    check-cast v0, Lnet/sf/saxon/pattern/NodeTest;

    invoke-direct {v1, v0}, Lnet/sf/saxon/pattern/DocumentNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    goto/16 :goto_16

    :pswitch_e
    move-object/from16 v3, p0

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->COMMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    goto/16 :goto_15

    :pswitch_f
    move-object/from16 v3, p0

    move-object/from16 v4, v20

    if-nez v0, :cond_2f

    if-nez v4, :cond_2e

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    goto/16 :goto_15

    :cond_2e
    :goto_10
    move-object v1, v4

    goto/16 :goto_16

    :cond_2f
    new-instance v2, Lnet/sf/saxon/pattern/NameTest;

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    invoke-direct {v2, v11, v5, v0, v1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    if-eqz v4, :cond_37

    new-instance v0, Lnet/sf/saxon/pattern/CombinedNodeTest;

    const/16 v1, 0x17

    invoke-direct {v0, v2, v1, v4}, Lnet/sf/saxon/pattern/CombinedNodeTest;-><init>(Lnet/sf/saxon/pattern/NodeTest;ILnet/sf/saxon/pattern/NodeTest;)V

    goto/16 :goto_15

    :pswitch_10
    move-object/from16 v3, p0

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v0

    goto/16 :goto_15

    :cond_30
    move-object v3, v0

    const-string v0, "F"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "FA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, v3, Lnet/sf/saxon/type/AlphaCode$c;->h:Lnet/sf/saxon/type/AlphaCode$c;

    if-nez v0, :cond_31

    sget-object v0, Lnet/sf/saxon/ma/arrays/ArrayItemType;->ANY_ARRAY_TYPE:Lnet/sf/saxon/ma/arrays/ArrayItemType;

    goto/16 :goto_15

    :cond_31
    new-instance v2, Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-static {v0, v1}, Lnet/sf/saxon/type/AlphaCode;->e(Lnet/sf/saxon/type/AlphaCode$c;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-direct {v2, v0}, Lnet/sf/saxon/ma/arrays/ArrayItemType;-><init>(Lnet/sf/saxon/value/SequenceType;)V

    goto/16 :goto_12

    :cond_32
    const-string v0, "FM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, v3, Lnet/sf/saxon/type/AlphaCode$c;->n:Ljava/util/List;

    if-nez v0, :cond_34

    iget-object v0, v3, Lnet/sf/saxon/type/AlphaCode$c;->g:Lnet/sf/saxon/type/AlphaCode$c;

    iget-object v2, v3, Lnet/sf/saxon/type/AlphaCode$c;->h:Lnet/sf/saxon/type/AlphaCode$c;

    if-eqz v0, :cond_33

    if-eqz v2, :cond_33

    invoke-static {v0, v1}, Lnet/sf/saxon/type/AlphaCode;->e(Lnet/sf/saxon/type/AlphaCode$c;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    invoke-static {v2, v1}, Lnet/sf/saxon/type/AlphaCode;->e(Lnet/sf/saxon/type/AlphaCode$c;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/ma/map/MapType;

    invoke-direct {v2, v0, v1}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    goto :goto_12

    :cond_33
    sget-object v0, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    goto/16 :goto_15

    :cond_34
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v3, Lnet/sf/saxon/type/AlphaCode$c;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lnet/sf/saxon/ma/map/RecordTest;

    invoke-direct {v2}, Lnet/sf/saxon/ma/map/RecordTest;-><init>()V

    iget-object v4, v3, Lnet/sf/saxon/type/AlphaCode$c;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/type/AlphaCode$c;

    iget-object v6, v5, Lnet/sf/saxon/type/AlphaCode$c;->q:Lnet/sf/saxon/type/AlphaCode$c;

    if-eqz v6, :cond_35

    new-instance v5, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;

    invoke-direct {v5, v2}, Lnet/sf/saxon/ma/map/SelfReferenceRecordTest;-><init>(Lnet/sf/saxon/ma/map/RecordTest;)V

    iget-object v6, v3, Lnet/sf/saxon/type/AlphaCode$c;->a:Ljava/lang/String;

    invoke-static {v6}, Lnet/sf/saxon/value/Cardinality;->fromOccurrenceIndicator(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_35
    invoke-static {v5, v1}, Lnet/sf/saxon/type/AlphaCode;->e(Lnet/sf/saxon/type/AlphaCode$c;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_36
    iget-object v1, v3, Lnet/sf/saxon/type/AlphaCode$c;->n:Ljava/util/List;

    iget-object v4, v3, Lnet/sf/saxon/type/AlphaCode$c;->o:Ljava/util/Set;

    iget-boolean v5, v3, Lnet/sf/saxon/type/AlphaCode$c;->p:Z

    invoke-virtual {v2, v1, v0, v4, v5}, Lnet/sf/saxon/ma/map/RecordTest;->setDetails(Ljava/util/List;Ljava/util/List;Ljava/util/Collection;Z)V

    :cond_37
    :goto_12
    move-object v1, v2

    goto :goto_16

    :cond_38
    iget-object v0, v3, Lnet/sf/saxon/type/AlphaCode$c;->i:Lnet/sf/saxon/type/AlphaCode$c;

    iget-object v2, v3, Lnet/sf/saxon/type/AlphaCode$c;->j:Ljava/util/List;

    if-nez v2, :cond_39

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v0

    goto :goto_15

    :cond_39
    if-nez v0, :cond_3a

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    goto :goto_13

    :cond_3a
    invoke-static {v0, v1}, Lnet/sf/saxon/type/AlphaCode;->e(Lnet/sf/saxon/type/AlphaCode$c;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    :goto_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [Lnet/sf/saxon/value/SequenceType;

    const/4 v6, 0x0

    :goto_14
    if-ge v6, v4, :cond_3b

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/type/AlphaCode$c;

    invoke-static {v7, v1}, Lnet/sf/saxon/type/AlphaCode;->e(Lnet/sf/saxon/type/AlphaCode$c;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_3b
    new-instance v1, Lnet/sf/saxon/type/SpecificFunctionType;

    invoke-direct {v1, v5, v0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    goto :goto_16

    :cond_3c
    const-string v0, "X"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, v3, Lnet/sf/saxon/type/AlphaCode$c;->c:Ljava/lang/String;

    const-class v1, Ljava/lang/Object;

    if-eqz v0, :cond_3d

    invoke-static {v0}, Lnet/sf/saxon/om/StructuredQName;->fromEQName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_3d
    new-instance v0, Lnet/sf/saxon/type/JavaExternalObjectType;

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/JavaExternalObjectType;-><init>(Ljava/lang/Class;)V

    :goto_15
    move-object v1, v0

    goto :goto_16

    :cond_3e
    const/4 v1, 0x0

    :goto_16
    iget-object v0, v3, Lnet/sf/saxon/type/AlphaCode$c;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->fromOccurrenceIndicator(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x9b3 -> :sswitch_6
        0x9b5 -> :sswitch_5
        0x9b6 -> :sswitch_4
        0x9b7 -> :sswitch_3
        0x9c0 -> :sswitch_2
        0x9c2 -> :sswitch_1
        0x9c6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x4e -> :sswitch_10
        0x9b3 -> :sswitch_f
        0x9b5 -> :sswitch_e
        0x9b6 -> :sswitch_d
        0x9b7 -> :sswitch_c
        0x9c0 -> :sswitch_b
        0x9c2 -> :sswitch_a
        0x9c6 -> :sswitch_9
        0x12d00 -> :sswitch_8
        0x12d7c -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static escapeNCName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_2

    invoke-static {v2}, Lnet/sf/saxon/om/NameChecker;->isNCNameChar(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "\\"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lnet/sf/saxon/type/AlphaCode;->c(Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/AlphaCode$c;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/type/AlphaCode;->b(Lnet/sf/saxon/type/AlphaCode$c;ZLjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromLexicalSequenceType(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1f

    const-string v3, "XP"

    invoke-virtual {v0, v3, v1, v2}, Lnet/sf/saxon/Configuration;->newExpressionParser(Ljava/lang/String;ZI)Lnet/sf/saxon/expr/parser/XPathParser;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/sxpath/IndependentContext;

    invoke-interface {p0}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/sxpath/IndependentContext;-><init>(Lnet/sf/saxon/Configuration;)V

    const-string p0, "xs"

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v1, p0, v2}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "fn"

    const-string v2, "http://www.w3.org/2005/xpath-functions"

    invoke-virtual {v1, p0, v2}, Lnet/sf/saxon/sxpath/IndependentContext;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/expr/parser/XPathParser;->parseSequenceType(Ljava/lang/String;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/type/AlphaCode;->fromSequenceType(Lnet/sf/saxon/value/SequenceType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromSequenceType(Lnet/sf/saxon/value/SequenceType;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->EMPTY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    if-ne p0, v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v1

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->getOccurrenceIndicator(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromXdmMap(Lnet/sf/saxon/ma/map/MapItem;)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "o"

    invoke-static {v1}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/StringValue;

    if-nez v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "p"

    invoke-static {v2}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/value/StringValue;

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    :pswitch_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v5, v4, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v5}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v6, "v"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v9, 0xa

    goto/16 :goto_3

    :sswitch_1
    const-string v6, "u"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_3

    :cond_3
    const/16 v9, 0x9

    goto/16 :goto_3

    :sswitch_2
    const-string v6, "t"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_3

    :cond_4
    const/16 v9, 0x8

    goto/16 :goto_3

    :sswitch_3
    const-string v6, "r"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x7

    goto :goto_3

    :sswitch_4
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    const/4 v9, 0x6

    goto :goto_3

    :sswitch_5
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v9, 0x5

    goto :goto_3

    :sswitch_6
    const-string v6, "n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    const/4 v9, 0x4

    goto :goto_3

    :sswitch_7
    const-string v6, "k"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_3

    :cond_9
    const/4 v9, 0x3

    goto :goto_3

    :sswitch_8
    const-string v6, "e"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_3

    :cond_a
    const/4 v9, 0x2

    goto :goto_3

    :sswitch_9
    const-string v6, "c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_3

    :cond_b
    move v9, v7

    goto :goto_3

    :sswitch_a
    const-string v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_3

    :cond_c
    move v9, v8

    :goto_3
    const/16 v6, 0x5d

    const/16 v10, 0x5b

    packed-switch v9, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected key \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    check-cast v4, Lnet/sf/saxon/ma/map/MapItem;

    invoke-static {v4}, Lnet/sf/saxon/type/AlphaCode;->fromXdmMap(Lnet/sf/saxon/ma/map/MapItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    check-cast v4, Lnet/sf/saxon/value/StringValue;

    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    check-cast v4, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {v4}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/om/GroundedValue;

    if-eqz v7, :cond_d

    move v7, v8

    goto :goto_5

    :cond_d
    const-string v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    check-cast v5, Lnet/sf/saxon/ma/map/MapItem;

    invoke-static {v5}, Lnet/sf/saxon/type/AlphaCode;->fromXdmMap(Lnet/sf/saxon/ma/map/MapItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_a
        0x63 -> :sswitch_9
        0x65 -> :sswitch_8
        0x6b -> :sswitch_7
        0x6e -> :sswitch_6
        0x6f -> :sswitch_5
        0x70 -> :sswitch_4
        0x72 -> :sswitch_3
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
        0x76 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static toItemType(Ljava/lang/String;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/type/ItemType;
    .locals 1

    invoke-static {p0, p1}, Lnet/sf/saxon/type/AlphaCode;->toSequenceType(Ljava/lang/String;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p1

    const/16 v0, 0x4000

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied alphacode has a cardinality other than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toSequenceType(Ljava/lang/String;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;
    .locals 3

    new-instance v0, Lnet/sf/saxon/type/AlphaCode$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/AlphaCode$f;-><init>(Lnet/sf/saxon/type/AlphaCode$a;)V

    new-instance v2, Lnet/sf/saxon/type/AlphaCode$b;

    invoke-direct {v2, p0, v0}, Lnet/sf/saxon/type/AlphaCode$b;-><init>(Ljava/lang/String;Lnet/sf/saxon/type/AlphaCode$e;)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/type/AlphaCode$b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/AlphaCode$c;

    invoke-static {p0, p1}, Lnet/sf/saxon/type/AlphaCode;->e(Lnet/sf/saxon/type/AlphaCode$c;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0
.end method

.method public static toXdmMap(Ljava/lang/String;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 3

    new-instance v0, Lnet/sf/saxon/type/AlphaCode$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/AlphaCode$d;-><init>(Lnet/sf/saxon/type/AlphaCode$a;)V

    new-instance v2, Lnet/sf/saxon/type/AlphaCode$b;

    invoke-direct {v2, p0, v0}, Lnet/sf/saxon/type/AlphaCode$b;-><init>(Ljava/lang/String;Lnet/sf/saxon/type/AlphaCode$e;)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/type/AlphaCode$b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/ma/map/MapItem;

    return-object p0
.end method
