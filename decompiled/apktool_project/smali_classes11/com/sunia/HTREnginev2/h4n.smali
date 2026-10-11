.class public final synthetic Lcom/sunia/HTREnginev2/h4n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/expr/UserFunctionCall;

.field public final synthetic b:Lnet/sf/saxon/style/PrincipalStylesheetModule;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/expr/UserFunctionCall;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h4n;->a:Lnet/sf/saxon/expr/UserFunctionCall;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/h4n;->b:Lnet/sf/saxon/style/PrincipalStylesheetModule;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/h4n;->a:Lnet/sf/saxon/expr/UserFunctionCall;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h4n;->b:Lnet/sf/saxon/style/PrincipalStylesheetModule;

    invoke-static {v0, p0}, Lnet/sf/saxon/style/StylesheetFunctionLibrary;->a(Lnet/sf/saxon/expr/UserFunctionCall;Lnet/sf/saxon/style/PrincipalStylesheetModule;)V

    return-void
.end method
