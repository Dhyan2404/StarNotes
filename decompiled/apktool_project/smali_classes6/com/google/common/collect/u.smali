.class public final synthetic Lcom/google/common/collect/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lcom/google/common/collect/Lists$TransformingRandomAccessList;

.field public final synthetic f:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Lists$TransformingRandomAccessList;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/Lists$TransformingRandomAccessList;

    iput-object p2, p0, Lcom/google/common/collect/u;->f:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/u;->e:Lcom/google/common/collect/Lists$TransformingRandomAccessList;

    iget-object p0, p0, Lcom/google/common/collect/u;->f:Ljava/util/function/Predicate;

    invoke-static {v0, p0, p1}, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->a(Lcom/google/common/collect/Lists$TransformingRandomAccessList;Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
