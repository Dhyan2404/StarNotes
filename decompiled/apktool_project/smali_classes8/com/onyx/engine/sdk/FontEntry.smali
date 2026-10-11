.class public Lcom/onyx/engine/sdk/FontEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fontFamily:Ljava/lang/String;

.field private fontIndex:I

.field private fontPath:Ljava/lang/String;

.field private fontStyle:Ljava/lang/String;

.field private fontWeight:Ljava/lang/String;

.field private origin:Lcom/onyx/engine/sdk/FontSpec$Origin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/onyx/engine/sdk/FontSpec$Origin;->USER:Lcom/onyx/engine/sdk/FontSpec$Origin;

    iput-object v0, p0, Lcom/onyx/engine/sdk/FontEntry;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/onyx/engine/sdk/FontSpec$Origin;->USER:Lcom/onyx/engine/sdk/FontSpec$Origin;

    iput-object v0, p0, Lcom/onyx/engine/sdk/FontEntry;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    .line 5
    iput-object p1, p0, Lcom/onyx/engine/sdk/FontEntry;->fontPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
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
    check-cast p1, Lcom/onyx/engine/sdk/FontEntry;

    iget v2, p0, Lcom/onyx/engine/sdk/FontEntry;->fontIndex:I

    iget v3, p1, Lcom/onyx/engine/sdk/FontEntry;->fontIndex:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontEntry;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    iget-object v3, p1, Lcom/onyx/engine/sdk/FontEntry;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontEntry;->fontPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/FontEntry;->fontPath:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontEntry;->fontFamily:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/FontEntry;->fontFamily:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontEntry;->fontStyle:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/FontEntry;->fontStyle:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontEntry;->fontWeight:Ljava/lang/String;

    iget-object p1, p1, Lcom/onyx/engine/sdk/FontEntry;->fontWeight:Ljava/lang/String;

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

.method public getFontFamily()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontEntry;->fontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public getFontIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/FontEntry;->fontIndex:I

    return p0
.end method

.method public getFontPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontEntry;->fontPath:Ljava/lang/String;

    return-object p0
.end method

.method public getFontStyle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontEntry;->fontStyle:Ljava/lang/String;

    return-object p0
.end method

.method public getFontWeight()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontEntry;->fontWeight:Ljava/lang/String;

    return-object p0
.end method

.method public getOrigin()Lcom/onyx/engine/sdk/FontSpec$Origin;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontEntry;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    return-object p0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/onyx/engine/sdk/FontEntry;->fontPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/engine/sdk/FontEntry;->fontFamily:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontEntry;->fontStyle:Ljava/lang/String;

    iget-object v3, p0, Lcom/onyx/engine/sdk/FontEntry;->fontWeight:Ljava/lang/String;

    iget v4, p0, Lcom/onyx/engine/sdk/FontEntry;->fontIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/engine/sdk/FontEntry;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setFontFamily(Ljava/lang/String;)Lcom/onyx/engine/sdk/FontEntry;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/FontEntry;->fontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public setFontIndex(I)Lcom/onyx/engine/sdk/FontEntry;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/FontEntry;->fontIndex:I

    return-object p0
.end method

.method public setFontPath(Ljava/lang/String;)Lcom/onyx/engine/sdk/FontEntry;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/FontEntry;->fontPath:Ljava/lang/String;

    return-object p0
.end method

.method public setFontStyle(Ljava/lang/String;)Lcom/onyx/engine/sdk/FontEntry;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/FontEntry;->fontStyle:Ljava/lang/String;

    return-object p0
.end method

.method public setFontWeight(Ljava/lang/String;)Lcom/onyx/engine/sdk/FontEntry;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/FontEntry;->fontWeight:Ljava/lang/String;

    return-object p0
.end method

.method public setOrigin(I)Lcom/onyx/engine/sdk/FontEntry;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/onyx/engine/sdk/FontSpec$Origin;->valueOf(I)Lcom/onyx/engine/sdk/FontSpec$Origin;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/FontEntry;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    return-object p0
.end method

.method public setOrigin(Lcom/onyx/engine/sdk/FontSpec$Origin;)Lcom/onyx/engine/sdk/FontEntry;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/onyx/engine/sdk/FontEntry;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontEntry{fontPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/FontEntry;->fontPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fontFamily=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontEntry;->fontFamily:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fontStyle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontEntry;->fontStyle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fontWeight=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontEntry;->fontWeight:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", fontIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/FontEntry;->fontIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontEntry;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
