.class public final synthetic Lcom/sunia/HTREnginev2/j7e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/expr/instruct/ComponentTracer;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/instruct/ComponentTracer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/j7e;->e:Lnet/sf/saxon/expr/instruct/ComponentTracer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/j7e;->e:Lnet/sf/saxon/expr/instruct/ComponentTracer;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/instruct/ComponentTracer;->d(Lnet/sf/saxon/expr/instruct/ComponentTracer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
