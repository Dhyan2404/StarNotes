.class public final synthetic Lcom/sunia/HTREnginev2/dsi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/trans/KeyIndex;

.field public final synthetic b:Lnet/sf/saxon/trans/KeyDefinition;

.field public final synthetic c:Lnet/sf/saxon/expr/XPathContextMajor;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/trans/KeyIndex;Lnet/sf/saxon/trans/KeyDefinition;Lnet/sf/saxon/expr/XPathContextMajor;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dsi;->a:Lnet/sf/saxon/trans/KeyIndex;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/dsi;->b:Lnet/sf/saxon/trans/KeyDefinition;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/dsi;->c:Lnet/sf/saxon/expr/XPathContextMajor;

    iput-boolean p4, p0, Lcom/sunia/HTREnginev2/dsi;->d:Z

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dsi;->a:Lnet/sf/saxon/trans/KeyIndex;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/dsi;->b:Lnet/sf/saxon/trans/KeyDefinition;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/dsi;->c:Lnet/sf/saxon/expr/XPathContextMajor;

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/dsi;->d:Z

    invoke-static {v0, v1, v2, p0, p1}, Lnet/sf/saxon/trans/KeyIndex;->b(Lnet/sf/saxon/trans/KeyIndex;Lnet/sf/saxon/trans/KeyDefinition;Lnet/sf/saxon/expr/XPathContextMajor;ZLnet/sf/saxon/om/Item;)V

    return-void
.end method
