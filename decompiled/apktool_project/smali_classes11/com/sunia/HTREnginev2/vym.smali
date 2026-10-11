.class public final synthetic Lcom/sunia/HTREnginev2/vym;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/pattern/NodeTest;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/pattern/NodeTest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vym;->e:Lnet/sf/saxon/pattern/NodeTest;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vym;->e:Lnet/sf/saxon/pattern/NodeTest;

    check-cast p1, Lnet/sf/saxon/s9api/XdmNode;

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Steps;->a(Lnet/sf/saxon/pattern/NodeTest;Lnet/sf/saxon/s9api/XdmNode;)Z

    move-result p0

    return p0
.end method
