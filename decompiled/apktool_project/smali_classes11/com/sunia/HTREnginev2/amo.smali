.class public final synthetic Lcom/sunia/HTREnginev2/amo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/lib/ErrorReporter;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/amo;->e:Lnet/sf/saxon/lib/ErrorReporter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/amo;->e:Lnet/sf/saxon/lib/ErrorReporter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lnet/sf/saxon/s9api/Location;

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/s9api/XPathCompiler;->a(Lnet/sf/saxon/lib/ErrorReporter;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    return-void
.end method
