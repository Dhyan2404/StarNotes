.class public Lnet/sf/saxon/trans/SimpleMode$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/trans/SimpleMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/sf/saxon/trans/rules/Rule;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/trans/SimpleMode$c;->a:Ljava/util/ArrayList;

    iput p1, p0, Lnet/sf/saxon/trans/SimpleMode$c;->b:I

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;)I
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/SimpleMode$c;->e(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lnet/sf/saxon/trans/rules/Rule;Lnet/sf/saxon/trans/rules/Rule;)I
    .locals 0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/rules/Rule;->compareComputedRank(Lnet/sf/saxon/trans/rules/Rule;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public b(Lnet/sf/saxon/trans/rules/Rule;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/SimpleMode$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/trans/SimpleMode$c;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/sunia/HTREnginev2/nsm;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/nsm;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iget v0, p0, Lnet/sf/saxon/trans/SimpleMode$c;->b:I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/trans/SimpleMode$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/trans/SimpleMode$c;->a:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/rules/Rule;

    iget-object v3, p0, Lnet/sf/saxon/trans/SimpleMode$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/trans/rules/Rule;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/trans/rules/Rule;->compareComputedRank(Lnet/sf/saxon/trans/rules/Rule;)I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/trans/SimpleMode$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/trans/rules/Rule;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/trans/rules/Rule;->setRank(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/trans/SimpleMode$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method
