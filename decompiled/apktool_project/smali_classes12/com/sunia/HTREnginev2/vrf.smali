.class public final synthetic Lcom/sunia/HTREnginev2/vrf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/hssf/record/EscherAggregate;

.field public final synthetic f:Ljava/util/Iterator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/hssf/record/EscherAggregate;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vrf;->e:Lorg/apache/poi/hssf/record/EscherAggregate;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vrf;->f:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vrf;->e:Lorg/apache/poi/hssf/record/EscherAggregate;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vrf;->f:Ljava/util/Iterator;

    check-cast p1, Lorg/apache/poi/hssf/record/Record;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/hssf/record/EscherAggregate;->a(Lorg/apache/poi/hssf/record/EscherAggregate;Ljava/util/Iterator;Lorg/apache/poi/hssf/record/Record;)V

    return-void
.end method
