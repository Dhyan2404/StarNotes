.class public Lcom/onyx/engine/sdk/FontSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/engine/sdk/FontSpec$Origin;
    }
.end annotation


# instance fields
.field private family:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/onyx/engine/sdk/FontSpec;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/onyx/engine/sdk/FontSpec$Origin;->USER:Lcom/onyx/engine/sdk/FontSpec$Origin;

    iput-object v0, p0, Lcom/onyx/engine/sdk/FontSpec;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    .line 5
    iput-object p1, p0, Lcom/onyx/engine/sdk/FontSpec;->family:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/onyx/engine/sdk/FontSpec$Origin;->USER:Lcom/onyx/engine/sdk/FontSpec$Origin;

    iput-object v0, p0, Lcom/onyx/engine/sdk/FontSpec;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    .line 8
    iput-object p1, p0, Lcom/onyx/engine/sdk/FontSpec;->family:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/onyx/engine/sdk/FontSpec;->fontWeight:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/onyx/engine/sdk/FontSpec;->fontStyle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/onyx/engine/sdk/FontSpec$Origin;->USER:Lcom/onyx/engine/sdk/FontSpec$Origin;

    iput-object v0, p0, Lcom/onyx/engine/sdk/FontSpec;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    .line 19
    iput-object p1, p0, Lcom/onyx/engine/sdk/FontSpec;->family:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/onyx/engine/sdk/FontSpec;->fontWeight:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/onyx/engine/sdk/FontSpec;->fontStyle:Ljava/lang/String;

    .line 22
    invoke-static {p4}, Lcom/onyx/engine/sdk/FontSpec$Origin;->valueOf(I)Lcom/onyx/engine/sdk/FontSpec$Origin;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/FontSpec;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/engine/sdk/FontSpec$Origin;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/onyx/engine/sdk/FontSpec$Origin;->USER:Lcom/onyx/engine/sdk/FontSpec$Origin;

    .line 13
    iput-object p1, p0, Lcom/onyx/engine/sdk/FontSpec;->family:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/onyx/engine/sdk/FontSpec;->fontWeight:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/onyx/engine/sdk/FontSpec;->fontStyle:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/onyx/engine/sdk/FontSpec;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    return-void
.end method

.method public static parseList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/engine/sdk/FontSpec;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/engine/sdk/FontSpec$1;

    invoke-direct {v0}, Lcom/onyx/engine/sdk/FontSpec$1;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/engine/sdk/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const-class v0, Lcom/onyx/engine/sdk/FontSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse fontSpec list failed, json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
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
    check-cast p1, Lcom/onyx/engine/sdk/FontSpec;

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontSpec;->family:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/FontSpec;->family:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontSpec;->fontWeight:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/FontSpec;->fontWeight:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontSpec;->fontStyle:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/engine/sdk/FontSpec;->fontStyle:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontSpec;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    iget-object p1, p1, Lcom/onyx/engine/sdk/FontSpec;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getFamily()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontSpec;->family:Ljava/lang/String;

    return-object p0
.end method

.method public getFontStyle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontSpec;->fontStyle:Ljava/lang/String;

    return-object p0
.end method

.method public getFontWeight()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontSpec;->fontWeight:Ljava/lang/String;

    return-object p0
.end method

.method public getOrigin()Lcom/onyx/engine/sdk/FontSpec$Origin;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontSpec;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/engine/sdk/FontSpec;->family:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/engine/sdk/FontSpec;->fontWeight:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontSpec;->fontStyle:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontSpec;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setFamily(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/FontSpec;->family:Ljava/lang/String;

    return-void
.end method

.method public setFontStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/FontSpec;->fontStyle:Ljava/lang/String;

    return-void
.end method

.method public setFontWeight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/FontSpec;->fontWeight:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/onyx/engine/sdk/FontSpec$Origin;->valueOf(I)Lcom/onyx/engine/sdk/FontSpec$Origin;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/engine/sdk/FontSpec;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    return-void
.end method

.method public setOrigin(Lcom/onyx/engine/sdk/FontSpec$Origin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onyx/engine/sdk/FontSpec;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontSpec{family=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/engine/sdk/FontSpec;->family:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fontWeight=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontSpec;->fontWeight:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", fontStyle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/engine/sdk/FontSpec;->fontStyle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/engine/sdk/FontSpec;->origin:Lcom/onyx/engine/sdk/FontSpec$Origin;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
