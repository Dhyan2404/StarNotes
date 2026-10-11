.class public Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/impl/dtd/models/ContentModelValidator;


# static fields
.field public static final CHOICE:S = -0x1s

.field public static final SEQUENCE:S = -0x1s


# instance fields
.field public final a:Lorg/apache/xerces/xni/QName;

.field public final b:Lorg/apache/xerces/xni/QName;

.field public final c:I


# direct methods
.method public constructor <init>(SLorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/QName;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;->a:Lorg/apache/xerces/xni/QName;

    new-instance v1, Lorg/apache/xerces/xni/QName;

    invoke-direct {v1}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;->b:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, p2}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/xerces/xni/QName;->clear()V

    :goto_0
    iput p1, p0, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;->c:I

    return-void
.end method


# virtual methods
.method public validate([Lorg/apache/xerces/xni/QName;II)I
    .locals 5

    iget v0, p0, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    if-eq v0, v2, :cond_e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_7

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-ne v0, v4, :cond_3

    if-ne p3, v3, :cond_1

    aget-object p3, p1, p2

    iget-object p3, p3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;->a:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq p3, v0, :cond_0

    return v1

    :cond_0
    add-int/2addr p2, v2

    aget-object p1, p1, p2

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;->b:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p0, :cond_13

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

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p2, p0, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;->a:Lorg/apache/xerces/xni/QName;

    iget-object p2, p2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p2, :cond_6

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;->b:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p0, :cond_6

    return v1

    :cond_6
    if-le p3, v2, :cond_13

    return v2

    :cond_7
    if-nez p3, :cond_8

    return v1

    :cond_8
    :goto_0
    if-lt v1, p3, :cond_9

    goto :goto_2

    :cond_9
    add-int v0, p2, v1

    aget-object v0, p1, v0

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;->a:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v0, v2, :cond_a

    return v1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    if-lez p3, :cond_13

    :goto_1
    if-lt v1, p3, :cond_c

    goto :goto_2

    :cond_c
    add-int v0, p2, v1

    aget-object v0, p1, v0

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;->a:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v0, v2, :cond_d

    return v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_e
    if-ne p3, v2, :cond_f

    aget-object p1, p1, p2

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;->a:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p0, :cond_f

    return v1

    :cond_f
    if-le p3, v2, :cond_13

    return v2

    :cond_10
    if-nez p3, :cond_11

    return v1

    :cond_11
    aget-object p1, p1, p2

    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/xerces/impl/dtd/models/SimpleContentModel;->a:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq p1, p0, :cond_12

    return v1

    :cond_12
    if-le p3, v2, :cond_13

    return v2

    :cond_13
    :goto_2
    const/4 p0, -0x1

    return p0
.end method
