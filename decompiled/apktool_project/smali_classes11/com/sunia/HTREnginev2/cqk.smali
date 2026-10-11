.class public final synthetic Lcom/sunia/HTREnginev2/cqk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/lib/ParseOptions;

.field public final synthetic b:Lnet/sf/saxon/trans/PackageLoaderHE;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/trans/PackageLoaderHE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cqk;->a:Lnet/sf/saxon/lib/ParseOptions;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cqk;->b:Lnet/sf/saxon/trans/PackageLoaderHE;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cqk;->a:Lnet/sf/saxon/lib/ParseOptions;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cqk;->b:Lnet/sf/saxon/trans/PackageLoaderHE;

    invoke-static {v0, p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->y0(Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/trans/PackageLoaderHE;)V

    return-void
.end method
