.class public final synthetic Lcom/sunia/HTREnginev2/llo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/serialize/XMLEmitter;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/serialize/XMLEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/llo;->a:Lnet/sf/saxon/serialize/XMLEmitter;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/llo;->a:Lnet/sf/saxon/serialize/XMLEmitter;

    invoke-static {p0, p1}, Lnet/sf/saxon/serialize/XMLEmitter;->e(Lnet/sf/saxon/serialize/XMLEmitter;I)Z

    move-result p0

    return p0
.end method
