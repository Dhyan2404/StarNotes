.class public final synthetic Lcom/sunia/HTREnginev2/jal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/query/UpdateAgent;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/Query;

.field public final synthetic b:Lnet/sf/saxon/s9api/Serializer;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/Query;Lnet/sf/saxon/s9api/Serializer;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jal;->a:Lnet/sf/saxon/Query;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jal;->b:Lnet/sf/saxon/s9api/Serializer;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/jal;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final update(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/Controller;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jal;->a:Lnet/sf/saxon/Query;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/jal;->b:Lnet/sf/saxon/s9api/Serializer;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jal;->c:Ljava/util/List;

    invoke-static {v0, v1, p0, p1, p2}, Lnet/sf/saxon/Query;->b(Lnet/sf/saxon/Query;Lnet/sf/saxon/s9api/Serializer;Ljava/util/List;Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/Controller;)V

    return-void
.end method
