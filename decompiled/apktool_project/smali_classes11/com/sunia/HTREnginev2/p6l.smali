.class public final synthetic Lcom/sunia/HTREnginev2/p6l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p6l;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/p6l;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p6l;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p6l;->f:Ljava/lang/String;

    check-cast p1, Lnet/sf/saxon/s9api/XdmNode;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/s9api/streams/Predicates;->g(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)Z

    move-result p0

    return p0
.end method
