.class public final synthetic Lcom/sunia/HTREnginev2/vgm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lnet/sf/saxon/event/LocationCopier;


# direct methods
.method public synthetic constructor <init>(Lnet/sf/saxon/event/LocationCopier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vgm;->e:Lnet/sf/saxon/event/LocationCopier;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vgm;->e:Lnet/sf/saxon/event/LocationCopier;

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0, p1}, Lnet/sf/saxon/event/Sender;->a(Lnet/sf/saxon/event/LocationCopier;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
