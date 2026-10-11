.class public final synthetic Lcom/sunia/HTREnginev2/rpk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/trans/SimpleMode;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/trans/SimpleMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rpk;->a:Lnet/sf/saxon/trans/SimpleMode;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rpk;->a:Lnet/sf/saxon/trans/SimpleMode;

    invoke-static {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->U(Lnet/sf/saxon/trans/SimpleMode;)V

    return-void
.end method
