.class public final Lcom/sunia/HTREnginev2/z00$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/z00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/sunia/HTREnginev2/z00$b;

.field public b:Lcom/sunia/HTREnginev2/z00$b;

.field public c:I

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/z00$b;->d:Z

    .line 3
    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/z00$b;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/z00$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/z00$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/sunia/HTREnginev2/z00$b;)V
    .locals 0

    if-nez p1, :cond_0

    iput-object p2, p0, Lcom/sunia/HTREnginev2/z00$b;->a:Lcom/sunia/HTREnginev2/z00$b;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/sunia/HTREnginev2/z00$b;->b:Lcom/sunia/HTREnginev2/z00$b;

    :goto_0
    return-void
.end method

.method public b(Z)Lcom/sunia/HTREnginev2/z00$b;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/z00$b;->b:Lcom/sunia/HTREnginev2/z00$b;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/z00$b;->a:Lcom/sunia/HTREnginev2/z00$b;

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[leaf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/z00$b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sunia/HTREnginev2/z00$b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", canBeFill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/z00$b;->d:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
