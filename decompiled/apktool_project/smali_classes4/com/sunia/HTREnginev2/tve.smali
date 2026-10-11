.class public final Lcom/sunia/HTREnginev2/tve;
.super Lcom/sunia/HTREnginev2/vve;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/vve;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/sunia/HTREnginev2/tve;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/tve;->d:Z

    .line 4
    iput p1, p0, Lcom/sunia/HTREnginev2/tve;->c:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/vve;-><init>(I)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/tve;->d:Z

    .line 7
    iput p3, p0, Lcom/sunia/HTREnginev2/tve;->c:I

    .line 8
    iput-object p2, p0, Lcom/sunia/HTREnginev2/tve;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tve;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/tve;->c:I

    return p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/tve;->d:Z

    return p0
.end method
