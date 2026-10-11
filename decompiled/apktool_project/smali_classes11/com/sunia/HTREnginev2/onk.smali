.class public final synthetic Lcom/sunia/HTREnginev2/onk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/event/FilterFactory;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/onk;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final makeFilter(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/onk;->a:Ljava/util/List;

    invoke-static {p0, p1}, Lnet/sf/saxon/trans/PackageLoaderHE;->W1(Ljava/util/List;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method
