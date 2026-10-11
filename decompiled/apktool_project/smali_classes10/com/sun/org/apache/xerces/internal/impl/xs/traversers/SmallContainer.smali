.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SmallContainer;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;
.source "SourceFile"


# instance fields
.field keys:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;-><init>()V

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SmallContainer;->keys:[Ljava/lang/String;

    new-array p1, p1, [Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneAttr;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;->values:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneAttr;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneAttr;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;->pos:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SmallContainer;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;->values:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneAttr;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public put(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneAttr;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SmallContainer;->keys:[Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;->pos:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;->values:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneAttr;

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;->pos:I

    aput-object p2, p1, v1

    return-void
.end method
