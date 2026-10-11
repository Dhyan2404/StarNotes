.class public Lcom/onyx/engine/sdk/TableRow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field pin:Lcom/onyx/engine/sdk/PinPosition;

.field tableCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TableCell;",
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

    iput-object v0, p0, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/Chapter;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {v0, p1}, Lcom/onyx/engine/sdk/PinPosition;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    iput-object v0, p0, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    return-void
.end method


# virtual methods
.method public compare(Lcom/onyx/engine/sdk/PinPosition;)I
    .locals 4

    iget-object v0, p0, Lcom/onyx/engine/sdk/TableRow;->tableCells:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/engine/sdk/TableRow;->tableCells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/engine/sdk/TableCell;

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/engine/sdk/TableCell;->getPin()Lcom/onyx/engine/sdk/PinPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/engine/sdk/PinPosition;->getXpath()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/engine/sdk/Utils;->startWith(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/onyx/engine/sdk/PageRange;->compare(Lcom/onyx/engine/sdk/PinPosition;)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getXpathString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0}, Lcom/onyx/engine/sdk/PinPosition;->getXpathString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/engine/sdk/TableRow;->tableCells:Ljava/util/List;

    invoke-static {v1}, Lcom/onyx/engine/sdk/Utils;->getTableCellXpath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "position not found in table row, position xpath: %s, row xpath: %s, tableCells xpath: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/engine/sdk/PinPosition;->getXpathString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Empty table row: %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public copy()Lcom/onyx/engine/sdk/TableRow;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/TableRow;->copy(Z)Lcom/onyx/engine/sdk/TableRow;

    move-result-object p0

    return-object p0
.end method

.method public copy(Z)Lcom/onyx/engine/sdk/TableRow;
    .locals 1

    .line 4
    new-instance v0, Lcom/onyx/engine/sdk/TableRow;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/TableRow;-><init>()V

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/onyx/engine/sdk/TableRow;->copy(Lcom/onyx/engine/sdk/TableRow;Z)V

    return-object v0
.end method

.method public copy(Lcom/onyx/engine/sdk/TableRow;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/onyx/engine/sdk/TableRow;->copy(Lcom/onyx/engine/sdk/TableRow;Z)V

    return-void
.end method

.method public copy(Lcom/onyx/engine/sdk/TableRow;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    iget-object v1, p1, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/PinPosition;->copy(Lcom/onyx/engine/sdk/PinPosition;)V

    .line 2
    iget-object p1, p1, Lcom/onyx/engine/sdk/TableRow;->tableCells:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/onyx/engine/sdk/Utils;->copyTableCellList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/TableRow;->tableCells:Ljava/util/List;

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
    check-cast p1, Lcom/onyx/engine/sdk/TableRow;

    iget-object v2, p0, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    iget-object v3, p1, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableRow;->tableCells:Ljava/util/List;

    iget-object p1, p1, Lcom/onyx/engine/sdk/TableRow;->tableCells:Ljava/util/List;

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

.method public getNodePosition()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getNodePosition()I

    move-result p0

    return p0
.end method

.method public getPin()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public getPositionInt()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getPositionInt()I

    move-result p0

    return p0
.end method

.method public getPositionIntWithoutOffset()I
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {p0}, Lcom/onyx/engine/sdk/PinPosition;->getPositionIntWithoutOffset()I

    move-result p0

    return p0
.end method

.method public getTableCells()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TableCell;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableRow;->tableCells:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableRow;->tableCells:Ljava/util/List;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setPin(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/TableRow;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public setTableCells(Ljava/util/List;)Lcom/onyx/engine/sdk/TableRow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/TableCell;",
            ">;)",
            "Lcom/onyx/engine/sdk/TableRow;"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/engine/sdk/TableRow;->tableCells:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TableRow{pin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/TableRow;->pin:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \ntableCells="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableRow;->tableCells:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
