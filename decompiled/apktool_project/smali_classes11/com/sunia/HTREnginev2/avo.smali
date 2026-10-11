.class public final synthetic Lcom/sunia/HTREnginev2/avo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/s9api/XdmFunctionItem;

.field public final synthetic f:Lnet/sf/saxon/s9api/Processor;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/s9api/XdmFunctionItem;Lnet/sf/saxon/s9api/Processor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/avo;->e:Lnet/sf/saxon/s9api/XdmFunctionItem;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/avo;->f:Lnet/sf/saxon/s9api/Processor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/avo;->e:Lnet/sf/saxon/s9api/XdmFunctionItem;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/avo;->f:Lnet/sf/saxon/s9api/Processor;

    check-cast p1, Lnet/sf/saxon/s9api/XdmValue;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/s9api/XdmFunctionItem;->a(Lnet/sf/saxon/s9api/XdmFunctionItem;Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    return-object p0
.end method
