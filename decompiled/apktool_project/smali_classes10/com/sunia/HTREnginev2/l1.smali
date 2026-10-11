.class public Lcom/sunia/HTREnginev2/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[Lcom/sunia/HTREnginev2/l1;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:[Lcom/sunia/HTREnginev2/l1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sunia/HTREnginev2/l1;

    sput-object v0, Lcom/sunia/HTREnginev2/l1;->d:[Lcom/sunia/HTREnginev2/l1;

    return-void
.end method

.method public varargs constructor <init>(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/l1;->a:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/l1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/l1;->c:[Lcom/sunia/HTREnginev2/l1;

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/sunia/HTREnginev2/l1;
    .locals 2

    .line 2
    new-instance v0, Lcom/sunia/HTREnginev2/l1;

    sget-object v1, Lcom/sunia/HTREnginev2/l1;->d:[Lcom/sunia/HTREnginev2/l1;

    invoke-direct {v0, p0, p1, v1}, Lcom/sunia/HTREnginev2/l1;-><init>(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)V

    return-object v0
.end method

.method public static varargs a(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)Lcom/sunia/HTREnginev2/l1;
    .locals 1

    .line 3
    new-instance v0, Lcom/sunia/HTREnginev2/l1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/l1;-><init>(ILjava/lang/String;[Lcom/sunia/HTREnginev2/l1;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sunia/HTREnginev2/l1;->a:I

    return p0
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 4

    const/16 v0, 0x28

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sunia/HTREnginev2/l1;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/l1;->b:Ljava/lang/String;

    const-string v2, "\\\""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p0, Lcom/sunia/HTREnginev2/l1;->c:[Lcom/sunia/HTREnginev2/l1;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    const/16 v3, 0x20

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v2, p1}, Lcom/sunia/HTREnginev2/l1;->a(Ljava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x29

    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public b()[Lcom/sunia/HTREnginev2/l1;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l1;->c:[Lcom/sunia/HTREnginev2/l1;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l1;->b:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/l1;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
