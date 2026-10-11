.class public final synthetic Lcom/sunia/HTREnginev2/esi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lnet/sf/saxon/lib/StringCollator;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lnet/sf/saxon/lib/StringCollator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/esi;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/esi;->b:Lnet/sf/saxon/lib/StringCollator;

    iput p3, p0, Lcom/sunia/HTREnginev2/esi;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/esi;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/esi;->b:Lnet/sf/saxon/lib/StringCollator;

    iget p0, p0, Lcom/sunia/HTREnginev2/esi;->c:I

    invoke-static {v0, v1, p0, p1}, Lnet/sf/saxon/trans/KeyIndex;->c(Ljava/util/List;Lnet/sf/saxon/lib/StringCollator;ILnet/sf/saxon/om/Item;)V

    return-void
.end method
