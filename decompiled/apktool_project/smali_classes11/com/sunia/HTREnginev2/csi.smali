.class public final synthetic Lcom/sunia/HTREnginev2/csi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/trans/KeyIndex;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/trans/KeyIndex;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/csi;->a:Lnet/sf/saxon/trans/KeyIndex;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/csi;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/csi;->a:Lnet/sf/saxon/trans/KeyIndex;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/csi;->b:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/trans/KeyIndex;->a(Lnet/sf/saxon/trans/KeyIndex;Ljava/util/List;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
