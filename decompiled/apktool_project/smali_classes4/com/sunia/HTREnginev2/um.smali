.class public final Lcom/sunia/HTREnginev2/um;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/um;->a:I

    iput p4, p0, Lcom/sunia/HTREnginev2/um;->b:I

    iput p2, p0, Lcom/sunia/HTREnginev2/um;->c:I

    iput p3, p0, Lcom/sunia/HTREnginev2/um;->d:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/sunia/HTREnginev2/um;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/um;->a:I

    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/um;->b:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/um;->e:I

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/um;->d:I

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/um;->c:I

    return p0
.end method
