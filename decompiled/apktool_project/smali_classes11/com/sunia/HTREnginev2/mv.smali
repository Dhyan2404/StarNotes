.class public final synthetic Lcom/sunia/HTREnginev2/mv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/SequenceMapper$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/type/AtomicType;

.field public final synthetic b:Lnet/sf/saxon/om/NamespaceResolver;

.field public final synthetic c:Lnet/sf/saxon/lib/ConversionRules;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mv;->a:Lnet/sf/saxon/type/AtomicType;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/mv;->b:Lnet/sf/saxon/om/NamespaceResolver;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/mv;->c:Lnet/sf/saxon/lib/ConversionRules;

    return-void
.end method


# virtual methods
.method public final map(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mv;->a:Lnet/sf/saxon/type/AtomicType;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/mv;->b:Lnet/sf/saxon/om/NamespaceResolver;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mv;->c:Lnet/sf/saxon/lib/ConversionRules;

    invoke-static {v0, v1, p0, p1}, Lnet/sf/saxon/type/BuiltInListType;->a(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
