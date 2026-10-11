.class public Lcom/onyx/engine/sdk/TableCell;
.super Lcom/onyx/engine/sdk/PageRange;
.source "SourceFile"


# instance fields
.field pin:Lcom/onyx/engine/sdk/PinPosition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/onyx/engine/sdk/PageRange;-><init>()V

    .line 2
    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/PinPosition;-><init>()V

    iput-object v0, p0, Lcom/onyx/engine/sdk/TableCell;->pin:Lcom/onyx/engine/sdk/PinPosition;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/Chapter;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/onyx/engine/sdk/PageRange;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    .line 4
    new-instance v0, Lcom/onyx/engine/sdk/PinPosition;

    invoke-direct {v0, p1}, Lcom/onyx/engine/sdk/PinPosition;-><init>(Lcom/onyx/engine/sdk/Chapter;)V

    iput-object v0, p0, Lcom/onyx/engine/sdk/TableCell;->pin:Lcom/onyx/engine/sdk/PinPosition;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/engine/sdk/PinPosition;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/onyx/engine/sdk/PageRange;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/onyx/engine/sdk/TableCell;->pin:Lcom/onyx/engine/sdk/PinPosition;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/onyx/engine/sdk/PageRange;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/engine/sdk/TableCell;->copy()Lcom/onyx/engine/sdk/TableCell;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy(Z)Lcom/onyx/engine/sdk/PageRange;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/TableCell;->copy(Z)Lcom/onyx/engine/sdk/TableCell;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lcom/onyx/engine/sdk/TableCell;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/onyx/engine/sdk/TableCell;->copy(Z)Lcom/onyx/engine/sdk/TableCell;

    move-result-object p0

    return-object p0
.end method

.method public copy(Z)Lcom/onyx/engine/sdk/TableCell;
    .locals 1

    .line 6
    new-instance v0, Lcom/onyx/engine/sdk/TableCell;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/TableCell;-><init>()V

    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/onyx/engine/sdk/TableCell;->copy(Lcom/onyx/engine/sdk/TableCell;Z)V

    return-object v0
.end method

.method public copy(Lcom/onyx/engine/sdk/TableCell;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/onyx/engine/sdk/TableCell;->copy(Lcom/onyx/engine/sdk/TableCell;Z)V

    return-void
.end method

.method public copy(Lcom/onyx/engine/sdk/TableCell;Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/onyx/engine/sdk/TableCell;->pin:Lcom/onyx/engine/sdk/PinPosition;

    iget-object v1, p1, Lcom/onyx/engine/sdk/TableCell;->pin:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Lcom/onyx/engine/sdk/PinPosition;->copy(Lcom/onyx/engine/sdk/PinPosition;)V

    .line 4
    invoke-super {p0, p1, p2}, Lcom/onyx/engine/sdk/PageRange;->copy(Lcom/onyx/engine/sdk/PageRange;Z)V

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
    check-cast p1, Lcom/onyx/engine/sdk/TableCell;

    iget-object v2, p0, Lcom/onyx/engine/sdk/TableCell;->pin:Lcom/onyx/engine/sdk/PinPosition;

    iget-object v3, p1, Lcom/onyx/engine/sdk/TableCell;->pin:Lcom/onyx/engine/sdk/PinPosition;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

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

.method public getPin()Lcom/onyx/engine/sdk/PinPosition;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/TableCell;->pin:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/engine/sdk/TableCell;->pin:Lcom/onyx/engine/sdk/PinPosition;

    invoke-super {p0}, Lcom/onyx/engine/sdk/PageRange;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setPin(Lcom/onyx/engine/sdk/PinPosition;)Lcom/onyx/engine/sdk/TableCell;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/TableCell;->pin:Lcom/onyx/engine/sdk/PinPosition;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TableCell{pin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/TableCell;->pin:Lcom/onyx/engine/sdk/PinPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \nstart="

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
