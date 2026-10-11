.class public final synthetic Lcom/sunia/HTREnginev2/yeh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/serialize/HTMLURIEscaper;

.field public final synthetic f:Lnet/sf/saxon/om/NodeName;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/serialize/HTMLURIEscaper;Lnet/sf/saxon/om/NodeName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yeh;->e:Lnet/sf/saxon/serialize/HTMLURIEscaper;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/yeh;->f:Lnet/sf/saxon/om/NodeName;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/yeh;->e:Lnet/sf/saxon/serialize/HTMLURIEscaper;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yeh;->f:Lnet/sf/saxon/om/NodeName;

    check-cast p1, Lnet/sf/saxon/om/AttributeInfo;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/serialize/HTMLURIEscaper;->c(Lnet/sf/saxon/serialize/HTMLURIEscaper;Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/AttributeInfo;

    move-result-object p0

    return-object p0
.end method
