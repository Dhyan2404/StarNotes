.class Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/LargeContainer;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;
.source "SourceFile"


# instance fields
.field items:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/LargeContainer;->items:Ljava/util/Hashtable;

    new-array p1, p1, [Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneAttr;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;->values:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneAttr;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneAttr;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/LargeContainer;->items:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneAttr;

    return-object p0
.end method

.method public put(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneAttr;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/LargeContainer;->items:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;->values:[Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/OneAttr;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;->pos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/Container;->pos:I

    aput-object p2, p1, v0

    return-void
.end method
