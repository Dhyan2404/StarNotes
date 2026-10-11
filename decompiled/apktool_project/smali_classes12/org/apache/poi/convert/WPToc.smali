.class public Lorg/apache/poi/convert/WPToc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/WPToc;",
            ">;"
        }
    .end annotation
.end field

.field private level:I

.field private parent:Lorg/apache/poi/convert/WPToc;

.field private point:Ljava/lang/String;

.field private position:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/poi/convert/WPToc;->title:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/apache/poi/convert/WPToc;->point:Ljava/lang/String;

    .line 5
    iput p3, p0, Lorg/apache/poi/convert/WPToc;->position:I

    .line 6
    iput p4, p0, Lorg/apache/poi/convert/WPToc;->level:I

    return-void
.end method


# virtual methods
.method public addChild(Lorg/apache/poi/convert/WPToc;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/convert/WPToc;->children:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/convert/WPToc;->children:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/convert/WPToc;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lorg/apache/poi/convert/WPToc;->setParent(Lorg/apache/poi/convert/WPToc;)V

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/WPToc;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/convert/WPToc;->children:Ljava/util/List;

    return-object p0
.end method

.method public getLevel()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/WPToc;->level:I

    return p0
.end method

.method public getParent()Lorg/apache/poi/convert/WPToc;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/WPToc;->parent:Lorg/apache/poi/convert/WPToc;

    return-object p0
.end method

.method public getPoint()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/WPToc;->point:Ljava/lang/String;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/convert/WPToc;->position:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/WPToc;->title:Ljava/lang/String;

    return-object p0
.end method

.method public hasChild()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/WPToc;->children:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lastChild()Lorg/apache/poi/convert/WPToc;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/convert/WPToc;->hasChild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/convert/WPToc;->children:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/convert/WPToc;

    return-object p0
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/WPToc;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/convert/WPToc;->children:Ljava/util/List;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/convert/WPToc;->level:I

    return-void
.end method

.method public setParent(Lorg/apache/poi/convert/WPToc;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/WPToc;->parent:Lorg/apache/poi/convert/WPToc;

    return-void
.end method

.method public setPoint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/WPToc;->point:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/convert/WPToc;->position:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/WPToc;->title:Ljava/lang/String;

    return-void
.end method
