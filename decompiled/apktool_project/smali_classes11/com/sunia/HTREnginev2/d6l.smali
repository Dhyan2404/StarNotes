.class public final synthetic Lcom/sunia/HTREnginev2/d6l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:Ljava/util/regex/Pattern;


# direct methods
.method public synthetic constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d6l;->e:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d6l;->e:Ljava/util/regex/Pattern;

    check-cast p1, Lnet/sf/saxon/s9api/XdmItem;

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/streams/Predicates;->a(Ljava/util/regex/Pattern;Lnet/sf/saxon/s9api/XdmItem;)Z

    move-result p0

    return p0
.end method
