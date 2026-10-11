.class public Lcom/onyx/engine/sdk/archive/FileHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field isDirectory:Z

.field isEncrypted:Z

.field path:Ljava/lang/String;

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/archive/FileHeader;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/engine/sdk/archive/FileHeader$1;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/archive/FileHeader$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/archive/FileHeader;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/onyx/engine/sdk/archive/FileHeader;->size:I

    return p0
.end method

.method public isDirectory()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/archive/FileHeader;->isDirectory:Z

    return p0
.end method

.method public isEncrypted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/archive/FileHeader;->isEncrypted:Z

    return p0
.end method

.method public setDirectory(Z)Lcom/onyx/engine/sdk/archive/FileHeader;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/archive/FileHeader;->isDirectory:Z

    return-object p0
.end method

.method public setEncrypted(Z)Lcom/onyx/engine/sdk/archive/FileHeader;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/archive/FileHeader;->isEncrypted:Z

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/onyx/engine/sdk/archive/FileHeader;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/archive/FileHeader;->path:Ljava/lang/String;

    return-object p0
.end method

.method public setSize(I)Lcom/onyx/engine/sdk/archive/FileHeader;
    .locals 0

    iput p1, p0, Lcom/onyx/engine/sdk/archive/FileHeader;->size:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileHeader{path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/archive/FileHeader;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/engine/sdk/archive/FileHeader;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isDirectory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/engine/sdk/archive/FileHeader;->isDirectory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEncrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/archive/FileHeader;->isEncrypted:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
