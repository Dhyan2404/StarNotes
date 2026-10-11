.class public Lcom/sunia/HTREnginev2/nh$b;
.super Lcom/sunia/HTREnginev2/qn;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/nh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/qn<",
        "Lcom/sunia/HTREnginev2/nh$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/qn;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/sunia/HTREnginev2/e5l;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/nh$b;->d()Lcom/sunia/HTREnginev2/nh$a;

    move-result-object p0

    return-object p0
.end method

.method public d()Lcom/sunia/HTREnginev2/nh$a;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/nh$a;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/nh$a;-><init>(Lcom/sunia/HTREnginev2/nh$b;)V

    return-object v0
.end method

.method public e(IILandroid/graphics/Bitmap$Config;)Lcom/sunia/HTREnginev2/nh$a;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/qn;->b()Lcom/sunia/HTREnginev2/e5l;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/nh$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/nh$a;->b(IILandroid/graphics/Bitmap$Config;)V

    return-object p0
.end method
