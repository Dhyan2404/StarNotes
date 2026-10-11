.class public final synthetic Lcom/sunia/HTREnginev2/qoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/qoj;->e:I

    iput p2, p0, Lcom/sunia/HTREnginev2/qoj;->f:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/qoj;->e:I

    iget p0, p0, Lcom/sunia/HTREnginev2/qoj;->f:I

    check-cast p1, Lnet/sf/saxon/trans/rules/Rule;

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/trans/Mode;->c(IILnet/sf/saxon/trans/rules/Rule;)Z

    move-result p0

    return p0
.end method
