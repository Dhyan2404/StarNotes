.class public final synthetic Lcom/sunia/HTREnginev2/kmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/s9api/XQueryEvaluator;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/s9api/XQueryEvaluator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kmo;->a:Lnet/sf/saxon/s9api/XQueryEvaluator;

    return-void
.end method


# virtual methods
.method public final act()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kmo;->a:Lnet/sf/saxon/s9api/XQueryEvaluator;

    invoke-static {p0}, Lnet/sf/saxon/s9api/XQueryEvaluator;->a(Lnet/sf/saxon/s9api/XQueryEvaluator;)V

    return-void
.end method
