.class public final Lcom/sunia/HTREnginev2/sve;
.super Lcom/sunia/HTREnginev2/vve;
.source "SourceFile"


# static fields
.field public static final c:C = '$'


# instance fields
.field public final b:C


# direct methods
.method public constructor <init>(IC)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/vve;-><init>(I)V

    iput-char p2, p0, Lcom/sunia/HTREnginev2/sve;->b:C

    return-void
.end method


# virtual methods
.method public b()C
    .locals 0

    iget-char p0, p0, Lcom/sunia/HTREnginev2/sve;->b:C

    return p0
.end method

.method public c()Z
    .locals 1

    iget-char p0, p0, Lcom/sunia/HTREnginev2/sve;->b:C

    const/16 v0, 0x24

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
