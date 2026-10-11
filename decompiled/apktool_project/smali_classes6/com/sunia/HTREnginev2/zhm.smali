.class public final synthetic Lcom/sunia/HTREnginev2/zhm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zhm;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zhm;->e:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets$a;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
