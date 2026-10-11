.class public final synthetic Lcom/sunia/HTREnginev2/k9l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k9l;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k9l;->e:Ljava/util/List;

    check-cast p1, Ljava/net/URI;

    invoke-static {p0, p1}, Lnet/sf/saxon/lib/ProtocolRestrictor;->d(Ljava/util/List;Ljava/net/URI;)Z

    move-result p0

    return p0
.end method
