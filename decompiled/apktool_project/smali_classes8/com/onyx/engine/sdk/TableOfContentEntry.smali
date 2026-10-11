.class public Lcom/onyx/engine/sdk/TableOfContentEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private canRead:Z

.field private chapterReady:Z

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TableOfContentEntry;",
            ">;"
        }
    .end annotation
.end field

.field private childrenSize:I

.field private pageIndex:I

.field private position:Lcom/onyx/engine/sdk/PinPosition;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0}, Lcom/onyx/engine/sdk/TableOfContentEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/PinPosition;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/onyx/engine/sdk/TableOfContentEntry;-><init>(Ljava/lang/String;Lcom/onyx/engine/sdk/PinPosition;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/onyx/engine/sdk/PinPosition;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->pageIndex:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->canRead:Z

    .line 6
    iput-boolean v0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->chapterReady:Z

    .line 7
    iput-object p1, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->title:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->position:Lcom/onyx/engine/sdk/PinPosition;

    return-void
.end method

.method private ensureChildren()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->children:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->children:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TableOfContentEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/onyx/engine/sdk/TableOfContentEntry;->ensureChildren()V

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->children:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/onyx/engine/sdk/Utils;->safelyAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public addChild(Lcom/onyx/engine/sdk/TableOfContentEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/engine/sdk/TableOfContentEntry;->ensureChildren()V

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->children:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TableOfContentEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->children:Ljava/util/List;

    return-object p0
.end method

.method public getChildrenSize()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->childrenSize:I

    return p0
.end method

.method public getPageIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->pageIndex:I

    return p0
.end method

.method public getPosition()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->position:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->title:Ljava/lang/String;

    return-object p0
.end method

.method public isCanRead()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->canRead:Z

    return p0
.end method

.method public isChapterReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->chapterReady:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->children:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setCanRead(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->canRead:Z

    return-void
.end method

.method public setChapterReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->chapterReady:Z

    return-void
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TableOfContentEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->children:Ljava/util/List;

    return-void
.end method

.method public setChildrenSize(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->childrenSize:I

    return-void
.end method

.method public setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->pageIndex:I

    return-void
.end method

.method public setPosition(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/TableOfContentEntry;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->position:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->title:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->children:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TableOfContentEntry{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->position:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->canRead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", chapterReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->chapterReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", childrenSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/engine/sdk/TableOfContentEntry;->childrenSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
