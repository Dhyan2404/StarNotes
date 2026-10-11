.class public final synthetic Lcom/sunia/HTREnginev2/sqo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/ItemConsumer;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/style/XSLLocalParam;

.field public final synthetic b:Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/style/XSLLocalParam;Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/sqo;->a:Lnet/sf/saxon/style/XSLLocalParam;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/sqo;->b:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method


# virtual methods
.method public final accept(Lnet/sf/saxon/om/Item;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/sqo;->a:Lnet/sf/saxon/style/XSLLocalParam;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/sqo;->b:Lnet/sf/saxon/om/StructuredQName;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/style/XSLLocalParam;->Z(Lnet/sf/saxon/style/XSLLocalParam;Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/Item;)V

    return-void
.end method
