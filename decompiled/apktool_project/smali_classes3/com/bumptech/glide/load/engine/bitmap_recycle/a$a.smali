.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/e5l;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/bitmap_recycle/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/engine/bitmap_recycle/a$b;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/a$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;->a:Lcom/bumptech/glide/load/engine/bitmap_recycle/a$b;

    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/qn;->c(Lcom/sunia/HTREnginev2/e5l;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;->b:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;

    iget p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;->b:I

    iget p1, p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;->b:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;->b:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/a$a;->b:I

    invoke-static {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
