.class public final synthetic Lcom/sunia/HTREnginev2/znk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/Action;


# instance fields
.field public final synthetic a:Lnet/sf/saxon/pattern/Pattern;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/pattern/Pattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/znk;->a:Lnet/sf/saxon/pattern/Pattern;

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/znk;->a:Lnet/sf/saxon/pattern/Pattern;

    invoke-static {p0}, Lnet/sf/saxon/trans/PackageLoaderHE;->q1(Lnet/sf/saxon/pattern/Pattern;)V

    return-void
.end method
