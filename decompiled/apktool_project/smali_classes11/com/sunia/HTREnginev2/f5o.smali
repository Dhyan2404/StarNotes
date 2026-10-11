.class public final synthetic Lcom/sunia/HTREnginev2/f5o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/om/NodeInfo;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/om/NodeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/f5o;->e:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f5o;->e:Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0}, Lnet/sf/saxon/tree/wrapper/VirtualCopy;->b(Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
