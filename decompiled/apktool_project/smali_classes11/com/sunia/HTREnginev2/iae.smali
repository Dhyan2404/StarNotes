.class public final synthetic Lcom/sunia/HTREnginev2/iae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/CallableDelegate$Lambda;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/type/SchemaType;

.field public final synthetic b:Lnet/sf/saxon/om/NamespaceResolver;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/NamespaceResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/iae;->a:Lnet/sf/saxon/type/SchemaType;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/iae;->b:Lnet/sf/saxon/om/NamespaceResolver;

    return-void
.end method


# virtual methods
.method public final call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/iae;->a:Lnet/sf/saxon/type/SchemaType;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/iae;->b:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-static {v0, p0, p1, p2}, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;->a(Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method
