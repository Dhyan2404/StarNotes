.class public final synthetic Lcom/sunia/HTREnginev2/xuo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/s9api/streams/XdmCollectors$j;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/s9api/streams/XdmCollectors$j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xuo;->e:Lnet/sf/saxon/s9api/streams/XdmCollectors$j;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xuo;->e:Lnet/sf/saxon/s9api/streams/XdmCollectors$j;

    check-cast p1, Ljava/util/List;

    check-cast p2, Lnet/sf/saxon/s9api/XdmItem;

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/s9api/streams/XdmCollectors$j;->b(Lnet/sf/saxon/s9api/streams/XdmCollectors$j;Ljava/util/List;Lnet/sf/saxon/s9api/XdmItem;)V

    return-void
.end method
