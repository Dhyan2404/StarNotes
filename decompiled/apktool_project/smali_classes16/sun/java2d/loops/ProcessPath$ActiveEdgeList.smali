.class Lsun/java2d/loops/ProcessPath$ActiveEdgeList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/ProcessPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveEdgeList"
.end annotation


# instance fields
.field head:Lsun/java2d/loops/ProcessPath$Edge;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsun/java2d/loops/ProcessPath$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Lsun/java2d/loops/ProcessPath$Edge;)V
    .locals 1

    iget-object v0, p1, Lsun/java2d/loops/ProcessPath$Edge;->prev:Lsun/java2d/loops/ProcessPath$Edge;

    iget-object p1, p1, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->head:Lsun/java2d/loops/ProcessPath$Edge;

    :goto_0
    if-eqz p1, :cond_1

    iput-object v0, p1, Lsun/java2d/loops/ProcessPath$Edge;->prev:Lsun/java2d/loops/ProcessPath$Edge;

    :cond_1
    return-void
.end method

.method public insert(Lsun/java2d/loops/ProcessPath$Point;I)V
    .locals 9

    iget-object v0, p1, Lsun/java2d/loops/ProcessPath$Point;->next:Lsun/java2d/loops/ProcessPath$Point;

    iget v1, p1, Lsun/java2d/loops/ProcessPath$Point;->x:I

    iget v2, p1, Lsun/java2d/loops/ProcessPath$Point;->y:I

    iget v3, v0, Lsun/java2d/loops/ProcessPath$Point;->x:I

    iget v0, v0, Lsun/java2d/loops/ProcessPath$Point;->y:I

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    sub-int v4, v3, v1

    sub-int v5, v0, v2

    if-ge v2, v0, :cond_1

    sub-int/2addr p2, v2

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    sub-int/2addr p2, v0

    const/4 v0, 0x1

    move v1, v3

    :goto_0
    int-to-float v2, v4

    const/high16 v3, 0x49800000    # 1048576.0f

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_3

    const/high16 v3, -0x36800000    # -1048576.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    shl-int/lit8 v2, v4, 0xa

    div-int/2addr v2, v5

    mul-int/2addr v4, p2

    div-int/2addr v4, v5

    add-int/2addr v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    int-to-double v2, v4

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    mul-double/2addr v6, v2

    int-to-double v4, v5

    div-double/2addr v6, v4

    double-to-int v6, v6

    int-to-double v7, p2

    mul-double/2addr v2, v7

    div-double/2addr v2, v4

    double-to-int p2, v2

    add-int/2addr v1, p2

    move v2, v6

    :goto_2
    new-instance p2, Lsun/java2d/loops/ProcessPath$Edge;

    invoke-direct {p2, p1, v1, v2, v0}, Lsun/java2d/loops/ProcessPath$Edge;-><init>(Lsun/java2d/loops/ProcessPath$Point;III)V

    iget-object v0, p0, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->head:Lsun/java2d/loops/ProcessPath$Edge;

    iput-object v0, p2, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    const/4 v1, 0x0

    iput-object v1, p2, Lsun/java2d/loops/ProcessPath$Edge;->prev:Lsun/java2d/loops/ProcessPath$Edge;

    if-eqz v0, :cond_4

    iput-object p2, v0, Lsun/java2d/loops/ProcessPath$Edge;->prev:Lsun/java2d/loops/ProcessPath$Edge;

    :cond_4
    iput-object p2, p1, Lsun/java2d/loops/ProcessPath$Point;->edge:Lsun/java2d/loops/ProcessPath$Edge;

    iput-object p2, p0, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->head:Lsun/java2d/loops/ProcessPath$Edge;

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->head:Lsun/java2d/loops/ProcessPath$Edge;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public sort()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v2, v0

    move v3, v1

    :cond_0
    iget-object v4, p0, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->head:Lsun/java2d/loops/ProcessPath$Edge;

    iget-object v5, v4, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    if-eq v2, v5, :cond_4

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    move-object v6, v5

    move-object v5, v4

    :cond_1
    :goto_0
    if-eq v4, v2, :cond_0

    iget v7, v4, Lsun/java2d/loops/ProcessPath$Edge;->x:I

    iget v8, v6, Lsun/java2d/loops/ProcessPath$Edge;->x:I

    if-lt v7, v8, :cond_3

    iget-object v3, p0, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->head:Lsun/java2d/loops/ProcessPath$Edge;

    if-ne v4, v3, :cond_2

    iget-object v3, v6, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    iput-object v4, v6, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    iput-object v3, v4, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    iput-object v6, p0, Lsun/java2d/loops/ProcessPath$ActiveEdgeList;->head:Lsun/java2d/loops/ProcessPath$Edge;

    goto :goto_1

    :cond_2
    iget-object v3, v6, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    iput-object v4, v6, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    iput-object v3, v4, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    iput-object v6, v5, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    :goto_1
    move v3, v1

    move-object v5, v6

    goto :goto_2

    :cond_3
    iget-object v5, v4, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_2
    iget-object v6, v4, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    if-ne v6, v2, :cond_1

    move-object v2, v4

    goto :goto_0

    :cond_4
    move-object p0, v0

    move-object v0, v4

    :goto_3
    if-eqz v0, :cond_5

    iput-object p0, v0, Lsun/java2d/loops/ProcessPath$Edge;->prev:Lsun/java2d/loops/ProcessPath$Edge;

    iget-object p0, v0, Lsun/java2d/loops/ProcessPath$Edge;->next:Lsun/java2d/loops/ProcessPath$Edge;

    move-object v9, v0

    move-object v0, p0

    move-object p0, v9

    goto :goto_3

    :cond_5
    return-void
.end method
