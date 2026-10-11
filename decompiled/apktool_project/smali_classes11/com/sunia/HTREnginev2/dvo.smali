.class public final synthetic Lcom/sunia/HTREnginev2/dvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/s9api/streams/XdmStream;

.field public final synthetic f:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/s9api/streams/XdmStream;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dvo;->e:Lnet/sf/saxon/s9api/streams/XdmStream;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/dvo;->f:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dvo;->e:Lnet/sf/saxon/s9api/streams/XdmStream;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dvo;->f:Ljava/util/function/Predicate;

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/s9api/streams/XdmStream;->j(Lnet/sf/saxon/s9api/streams/XdmStream;Ljava/util/function/Predicate;Lnet/sf/saxon/s9api/XdmItem;)V

    return-void
.end method
