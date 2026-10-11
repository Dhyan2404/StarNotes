.class public Lcom/onyx/engine/sdk/PageRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field end:Lcom/onyx/engine/sdk/PinPosition;

.field start:Lcom/onyx/engine/sdk/PinPosition;

.field tableRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TableRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/PinPosition;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    .line 3
    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/PinPosition;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/Chapter;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {v0, p1}, Lcom/onyx/engine/sdk/PinPosition;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    iput-object v0, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    .line 6
    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {v0, p1}, Lcom/onyx/engine/sdk/PinPosition;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    iput-object v0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/PinPosition;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    .line 9
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->copy()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/PinPosition;Lcom/onyx/engine/sdk/PinPosition;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    .line 12
    iput-object p2, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    return-void
.end method

.method private compareMultipleTableRow(Lcom/onyx/engine/sdk/PinPosition;)I
    .locals 9

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getDocumentPositionInt()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PinPosition;->getDocumentPositionInt()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/engine/sdk/TableRow;

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/TableRow;->getNodePosition()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v1, v5, :cond_5

    if-ge v0, v1, :cond_0

    return v7

    :cond_0
    iget-object v1, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    sub-int/2addr v2, v7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/engine/sdk/TableRow;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/TableRow;->getNodePosition()I

    move-result v2

    if-gt v0, v2, :cond_1

    return v4

    :cond_1
    iget-object v2, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getDocumentPositionInt()I

    move-result p0

    if-ge v0, p0, :cond_2

    return v4

    :cond_2
    return v6

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1, p1}, Lcom/onyx/engine/sdk/TableRow;->compare(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0

    :cond_4
    return v6

    :cond_5
    if-ge v0, v5, :cond_6

    return v7

    :cond_6
    iget-object v1, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/engine/sdk/TableRow;

    iget-object v5, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v5}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v1, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PinPosition;->getDocumentPositionInt()I

    move-result v1

    if-lt v0, v1, :cond_7

    return v6

    :cond_7
    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/TableRow;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/TableRow;->getNodePosition()I

    move-result p0

    if-lt v0, p0, :cond_8

    return v4

    :cond_8
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v3, p1}, Lcom/onyx/engine/sdk/TableRow;->compare(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0

    :cond_9
    return v4

    :cond_a
    invoke-virtual {v1}, Lcom/onyx/engine/sdk/TableRow;->getNodePosition()I

    move-result v5

    const/4 v8, 0x2

    if-ne v2, v8, :cond_e

    if-ge v0, v5, :cond_c

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v3, p1}, Lcom/onyx/engine/sdk/TableRow;->compare(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0

    :cond_b
    return v7

    :cond_c
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {v1, p1}, Lcom/onyx/engine/sdk/TableRow;->compare(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0

    :cond_d
    return v6

    :cond_e
    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/TableRow;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/TableRow;->getNodePosition()I

    move-result p0

    if-ge v0, p0, :cond_10

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {v3, p1}, Lcom/onyx/engine/sdk/TableRow;->compare(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0

    :cond_f
    return v4

    :cond_10
    if-le v0, v5, :cond_12

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {v1, p1}, Lcom/onyx/engine/sdk/TableRow;->compare(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0

    :cond_11
    return v6

    :cond_12
    return v4
.end method

.method private compareSingleTableRow(Lcom/onyx/engine/sdk/TableRow;Lcom/onyx/engine/sdk/PinPosition;)I
    .locals 6

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TableRow;->getNodePosition()I

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PinPosition;->getDocumentPositionInt()I

    move-result v1

    iget-object v2, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/PinPosition;->getDocumentPositionInt()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ge v2, v0, :cond_5

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    if-gt v1, v0, :cond_1

    return v4

    :cond_1
    iget-object v0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getDocumentPositionInt()I

    move-result p0

    if-ge v1, p0, :cond_2

    return v4

    :cond_2
    return v5

    :cond_3
    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, p2}, Lcom/onyx/engine/sdk/TableRow;->compare(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0

    :cond_4
    return v5

    :cond_5
    if-ge v1, v0, :cond_6

    return v3

    :cond_6
    iget-object v0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getDocumentPositionInt()I

    move-result p0

    if-lt v1, p0, :cond_7

    return v5

    :cond_7
    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p1, p2}, Lcom/onyx/engine/sdk/TableRow;->compare(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0

    :cond_8
    return v4

    :cond_9
    invoke-virtual {p2}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/TableRow;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p1, p2}, Lcom/onyx/engine/sdk/TableRow;->compare(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0

    :cond_a
    return v5
.end method

.method private compareWithoutTable(Lcom/onyx/engine/sdk/PinPosition;)I
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getChapterIndex()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PinPosition;->getChapterIndex()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getChapterIndex()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/PinPosition;->getChapterIndex()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getDocumentPositionInt()I

    move-result p1

    iget-object v0, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getDocumentPositionInt()I

    move-result v0

    if-ge p1, v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getDocumentPositionInt()I

    move-result p0

    if-ge p1, p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/onyx/engine/sdk/PageRange;
    .locals 1

    const-class v0, Lcom/onyx/engine/sdk/PageRange;

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/engine/sdk/PageRange;

    return-object p0
.end method


# virtual methods
.method public compare(Lcom/onyx/engine/sdk/PinPosition;)I
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PageRange;->hasTable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/onyx/engine/sdk/PageRange;->compareWithoutTable(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getChapterIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getChapterIndex()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/engine/sdk/TableRow;

    invoke-direct {p0, v0, p1}, Lcom/onyx/engine/sdk/PageRange;->compareSingleTableRow(Lcom/onyx/engine/sdk/TableRow;Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0

    :cond_2
    invoke-direct {p0, p1}, Lcom/onyx/engine/sdk/PageRange;->compareMultipleTableRow(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0
.end method

.method public contains(Lcom/onyx/engine/sdk/PinPosition;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/PageRange;->compare(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public copy()Lcom/onyx/engine/sdk/PageRange;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/PageRange;->copy(Z)Lcom/onyx/engine/sdk/PageRange;

    move-result-object p0

    return-object p0
.end method

.method public copy(Z)Lcom/onyx/engine/sdk/PageRange;
    .locals 1

    .line 5
    new-instance v0, Lcom/onyx/engine/sdk/PageRange;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/PageRange;-><init>()V

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/onyx/engine/sdk/PageRange;->copy(Lcom/onyx/engine/sdk/PageRange;Z)V

    return-object v0
.end method

.method public copy(Lcom/onyx/engine/sdk/PageRange;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/onyx/engine/sdk/PageRange;->copy(Lcom/onyx/engine/sdk/PageRange;Z)V

    return-void
.end method

.method public copy(Lcom/onyx/engine/sdk/PageRange;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    iget-object v1, p1, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/PinPosition;->copy(Lcom/onyx/engine/sdk/PinPosition;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    iget-object v1, p1, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/PinPosition;->copy(Lcom/onyx/engine/sdk/PinPosition;)V

    .line 3
    iget-object p1, p1, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/onyx/engine/sdk/Utils;->copyTableRowList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/onyx/engine/sdk/PageRange;

    iget-object v2, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    iget-object v3, p1, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    iget-object v3, p1, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    iget-object p1, p1, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getEnd()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getEndChapterID()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    iget-object p0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterID:Ljava/lang/String;

    return-object p0
.end method

.method public getEndChapterIndex()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    return p0
.end method

.method public getEndChapterLength()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getChapterLength()I

    move-result p0

    return p0
.end method

.method public getEndPositionInt()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result p0

    return p0
.end method

.method public getStart()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getStartChapterID()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    iget-object p0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterID:Ljava/lang/String;

    return-object p0
.end method

.method public getStartChapterIndex()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    iget p0, p0, Lcom/onyx/engine/sdk/PinPosition;->chapterIndex:I

    return p0
.end method

.method public getStartChapterLength()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getChapterLength()I

    move-result p0

    return p0
.end method

.method public getStartPositionInt()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result p0

    return p0
.end method

.method public getTableRows()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TableRow;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    return-object p0
.end method

.method public hasTable()Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

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

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    iget-object v1, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isChapterFirstPage()Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->isChapterStart()Z

    move-result p0

    return p0
.end method

.method public isChapterLastPage()Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->isChapterEnd()Z

    move-result p0

    return p0
.end method

.method public setEnd(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/PageRange;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setStart(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/PageRange;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setTableRows(Ljava/util/List;)Lcom/onyx/engine/sdk/PageRange;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TableRow;",
            ">;)",
            "Lcom/onyx/engine/sdk/PageRange;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageRange{start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/PageRange;->start:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/PageRange;->end:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \ntableRows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/engine/sdk/PageRange;->tableRows:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
