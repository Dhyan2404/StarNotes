.class public Lcom/sun/org/apache/bcel/internal/verifier/statics/IntList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private theList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/IntList;->theList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/IntList;->theList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(I)Z
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/IntList;->theList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Integer;

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/verifier/statics/IntList;->theList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 p0, 0x0

    move v2, p0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method
