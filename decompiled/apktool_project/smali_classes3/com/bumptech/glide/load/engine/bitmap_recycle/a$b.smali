.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/a$b;
.super Lcom/sunia/HTREnginev2/qn;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/qn<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;",
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

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$b;->d()Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;

    move-result-object p0

    return-object p0
.end method

.method public d()Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/a$b;)V

    return-object v0
.end method

.method public e(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/qn;->b()Lcom/sunia/HTREnginev2/e5l;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;->b(I)V

    return-object p0
.end method
