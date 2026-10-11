.class public final synthetic Lcom/sunia/HTREnginev2/w2n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/pattern/NodePredicate;


# instance fields
.field public final synthetic e:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w2n;->e:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final test(Lnet/sf/saxon/om/NodeInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w2n;->e:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
