.class public final synthetic Lcom/sunia/HTREnginev2/o6l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/s9api/XdmNodeKind;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/s9api/XdmNodeKind;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/o6l;->e:Lnet/sf/saxon/s9api/XdmNodeKind;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o6l;->e:Lnet/sf/saxon/s9api/XdmNodeKind;

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Predicates;->o(Lnet/sf/saxon/s9api/XdmNodeKind;Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method
