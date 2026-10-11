.class public Lcom/sunia/HTREnginev2/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:I


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/e$a;->c:I

    return p0
.end method

.method public b()F
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/e$a;->a:F

    return p0
.end method

.method public c()F
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/e$a;->b:F

    return p0
.end method
