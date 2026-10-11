.class public Lnet/sf/saxon/type/TypeHierarchy$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/TypeHierarchy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/type/ItemType;

.field public b:Lnet/sf/saxon/type/ItemType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/type/TypeHierarchy$b;->a:Lnet/sf/saxon/type/ItemType;

    iput-object p2, p0, Lnet/sf/saxon/type/TypeHierarchy$b;->b:Lnet/sf/saxon/type/ItemType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/type/TypeHierarchy$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/type/TypeHierarchy$b;

    iget-object v0, p0, Lnet/sf/saxon/type/TypeHierarchy$b;->a:Lnet/sf/saxon/type/ItemType;

    iget-object v2, p1, Lnet/sf/saxon/type/TypeHierarchy$b;->a:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/type/TypeHierarchy$b;->b:Lnet/sf/saxon/type/ItemType;

    iget-object p1, p1, Lnet/sf/saxon/type/TypeHierarchy$b;->b:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/type/TypeHierarchy$b;->a:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lnet/sf/saxon/type/TypeHierarchy$b;->b:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
