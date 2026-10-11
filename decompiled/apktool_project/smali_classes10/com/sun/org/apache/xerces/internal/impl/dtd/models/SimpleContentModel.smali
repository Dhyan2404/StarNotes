.class public Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/impl/dtd/models/ContentModelValidator;


# static fields
.field public static final CHOICE:S = -0x1s

.field public static final SEQUENCE:S = -0x1s


# instance fields
.field private fFirstChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fOperator:I

.field private fSecondChild:Lcom/sun/org/apache/xerces/internal/xni/QName;


# direct methods
.method public constructor <init>(SLcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/QName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fFirstChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fSecondChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fFirstChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fSecondChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fSecondChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/QName;->clear()V

    :goto_0
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fOperator:I

    return-void
.end method


# virtual methods
.method public validate([Lcom/sun/org/apache/xerces/internal/xni/QName;II)I
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fOperator:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    if-eq v0, v2, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_7

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-ne v0, v4, :cond_3

    if-ne p3, v3, :cond_1

    aget-object p3, p1, p2

    iget-object p3, p3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fFirstChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eq p3, v0, :cond_0

    return v1

    :cond_0
    add-int/2addr p2, v2

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fSecondChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p0, :cond_11

    return v2

    :cond_1
    if-le p3, v3, :cond_2

    return v3

    :cond_2
    return p3

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ImplementationMessages.VAL_CST"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-nez p3, :cond_5

    return v1

    :cond_5
    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fFirstChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p2, p2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p2, :cond_6

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fSecondChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p0, :cond_6

    return v1

    :cond_6
    if-le p3, v2, :cond_11

    return v2

    :cond_7
    if-nez p3, :cond_8

    return v1

    :cond_8
    :goto_0
    if-ge v1, p3, :cond_11

    add-int v0, p2, v1

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fFirstChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eq v0, v2, :cond_9

    return v1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    if-lez p3, :cond_11

    :goto_1
    if-ge v1, p3, :cond_11

    add-int v0, p2, v1

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fFirstChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eq v0, v2, :cond_b

    return v1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_c
    if-ne p3, v2, :cond_d

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fFirstChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p0, :cond_d

    return v1

    :cond_d
    if-le p3, v2, :cond_11

    return v2

    :cond_e
    if-nez p3, :cond_f

    return v1

    :cond_f
    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dtd/models/SimpleContentModel;->fFirstChild:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p0, :cond_10

    return v1

    :cond_10
    if-le p3, v2, :cond_11

    return v2

    :cond_11
    const/4 p0, -0x1

    return p0
.end method
