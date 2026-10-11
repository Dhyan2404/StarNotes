.class public final synthetic Lcom/sunia/HTREnginev2/d0o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson2/filter/ValueFilter;


# instance fields
.field public final synthetic a:Ljava/util/function/Predicate;

.field public final synthetic b:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d0o;->a:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/d0o;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d0o;->a:Ljava/util/function/Predicate;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d0o;->b:Ljava/util/function/Function;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson2/filter/ValueFilter;->g(Ljava/util/function/Predicate;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
