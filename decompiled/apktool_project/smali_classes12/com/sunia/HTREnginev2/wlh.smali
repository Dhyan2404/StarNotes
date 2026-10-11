.class public final synthetic Lcom/sunia/HTREnginev2/wlh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:[I

.field public final synthetic f:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>([ILjava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wlh;->e:[I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wlh;->f:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wlh;->e:[I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wlh;->f:Ljava/util/function/Consumer;

    check-cast p1, [F

    invoke-static {v0, p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;->b([ILjava/util/function/Consumer;[F)V

    return-void
.end method
