.class public Landroidx/recyclerview/widget/DiffUtil$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:[I

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$b;->a:[I

    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$b;->b:I

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/DiffUtil$b;->a:[I

    return-object p0
.end method

.method public b(I)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/DiffUtil$b;->a:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$b;->a:[I

    iget p0, p0, Landroidx/recyclerview/widget/DiffUtil$b;->b:I

    add-int/2addr p1, p0

    aget p0, v0, p1

    return p0
.end method

.method public d(II)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$b;->a:[I

    iget p0, p0, Landroidx/recyclerview/widget/DiffUtil$b;->b:I

    add-int/2addr p1, p0

    aput p2, v0, p1

    return-void
.end method
