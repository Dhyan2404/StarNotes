.class public final synthetic Lcom/sunia/HTREnginev2/von;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMapper$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/type/ItemType;

.field public final synthetic b:Lnet/sf/saxon/lib/ConversionRules;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/von;->a:Lnet/sf/saxon/type/ItemType;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/von;->b:Lnet/sf/saxon/lib/ConversionRules;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/von;->a:Lnet/sf/saxon/type/ItemType;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/von;->b:Lnet/sf/saxon/lib/ConversionRules;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/type/TypeHierarchy;->a(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method
