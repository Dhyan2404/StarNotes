.class public final synthetic Lcom/sunia/HTREnginev2/cvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/s9api/XdmSequenceIterator;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/s9api/XdmSequenceIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cvo;->e:Lnet/sf/saxon/s9api/XdmSequenceIterator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cvo;->e:Lnet/sf/saxon/s9api/XdmSequenceIterator;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmSequenceIterator;->close()V

    return-void
.end method
