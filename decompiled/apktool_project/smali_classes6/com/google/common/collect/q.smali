.class public final synthetic Lcom/google/common/collect/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lcom/google/common/collect/ImmutableSet$Indexed;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/ImmutableSet$Indexed;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/ImmutableSet$Indexed;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/ImmutableSet$Indexed;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Indexed;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
