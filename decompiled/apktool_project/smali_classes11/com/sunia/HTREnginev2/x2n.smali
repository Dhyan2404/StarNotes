.class public final synthetic Lcom/sunia/HTREnginev2/x2n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/style/StyleElement;

.field public final synthetic b:Lnet/sf/saxon/style/PrincipalStylesheetModule;

.field public final synthetic c:Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/style/PrincipalStylesheetModule;Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x2n;->a:Lnet/sf/saxon/style/StyleElement;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/x2n;->b:Lnet/sf/saxon/style/PrincipalStylesheetModule;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/x2n;->c:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/x2n;->a:Lnet/sf/saxon/style/StyleElement;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/x2n;->b:Lnet/sf/saxon/style/PrincipalStylesheetModule;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/x2n;->c:Lnet/sf/saxon/om/StructuredQName;

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/style/StyleElement;->l(Lnet/sf/saxon/style/StyleElement;Lnet/sf/saxon/style/PrincipalStylesheetModule;Lnet/sf/saxon/om/StructuredQName;)V

    return-void
.end method
