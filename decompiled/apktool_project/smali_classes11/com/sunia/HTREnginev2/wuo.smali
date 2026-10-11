.class public final synthetic Lcom/sunia/HTREnginev2/wuo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/s9api/streams/XdmCollectors$j;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/s9api/streams/XdmCollectors$j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wuo;->e:Lnet/sf/saxon/s9api/streams/XdmCollectors$j;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wuo;->e:Lnet/sf/saxon/s9api/streams/XdmCollectors$j;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/s9api/streams/XdmCollectors$j;->a(Lnet/sf/saxon/s9api/streams/XdmCollectors$j;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
